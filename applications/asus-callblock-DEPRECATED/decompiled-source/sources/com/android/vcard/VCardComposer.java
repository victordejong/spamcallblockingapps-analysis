package com.android.vcard;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Entity;
import android.content.EntityIterator;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardComposer.class */
public class VCardComposer {
    private static final boolean DEBUG = false;
    public static final String FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO = "Failed to get database information";
    public static final String FAILURE_REASON_NOT_INITIALIZED = "The vCard composer object is not correctly initialized";
    public static final String FAILURE_REASON_NO_ENTRY = "There's no exportable in the database";
    public static final String FAILURE_REASON_UNSUPPORTED_URI = "The Uri vCard composer received is not supported by the composer.";
    private static final String LOG_TAG = "VCardComposer";
    public static final String NO_ERROR = "No error";
    private static final String SHIFT_JIS = "SHIFT_JIS";
    private static final String UTF_8 = "UTF-8";
    private static final String[] sContactsProjection = {"_id"};
    private static final Map<Integer, String> sImMap;
    private final String mCharset;
    private final ContentResolver mContentResolver;
    private Uri mContentUriForRawContactsEntity;
    private Cursor mCursor;
    private boolean mCursorSuppliedFromOutside;
    private String mErrorReason;
    private boolean mFirstVCardEmittedInDoCoMoCase;
    private int mIdColumn;
    private boolean mInitDone;
    private final boolean mIsDoCoMo;
    private VCardPhoneNumberTranslationCallback mPhoneTranslationCallback;
    private boolean mTerminateCalled;
    private final int mVCardType;

    static {
        HashMap hashMap = new HashMap();
        sImMap = hashMap;
        hashMap.put(0, VCardConstants.PROPERTY_X_AIM);
        sImMap.put(1, VCardConstants.PROPERTY_X_MSN);
        sImMap.put(2, VCardConstants.PROPERTY_X_YAHOO);
        sImMap.put(6, VCardConstants.PROPERTY_X_ICQ);
        sImMap.put(7, VCardConstants.PROPERTY_X_JABBER);
        sImMap.put(3, VCardConstants.PROPERTY_X_SKYPE_USERNAME);
    }

    public VCardComposer(Context context) {
        this(context, VCardConfig.VCARD_TYPE_DEFAULT, null, true);
    }

    public VCardComposer(Context context, int i) {
        this(context, i, null, true);
    }

    public VCardComposer(Context context, int i, String str) {
        this(context, i, str, true);
    }

    public VCardComposer(Context context, int i, String str, boolean z) {
        this(context, context.getContentResolver(), i, str, z);
    }

    public VCardComposer(Context context, int i, boolean z) {
        this(context, i, null, z);
    }

    public VCardComposer(Context context, ContentResolver contentResolver, int i, String str, boolean z) {
        this.mErrorReason = NO_ERROR;
        this.mTerminateCalled = true;
        this.mVCardType = i;
        this.mContentResolver = contentResolver;
        this.mIsDoCoMo = VCardConfig.isDoCoMo(i);
        String str2 = TextUtils.isEmpty(str) ? "UTF-8" : str;
        boolean z2 = VCardConfig.isVersion30(i) ? !"UTF-8".equalsIgnoreCase(str2) : true;
        if (this.mIsDoCoMo || z2) {
            if (!SHIFT_JIS.equalsIgnoreCase(str2)) {
                if (TextUtils.isEmpty(str2)) {
                    this.mCharset = SHIFT_JIS;
                } else {
                    this.mCharset = str2;
                }
            }
            this.mCharset = str2;
        } else {
            if (TextUtils.isEmpty(str2)) {
                this.mCharset = "UTF-8";
            }
            this.mCharset = str2;
        }
        Log.d(LOG_TAG, "Use the charset \"" + this.mCharset + "\"");
    }

    private void closeCursorIfAppropriate() {
        if (!this.mCursorSuppliedFromOutside && this.mCursor != null) {
            try {
                this.mCursor.close();
            } catch (SQLiteException e) {
                Log.e(LOG_TAG, "SQLiteException on Cursor#close(): " + e.getMessage());
            }
            this.mCursor = null;
        }
    }

