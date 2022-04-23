package com.privacystar.core.data.call.caller;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import android.support.annotation.NonNull;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.CallerId;
import com.privacystar.core.data.model.Offender;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.data.model.helper.BlockHistoryRealm;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.CallerIdRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.OffenderCategoryRealm;
import com.privacystar.core.data.model.helper.OffenderRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.handler.LookupHandler;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.util.ContactUtil;
import com.privacystar.core.util.FormatUtil;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.NumbersUtil;
import com.privacystar.core.util.OffenderUtil;
import com.privacystar.core.util.Text;
import io.realm.Realm;
import java.util.Observable;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/caller/Caller.class */
public class Caller extends Observable implements Parcelable {
    public static final Parcelable.Creator<Caller> CREATOR = new Parcelable.Creator<Caller>() { // from class: com.privacystar.core.data.call.caller.Caller.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Caller createFromParcel(Parcel parcel) {
            return CallerFactory.getInstance().getCaller(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Caller[] newArray(int i) {
            return new Caller[i];
        }
    };
    private static final String PARCEL_KEY = "caller";
    private static final int UNSET_BIT_VALUE = -1;
    private String callerId;
    private String city;
    private String contactId;
    private String contactName;
    private Bitmap contactPicture;
    private String contactPictureUri;
    private Boolean hasCheckedIfInContacts;
    private Boolean hasContactId;
    private Boolean hasContactName;
    private Boolean hasContactPicture;
    private Boolean hasContactPictureUri;
    private Long integerNumber;
    private Boolean isInApprovedList;
    private Boolean isInBlockList;
    private Boolean isInContacts;
    private String number;
    private String state;
    private Boolean wasBlocked;
    private String displayNumber = null;
    private Boolean isUnknownNumber = null;
    private Boolean wasContactDataPopulated = false;
    private boolean isContactDataBeingPopulated = false;
    private Integer offenderCategoryId = null;
    private int offenderFlags = 0;
    private Boolean isLookupOnly = false;
    private Boolean wasPopulatedLocally = false;
    private Boolean wasPopulatedRemotely = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.data.call.caller.Caller$2 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/caller/Caller$2.class */
    public static /* synthetic */ class C15872 {
        static final /* synthetic */ int[] $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi = new int[OffenderUtil.OffenderTypeUi.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.NUISANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.TELEMARKETING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.ACCOUNT_SERVICES.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.POLITICAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.CHARITY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.SURVEY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.PRISON.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/caller/Caller$CacheContactInformationTask.class */
    public class CacheContactInformationTask extends AsyncTask<String, Void, Void> {
        private Bitmap contactBitmap;
        private String contactBitmapUri;
        private String contactId;
        private String contactName;
        private boolean isInContacts;
        private String number;

        private CacheContactInformationTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(String... strArr) {
            this.number = strArr[0];
            if (!Caller.this.getIsInContactsSynchronous(this.number)) {
                this.isInContacts = false;
                return null;
            }
            this.isInContacts = true;
            String[] contactNameAndIdByNumber = ContactUtil.getContactNameAndIdByNumber(Caller.this.getNumber());
            this.contactName = contactNameAndIdByNumber[0];
            this.contactId = contactNameAndIdByNumber[1];
            if (Text.isBlank(contactNameAndIdByNumber[4])) {
                return null;
            }
            this.contactBitmapUri = contactNameAndIdByNumber[4];
            if (this.contactBitmapUri == null) {
                return null;
            }
            try {
                this.contactBitmap = MediaStore.Images.Media.getBitmap(PSApplication.context().getContentResolver(), Uri.parse(this.contactBitmapUri));
                return null;
            } catch (Exception e) {
                Timber.m32e(e, "Error while loading contact picture for %s", this.number);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            if (this.isInContacts) {
                Caller.this.setIsInContacts(true);
                Caller.this.setContactName(this.contactName);
                Caller.this.setContactId(this.contactId);
                Caller.this.setContactPicture(this.contactBitmap);
                Caller.this.setContactPictureUri(this.contactBitmapUri);
                Caller.this.setWasContactDataPopulated(true);
                Caller.this.setChanged();
                Caller.this.notifyObservers();
            } else if (Caller.this.getIsInContactsRaw() != this.isInContacts) {
                Caller.this.setIsInContacts(this.isInContacts);
            } else {
                Caller.this.setIsInContacts(this.isInContacts);
                Caller.this.setChanged();
                Caller.this.notifyObservers();
            }
            Caller.this.isContactDataBeingPopulated = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Caller(String str) {
        this.number = InformationUtil.normalizeNumber(str);
    }

    private void cacheContactInformationSynchronous(String str) {
        Bitmap bitmap;
        String str2;
        boolean isInContactsSynchronous = getIsInContactsSynchronous(str);
        String[] contactNameAndIdByNumber = ContactUtil.getContactNameAndIdByNumber(getNumber());
        String str3 = contactNameAndIdByNumber[0];
        String str4 = contactNameAndIdByNumber[1];
        if (!Text.isBlank(contactNameAndIdByNumber[4])) {
            String str5 = contactNameAndIdByNumber[4];
            str2 = str5;
            bitmap = null;
            if (str5 != null) {
                try {
                    bitmap = MediaStore.Images.Media.getBitmap(PSApplication.context().getContentResolver(), Uri.parse(str5));
                    str2 = str5;
                } catch (Exception e) {
                    Timber.m32e(e, "Error while loading contact picture for %s", str);
                    str2 = str5;
                    bitmap = null;
                }
            }
        } else {
            str2 = null;
            bitmap = null;
        }
        if (isInContactsSynchronous) {
            setIsInContacts(true);
            setContactName(str3);
            setContactId(str4);
            setContactPicture(bitmap);
            setContactPictureUri(str2);
            setWasContactDataPopulated(true);
        } else {
            setIsInContacts(false);
            this.hasContactName = false;
            this.hasContactId = false;
            this.hasContactPicture = false;
            this.hasContactPictureUri = false;
        }
        setChanged();
        notifyObservers();
        this.isContactDataBeingPopulated = false;
    }

    private void cacheIntegerNumber() {
        if (this.integerNumber == null && getNumber() != null) {
            this.integerNumber = NumbersUtil.getNumericPhoneNumber(getNumber());
        }
    }

    private Integer getOffenderCategoryIdRaw() {
        return this.offenderCategoryId;
    }

    public static String getParcelKey() {
        return PARCEL_KEY;
    }

    private Boolean getWasContactDataPopulated() {
        return this.wasContactDataPopulated;
    }

    private boolean hasQueryableNumber() {
        cacheIntegerNumber();
        return this.integerNumber != null;
    }

    private boolean isBlockedType() {
        OffenderUtil.OffenderTypeUi offenderTypeUiFromID = OffenderUtil.getOffenderTypeUiFromID(getOffenderCategoryId());
        if (getOffenderCategoryId() <= 0) {
            return false;
        }
        if (offenderTypeUiFromID == OffenderUtil.OffenderTypeUi.SCAM && LicenseFeatureRealm.isFeatureAvailable(Feature.SCAM_BLOCKING)) {
            return PreferenceUtil.getProtectionScammersEnabled();
        }
        if (!LicenseFeatureRealm.isFeatureAvailable(Feature.CALL_BLOCKING)) {
            return false;
        }
        switch (C15872.$SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[offenderTypeUiFromID.ordinal()]) {
            case 1:
                return PreferenceUtil.getProtectionNuisanceEnabled();
            case 2:
                return PreferenceUtil.getProtectionTelemarketingEnabled();
            case 3:
                return PreferenceUtil.getProtectionDebtCollectionEnabled();
            case 4:
                return PreferenceUtil.getProtectionPoliticalEnabled();
            case 5:
                return PreferenceUtil.getProtectionCharityEnabled();
            case 6:
                return PreferenceUtil.getProtectionSurveyEnabled();
            case 7:
                return PreferenceUtil.getProtectionPrisonEnabled();
            default:
                Timber.m28v("Could not match an id [%d] to an offender type", Integer.valueOf(getOffenderCategoryId()));
                return false;
        }
    }

    private void populateContactData() {
        if (!this.isContactDataBeingPopulated) {
            this.isContactDataBeingPopulated = true;
            Timber.m28v("Populating contact data for %s", getNumber());
            new CacheContactInformationTask().execute(getNumber());
        }
    }

    private void populateContactDataSynchronous() {
        this.isContactDataBeingPopulated = true;
        cacheContactInformationSynchronous(getNumber());
    }

    private void populateLocallyImpl() {
        if (getIsInContacts()) {
            populateContactData();
            Timber.m37d("Not populating locally because in contacts %s", getNumber());
        }
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            updateOffenderBits(defaultInstance);
            CallerId activeEntry = CallerIdRealm.getActiveEntry(defaultInstance, getNumber());
            if (activeEntry != null) {
                setCallerId(activeEntry.getName());
                Timber.m37d("Populating locally %s with name", activeEntry.getName());
                setOffenderCategoryId(activeEntry.getCategoryId());
                setOffenderFlags(activeEntry.getOffenderFlags());
                setLookupOnly(true);
            } else {
                Timber.m37d("Not populating locally null %s", getNumber());
            }
            updateInBlockList();
            this.wasPopulatedLocally = true;
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    private void populateRemotelyImpl() {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            LookupHandler.getInstance().lookupUncachedCaller(defaultInstance, getNumber(), LookupRequest.LookupType.CALLER_ID);
            this.wasPopulatedRemotely = true;
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    private void refreshOffenderCategoryId() {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            CallerId activeEntry = CallerIdRealm.getActiveEntry(defaultInstance, getNumber());
            int categoryId = activeEntry != null ? activeEntry.getCategoryId() : OffenderRealm.getOffenderId(defaultInstance, getIntegerNumber());
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            setOffenderCategoryId(categoryId);
        } finally {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setContactId(String str) {
        if (str != null) {
            this.hasContactId = true;
            this.contactId = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWasContactDataPopulated(Boolean bool) {
        this.wasContactDataPopulated = bool;
    }

    private void updateOffenderBits(Realm realm) {
        updateOffenderBits(realm, false);
    }

    private void updateOffenderBits(Realm realm, boolean z) {
        if (z || getOffenderCategoryId() == -1) {
            updateOffenderBitsImpl(OffenderRealm.getOffender(realm, getNumber()));
        }
    }

    private void updateOffenderBitsImpl(Offender offender) {
        if (offender == null) {
            Timber.m28v("Passed Offender for updating %s was null.", getNumber());
            return;
        }
        Integer offenderCategoryIdRaw = getOffenderCategoryIdRaw();
        int offenderFlags = getOffenderFlags();
        if (offender.getCategoryId() != null) {
            setOffenderCategoryId(offender.getCategoryId().intValue());
            Timber.m28v("Offender data contained categoryId [%d] for %s", offender.getCategoryId(), getNumber());
        } else {
            Timber.m28v("Found a offender entry for %d, but it was missing a category id.", getIntegerNumber());
        }
        if (offender.getOffenderFlags() != null) {
            setOffenderFlags(offender.getOffenderFlags().intValue());
            Timber.m28v("Offender data contained categoryFlag [%d] for %s", offender.getOffenderFlags(), getNumber());
        } else {
            Timber.m28v("Found a offender entry for %d, but it was missing a offender flag.", getIntegerNumber());
        }
        if (offenderCategoryIdRaw == null || getOffenderCategoryId() != offenderCategoryIdRaw.intValue() || getOffenderFlags() != Integer.valueOf(offenderFlags).intValue()) {
            Timber.m37d("Caller %s was updated to new offender data. [%d] observers notified.", getNumber(), Integer.valueOf(countObservers()));
            setChanged();
            notifyObservers();
        }
    }

    public boolean canShowOffenderData() {
        boolean z = false;
        boolean z2 = LicenseFeatureRealm.isFeatureAvailable(Feature.PRE_CC_NONGREEN) || LicenseFeatureRealm.isFeatureAvailable(Feature.CALL_BLOCKING);
        if (z2 || LicenseFeatureRealm.isFeatureAvailable(Feature.SCAM_BLOCKING)) {
            z = true;
        }
        if (isScammer()) {
            return z;
        }
        if (OffenderUtil.idIsInOffenderMap(getOffenderCategoryId())) {
            return z2;
        }
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCallerId() {
        if (Text.isBlank(this.callerId)) {
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                CallerId activeEntry = CallerIdRealm.getActiveEntry(defaultInstance, this.number);
                if (activeEntry != null) {
                    this.callerId = activeEntry.getName();
                }
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } finally {
                try {
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.callerId;
    }

    public String getContactId() {
        if (this.contactId != null) {
            return this.contactId;
        }
        hasContactId();
        return null;
    }

    public String getContactName() {
        if (this.contactName != null) {
            return this.contactName;
        }
        hasContactName();
        return null;
    }

    public Bitmap getContactPicture() {
        if (this.contactPicture != null) {
            return this.contactPicture;
        }
        hasContactPicture();
        return null;
    }

    public String getContactPictureUri() {
        if (this.contactPictureUri != null) {
            return this.contactPictureUri;
        }
        hasContactPictureUri();
        return null;
    }

    public String getDisplayName() {
        return hasContactName() ? getContactName() : hasCallerId() ? getCallerId().trim() : "";
    }

    public String getDisplayNumber() {
        if (this.displayNumber == null) {
            if (isUnknownNumber()) {
                this.displayNumber = PSApplication.context().getString(C1566R.string.caller_number_unknown);
            } else {
                this.displayNumber = FormatUtil.getDisplayNumber(getNumber());
            }
        }
        return this.displayNumber;
    }

    @NonNull
    public String getInitial() {
        String displayName = getDisplayName();
        return !Text.isBlank(displayName) ? displayName.substring(0, 1) : "";
    }

    public Long getIntegerNumber() {
        cacheIntegerNumber();
        return hasQueryableNumber() ? this.integerNumber : null;
    }

    public boolean getIsInContacts() {
        return getIsInContacts(true);
    }

    public boolean getIsInContacts(boolean z) {
        Boolean isInContactsAsynchronous = z ? getIsInContactsAsynchronous(getNumber()) : Boolean.valueOf(getIsInContactsSynchronous(getNumber()));
        return isInContactsAsynchronous == null ? false : isInContactsAsynchronous.booleanValue();
    }

    public Boolean getIsInContactsAsynchronous() {
        return getIsInContactsAsynchronous(getNumber());
    }

    public Boolean getIsInContactsAsynchronous(String str) {
        if (this.isInContacts != null) {
            return this.isInContacts;
        }
        hasCheckedIfInContacts();
        return null;
    }

    boolean getIsInContactsRaw() {
        return this.isInContacts == null ? false : this.isInContacts.booleanValue();
    }

    public boolean getIsInContactsSynchronous() {
        return getIsInContactsSynchronous(getNumber());
    }

    public boolean getIsInContactsSynchronous(String str) {
        if (this.isInContacts == null) {
            setIsInContacts(ContactUtil.isNumberInContacts(str));
            hasCheckedIfInContacts();
        }
        return this.isInContacts == null ? false : this.isInContacts.booleanValue();
    }

    public String getLocation() {
        StringBuilder sb = new StringBuilder();
        if (!Text.isBlank(this.city)) {
            sb.append(this.city);
        }
        if (!Text.isBlank(this.state)) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(this.state);
        }
        return sb.toString();
    }

    public String getNumber() {
        return this.number;
    }

    @NonNull
    public OffenderUtil.EOffenderCategory getOffenderCategory() {
        return OffenderUtil.EOffenderCategory.fromValue(getOffenderCategoryId());
    }

    public int getOffenderCategoryId() {
        if (this.offenderCategoryId == null) {
            refreshOffenderCategoryId();
        }
        return this.offenderCategoryId.intValue();
    }

    public String getOffenderCategoryName(Realm realm) {
        return OffenderCategoryRealm.getOffenderTypeName(realm, getOffenderCategoryId());
    }

    public int getOffenderFlags() {
        return this.offenderFlags;
    }

    public boolean hasCallerId() {
        return !Text.isBlank(getCallerId());
    }

    public boolean hasCheckedIfInContacts() {
        boolean booleanValue;
        synchronized (this) {
            if (this.hasCheckedIfInContacts == null) {
                populateContactData();
                this.hasCheckedIfInContacts = false;
            }
            booleanValue = this.hasCheckedIfInContacts.booleanValue();
        }
        return booleanValue;
    }

    public boolean hasContactId() {
        if (this.hasContactId == null) {
            populateContactData();
            this.hasContactId = false;
        }
        return this.hasContactId.booleanValue();
    }

    public boolean hasContactName() {
        return hasContactName(true);
    }

    public boolean hasContactName(boolean z) {
        boolean z2 = false;
        if (this.hasContactName == null) {
            if (z) {
                populateContactData();
                this.hasContactName = false;
            } else {
                populateContactDataSynchronous();
            }
        }
        if (this.hasContactName != null) {
            z2 = this.hasContactName.booleanValue();
        }
        return z2;
    }

    public boolean hasContactPicture() {
        if (this.hasContactPicture == null) {
            populateContactData();
            this.hasContactPicture = false;
        }
        return this.hasContactPicture.booleanValue();
    }

    public boolean hasContactPictureUri() {
        if (this.hasContactPictureUri == null) {
            populateContactData();
            this.hasContactPictureUri = false;
        }
        return this.hasContactPictureUri.booleanValue();
    }

    public boolean hasDisplayName() {
        return hasContactName() || hasCallerId();
    }

    public boolean hasInitial() {
        return getInitial().length() > 0 && !"(".equals(getInitial());
    }

    public boolean hasLocation() {
        return !Text.isBlank(getLocation());
    }

    public boolean hasPsData() {
        boolean z;
        if (!getIsInContacts()) {
            z = true;
            if (!isLookupOnly()) {
                z = true;
                if (!isOffender(true)) {
                    if (hasCallerId()) {
                        z = true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public boolean inApprovedList() {
        return (this.isInApprovedList == null || !this.isInApprovedList.booleanValue()) ? updateInApprovedList() : this.isInApprovedList.booleanValue();
    }

    public boolean inBlockList() {
        return (this.isInBlockList == null || !this.isInBlockList.booleanValue()) ? updateInBlockList() : this.isInBlockList.booleanValue();
    }

    public boolean isBlockedDueToType(boolean z) {
        if (z) {
            boolean z2 = false;
            if (!getIsInContacts()) {
                z2 = false;
                if (isBlockedType()) {
                    z2 = true;
                }
            }
            return z2;
        }
        boolean z3 = false;
        if (!getIsInContactsSynchronous()) {
            z3 = false;
            if (isBlockedType()) {
                z3 = true;
            }
        }
        return z3;
    }

    public boolean isBlockedDueToUnknown() {
        return PreferenceUtil.getIsUnknownBlockingEnabled() && isUnknownNumber();
    }

    public boolean isInContactsCached() {
        return this.isInContacts != null;
    }

    public boolean isLookupOnly() {
        return this.isLookupOnly.booleanValue();
    }

    public boolean isOffender(boolean z) {
        return !getIsInContacts(z) && OffenderUtil.idIsInOffenderMap(getOffenderCategoryId());
    }

    public boolean isPopulated() {
        return this.wasPopulatedLocally != null && this.wasPopulatedLocally.booleanValue();
    }

    public boolean isScammer() {
        return OffenderUtil.getOffenderTypeUiFromID(getOffenderCategoryId()) == OffenderUtil.OffenderTypeUi.SCAM;
    }

    public boolean isSpoofer() {
        String formatNumberToE164 = NumbersUtil.formatNumberToE164(DeviceNumberProvider.INSTANCE.getNumber());
        String formatNumberToE1642 = NumbersUtil.formatNumberToE164(this.number);
        if (formatNumberToE1642 == null || formatNumberToE1642.length() < 5 || formatNumberToE164 == null || formatNumberToE164.length() < 5) {
            return false;
        }
        String replace = formatNumberToE1642.replace("+1", "");
        if (!formatNumberToE164.replace("+1", "").substring(0, 4).equals(replace.substring(0, 4)) || ContactUtil.isNumberInContacts(replace)) {
            return false;
        }
        Timber.m37d(replace + " is spoof likely", new Object[0]);
        return true;
    }

    public boolean isUnknownNumber() {
        if (OffenderUtil.EOffenderCategory.fromValue(getOffenderCategoryId()) == OffenderUtil.EOffenderCategory.UNKNOWN) {
            return true;
        }
        if (this.isUnknownNumber == null) {
            int integer = PSApplication.context().getResources().getInteger(C1566R.integer.number_minimum_display_length);
            boolean z = true;
            if (!Text.isBlank(getNumber())) {
                z = getNumber().length() < integer;
            }
            this.isUnknownNumber = Boolean.valueOf(z);
        }
        return this.isUnknownNumber.booleanValue();
    }

    public void populate() {
        populateLocally();
        populateRemotely();
    }

    public void populateLocally() {
        if (this.wasPopulatedLocally == null || !this.wasPopulatedLocally.booleanValue()) {
            populateLocallyImpl();
            setChanged();
            notifyObservers();
            return;
        }
        Timber.m37d("Not populating locally. populatedLocally null", new Object[0]);
    }

    public void populateRemotely() {
        if (this.wasPopulatedRemotely == null || !this.wasPopulatedRemotely.booleanValue()) {
            populateRemotelyImpl();
            setChanged();
            notifyObservers();
        }
    }

    public void resetContactInfo() {
        if (this.isInContacts != null) {
            this.contactName = null;
            this.hasContactName = null;
            this.isInContacts = null;
            this.hasCheckedIfInContacts = null;
            this.contactPicture = null;
            this.hasContactPicture = null;
            this.contactPictureUri = null;
            this.hasContactPictureUri = null;
            populateContactData();
            refreshOffenderCategoryId();
            updateInBlockList();
        }
    }

    public void setCallerId(String str) {
        this.callerId = str;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setContactName(String str) {
        if (!Text.isBlank(str)) {
            this.hasContactName = true;
            this.contactName = str;
            return;
        }
        this.hasContactName = false;
    }

    public void setContactPicture(Bitmap bitmap) {
        if (bitmap != null) {
            this.hasContactPicture = true;
            this.contactPicture = bitmap;
        }
    }

    public void setContactPictureUri(String str) {
        if (str != null) {
            this.hasContactPictureUri = true;
            this.contactPictureUri = str;
        }
    }

    public void setIsInContacts(boolean z) {
        this.hasCheckedIfInContacts = true;
        this.isInContacts = Boolean.valueOf(z);
    }

    public void setLookupOnly(boolean z) {
        this.isLookupOnly = Boolean.valueOf(z);
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setOffenderCategoryId(int i) {
        this.offenderCategoryId = Integer.valueOf(i);
    }

    public void setOffenderFlags(int i) {
        this.offenderFlags = i;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String toString() {
        return "Caller{Number='" + this.number + "', Name='" + getDisplayName() + "'}";
    }

    public void updateCachedOffenderData(Offender offender) {
        updateOffenderBitsImpl(offender);
    }

    public void updateCallerId(CallerId callerId) {
        setCallerId(callerId.getName());
        setOffenderCategoryId(callerId.getCategoryId());
        setOffenderFlags(callerId.getOffenderFlags());
        setCity(callerId.getCity());
        setState(callerId.getState());
        setChanged();
        notifyObservers();
    }

    public void updateFromLocalOffenderData(Realm realm) {
        updateOffenderBits(realm, true);
    }

    public boolean updateInApprovedList() {
        Boolean bool = this.isInApprovedList;
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            this.isInApprovedList = Boolean.valueOf(ApprovedListRealm.isCallerApproved(defaultInstance, this));
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            if (bool != this.isInApprovedList) {
                setChanged();
                notifyObservers();
            }
            return this.isInApprovedList.booleanValue();
        } finally {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean updateInBlockList() {
        Boolean bool = this.isInBlockList;
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            this.isInBlockList = Boolean.valueOf(BlockListRealm.isCallerBlocked(defaultInstance, this));
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            if (bool != this.isInBlockList) {
                setChanged();
                notifyObservers();
            }
            return this.isInBlockList.booleanValue();
        } finally {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean wasBlocked() {
        if (this.wasBlocked == null || !this.wasBlocked.booleanValue()) {
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                this.wasBlocked = Boolean.valueOf(0 < BlockHistoryRealm.getBlockCount(defaultInstance, getNumber()));
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } finally {
                try {
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.wasBlocked.booleanValue();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.number);
    }
}
