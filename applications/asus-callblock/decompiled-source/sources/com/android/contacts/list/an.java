package com.android.contacts.list;

import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.k;
import com.android.contacts.list.ContactListItemView;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/an.class */
public class an extends o {
    private static final String e = an.class.getSimpleName();
    long d;
    private final CharSequence f;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/an$a.class */
    protected static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f1784a;

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f1785b;

        static {
            f1784a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, "photo_id", "display_name", SpeedDialList.Columns.ISSIM} : new String[]{"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, "photo_id", "display_name"};
            f1785b = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, "photo_id", "display_name_alt", SpeedDialList.Columns.ISSIM} : new String[]{"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, "photo_id", "display_name_alt"};
        }
    }

    public an(Context context, long j) {
        super(context);
        this.d = v.m;
        this.f = context.getText(17039374);
        this.d = j;
    }

    private String a(long j) {
        Cursor cursor;
        String str = "mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = 'vnd.android.cursor.item/group_membership') AND (data2 ='" + j + "')";
        StringBuilder sb = new StringBuilder();
        sb.append(" ");
        try {
            Cursor query = this.U.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"_id", "raw_contact_id"}, str, null, null);
            if (query != null) {
                try {
                    sb.append("(");
                    while (query.moveToNext()) {
                        sb.append(String.valueOf(query.getLong(1)) + ", ");
                    }
                    sb.append(" -1 )");
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return sb.toString();
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public static Uri b(Cursor cursor) {
        Uri uri;
        if (cursor != null) {
            uri = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, cursor.getLong(0));
        } else {
            Log.w(e, "Cursor was null in getContactUri() call. Returning null instead.");
            uri = null;
        }
        return uri;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        ContactListItemView contactListItemView = new ContactListItemView(context, (AttributeSet) null);
        contactListItemView.setUnknownNameText(this.f);
        contactListItemView.setQuickContactEnabled(this.q);
        return contactListItemView;
    }

    @Override // com.android.contacts.list.o
    public final void a(CursorLoader cursorLoader, long j) {
        Uri.Builder buildUpon;
        String str = BuildConfig.FLAVOR;
        if (this.w) {
            Uri.Builder buildUpon2 = ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI.buildUpon();
            String str2 = this.u;
            buildUpon2.appendPath(TextUtils.isEmpty(str2) ? BuildConfig.FLAVOR : str2);
            str = !TextUtils.isEmpty(str2) ? BuildConfig.FLAVOR + "display_name LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(str2) + "%' DESC, display_name_alt LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(str2) + "%' DESC, times_contacted DESC, phonebook_bucket, " : BuildConfig.FLAVOR;
            buildUpon = buildUpon2;
        } else {
            buildUpon = ContactsContract.CommonDataKinds.Email.CONTENT_URI.buildUpon();
            if (this.X) {
                buildUpon.appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true");
            }
        }
        buildUpon.appendQueryParameter("directory", String.valueOf(j));
        buildUpon.appendQueryParameter("remove_duplicate_entries", "true");
        cursorLoader.setUri(buildUpon.build());
        if (this.d != v.m) {
            String a2 = a(this.d);
            String selection = cursorLoader.getSelection();
            String str3 = selection;
            if (!a2.equals(BuildConfig.FLAVOR)) {
                str3 = selection != null ? selection + "raw_contact_id IN " + a2 : "raw_contact_id IN " + a2;
            }
            cursorLoader.setSelection(str3);
        }
        if (this.n == 1) {
            cursorLoader.setProjection(a.f1784a);
        } else {
            cursorLoader.setProjection(a.f1785b);
        }
        cursorLoader.setSortOrder(this.o == 1 ? str + "sort_key" : str + "sort_key_alt");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final void a(View view, int i, Cursor cursor, int i2) {
        ContactListItemView contactListItemView = (ContactListItemView) view;
        contactListItemView.setTag(Integer.valueOf(i2 % 2));
        contactListItemView.setPhotoPosition(ContactListItemView.a.LEFT);
        int sectionForPosition = getSectionForPosition(i2);
        if (getPositionForSection(sectionForPosition) == i2) {
            contactListItemView.setSectionHeader((String) getSections()[sectionForPosition]);
        } else {
            contactListItemView.setDividerVisible(false);
            contactListItemView.setSectionHeader(null);
        }
        if (getPositionForSection(sectionForPosition + 1) - 1 == i2) {
            contactListItemView.setDividerVisible(false);
        } else {
            contactListItemView.setDividerVisible(true);
        }
        contactListItemView.a(cursor, 5);
        b(contactListItemView, cursor);
        a(contactListItemView, cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ContactListItemView contactListItemView, Cursor cursor) {
        CharSequence charSequence = null;
        if (!cursor.isNull(1)) {
            charSequence = ContactsContract.CommonDataKinds.Email.getTypeLabel(this.f407a.getResources(), cursor.getInt(1), cursor.getString(2));
        }
        contactListItemView.setLabel(charSequence);
        contactListItemView.a(cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(ContactListItemView contactListItemView, Cursor cursor) {
        long j = !cursor.isNull(4) ? cursor.getLong(4) : 0L;
        boolean isNull = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM) >= 0 ? cursor.isNull(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM)) : true;
        if (j == 0 && !isNull) {
            int i = cursor.getInt(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM));
            if (i == 1) {
                j = -1;
            } else if (i == 2) {
                j = -2;
            }
        }
        contactListItemView.c().setTag(contactListItemView.getTag());
        this.t.a(contactListItemView.c(), j, false, j == 0 ? new k.d(cursor.getString(5), null, true) : null);
    }
}