    private String createOneEntryInternal(String str, Method method) {
        EntityIterator entityIterator;
        Throwable th;
        String buildVCard;
        HashMap hashMap = new HashMap();
        try {
            Uri uri = this.mContentUriForRawContactsEntity;
            String[] strArr = new String[1];
            strArr[0] = str;
            if (method != null) {
                try {
                    try {
                        try {
                            entityIterator = (EntityIterator) method.invoke(null, this.mContentResolver, uri, "contact_id=?", strArr, null);
                        } catch (InvocationTargetException e) {
                            Log.e(LOG_TAG, "InvocationTargetException has been thrown: ", e);
                            throw new RuntimeException("InvocationTargetException has been thrown");
                        }
                    } catch (IllegalArgumentException e2) {
                        Log.e(LOG_TAG, "IllegalArgumentException has been thrown: " + e2.getMessage());
                        entityIterator = null;
                    }
                } catch (IllegalAccessException e3) {
                    Log.e(LOG_TAG, "IllegalAccessException has been thrown: " + e3.getMessage());
                    entityIterator = null;
                }
            } else {
                entityIterator = ContactsContract.RawContacts.newEntityIterator(this.mContentResolver.query(uri, null, "contact_id=?", strArr, null));
            }
        } catch (Throwable th2) {
            th = th2;
            entityIterator = null;
        }
        try {
            if (entityIterator == null) {
                Log.e(LOG_TAG, "EntityIterator is null");
                buildVCard = BuildConfig.FLAVOR;
                if (entityIterator != null) {
                    entityIterator.close();
                    buildVCard = BuildConfig.FLAVOR;
                }
            } else {
                if (!entityIterator.hasNext()) {
                    Log.w(LOG_TAG, "Data does not exist. contactId: " + str);
                    buildVCard = BuildConfig.FLAVOR;
                    if (entityIterator != null) {
                        entityIterator.close();
                        buildVCard = BuildConfig.FLAVOR;
                    }
                }
                while (entityIterator.hasNext()) {
                    Iterator<Entity.NamedContentValues> it = ((Entity) entityIterator.next()).getSubValues().iterator();
                    while (it.hasNext()) {
                        ContentValues contentValues = it.next().values;
                        String asString = contentValues.getAsString("mimetype");
                        if (asString != null) {
                            List<ContentValues> list = hashMap.get(asString);
                            List<ContentValues> list2 = list;
                            if (list == null) {
                                list2 = new ArrayList<>();
                                hashMap.put(asString, list2);
                            }
                            list2.add(contentValues);
                        }
                    }
                }
                if (entityIterator != null) {
                    entityIterator.close();
                }
                buildVCard = buildVCard(hashMap);
            }
            return buildVCard;
        } catch (Throwable th3) {
            th = th3;
            if (entityIterator != null) {
                entityIterator.close();
            }
            throw th;
        }
    }

    private boolean initInterCursorCreationPart(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        boolean z;
        this.mCursorSuppliedFromOutside = false;
        this.mCursor = this.mContentResolver.query(uri, strArr, str, strArr2, str2);
        if (this.mCursor == null) {
            Log.e(LOG_TAG, String.format("Cursor became null unexpectedly", new Object[0]));
            this.mErrorReason = FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO;
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    private boolean initInterFirstPart(Uri uri) {
        boolean z;
        if (uri == null) {
            uri = ContactsContract.RawContactsEntity.CONTENT_URI;
        }
        this.mContentUriForRawContactsEntity = uri;
        if (this.mInitDone) {
            Log.e(LOG_TAG, "init() is already called");
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    private boolean initInterLastPart() {
        this.mInitDone = true;
        this.mTerminateCalled = false;
        return true;
    }

    private boolean initInterMainPart() {
        boolean z = false;
        if (this.mCursor.getCount() == 0 || !this.mCursor.moveToFirst()) {
            closeCursorIfAppropriate();
        } else {
            this.mIdColumn = this.mCursor.getColumnIndex("_id");
            if (this.mIdColumn >= 0) {
                z = true;
            }
        }
        return z;
    }

    public String buildVCard(Map<String, List<ContentValues>> map) {
        String vCardBuilder;
        if (map == null) {
            Log.e(LOG_TAG, "The given map is null. Ignore and return empty String");
            vCardBuilder = BuildConfig.FLAVOR;
        } else {
            VCardBuilder vCardBuilder2 = new VCardBuilder(this.mVCardType, this.mCharset);
            vCardBuilder2.appendNameProperties(map.get("vnd.android.cursor.item/name")).appendNickNames(map.get("vnd.android.cursor.item/nickname")).appendPhones(map.get("vnd.android.cursor.item/phone_v2"), this.mPhoneTranslationCallback).appendEmails(map.get("vnd.android.cursor.item/email_v2")).appendPostals(map.get("vnd.android.cursor.item/postal-address_v2")).appendOrganizations(map.get("vnd.android.cursor.item/organization")).appendWebsites(map.get("vnd.android.cursor.item/website"));
            if ((this.mVCardType & VCardConfig.FLAG_REFRAIN_IMAGE_EXPORT) == 0) {
                vCardBuilder2.appendPhotos(map.get("vnd.android.cursor.item/photo"));
            }
            vCardBuilder2.appendNotes(map.get("vnd.android.cursor.item/note")).appendEvents(map.get("vnd.android.cursor.item/contact_event")).appendIms(map.get("vnd.android.cursor.item/im")).appendSipAddresses(map.get("vnd.android.cursor.item/sip_address")).appendRelation(map.get("vnd.android.cursor.item/relation"));
            vCardBuilder = vCardBuilder2.toString();
        }
        return vCardBuilder;
    }

    public String createOneEntry() {
        return createOneEntry(null);
    }

    public String createOneEntry(Method method) {
        if (this.mIsDoCoMo && !this.mFirstVCardEmittedInDoCoMoCase) {
            this.mFirstVCardEmittedInDoCoMoCase = true;
        }
        String createOneEntryInternal = createOneEntryInternal(this.mCursor.getString(this.mIdColumn), method);
        if (!this.mCursor.moveToNext()) {
            Log.e(LOG_TAG, "Cursor#moveToNext() returned false");
        }
        return createOneEntryInternal;
    }

    protected void finalize() {
        try {
            if (!this.mTerminateCalled) {
                Log.e(LOG_TAG, "finalized() is called before terminate() being called");
            }
        } finally {
            super.finalize();
        }
    }

    public int getCount() {
        int count;
        if (this.mCursor == null) {
            Log.w(LOG_TAG, "This object is not ready yet.");
            count = 0;
        } else {
            count = this.mCursor.getCount();
        }
        return count;
    }

    public String getErrorReason() {
        return this.mErrorReason;
    }

    public boolean init() {
        return init(null, null);
    }

    public boolean init(Cursor cursor) {
        boolean z = false;
        if (initInterFirstPart(null)) {
            this.mCursorSuppliedFromOutside = true;
            this.mCursor = cursor;
            if (initInterMainPart()) {
                z = initInterLastPart();
            }
        }
        return z;
    }

    public boolean init(Uri uri, String str, String[] strArr, String str2) {
        return init(uri, sContactsProjection, str, strArr, str2, null);
    }

    public boolean init(Uri uri, String str, String[] strArr, String str2, Uri uri2) {
        return init(uri, sContactsProjection, str, strArr, str2, uri2);
    }

    public boolean init(Uri uri, String[] strArr, String str, String[] strArr2, String str2, Uri uri2) {
        boolean z;
        if (!"com.android.contacts".equals(uri.getAuthority())) {
            this.mErrorReason = FAILURE_REASON_UNSUPPORTED_URI;
            z = false;
        } else {
            z = false;
            if (initInterFirstPart(uri2)) {
                z = false;
                if (initInterCursorCreationPart(uri, strArr, str, strArr2, str2)) {
                    z = false;
                    if (initInterMainPart()) {
                        z = initInterLastPart();
                    }
                }
            }
        }
        return z;
    }

    public boolean init(String str, String[] strArr) {
        return init(ContactsContract.Contacts.CONTENT_URI, sContactsProjection, str, strArr, null, null);
    }

    @Deprecated
    public boolean initWithRawContactsEntityUri(Uri uri) {
        return init(ContactsContract.Contacts.CONTENT_URI, sContactsProjection, null, null, null, uri);
    }

    public boolean isAfterLast() {
        boolean isAfterLast;
        if (this.mCursor == null) {
            Log.w(LOG_TAG, "This object is not ready yet.");
            isAfterLast = false;
        } else {
            isAfterLast = this.mCursor.isAfterLast();
        }
        return isAfterLast;
    }

    public void setPhoneNumberTranslationCallback(VCardPhoneNumberTranslationCallback vCardPhoneNumberTranslationCallback) {
        this.mPhoneTranslationCallback = vCardPhoneNumberTranslationCallback;
    }

    public void terminate() {
        closeCursorIfAppropriate();
        this.mTerminateCalled = true;
    }
}
