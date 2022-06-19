package com.telguarder.features.numberLookup;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.FieldType;
import com.telguarder.ApplicationConstants;
import com.telguarder.C2083R;
import com.telguarder.features.rateAndFeedback.Reportable;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.contact.ContactUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEvent.class */
public class PhoneEvent implements Comparable<PhoneEvent>, Reportable {
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_ACTOR_ID)
    public String actorId;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_ACTOR_PHONE_NUMBER)
    public String actorPhoneNumber;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_ACTOR_TYPE)
    public String actorType;
    @DatabaseField(columnName = "address")
    public String address;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_ACTOR_BIRTH_DATE)
    public String birthDate;
    public long callLogId;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER)
    public String calledPhoneNumber;
    public int counter;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_DATE_TIME)
    public long dateTimeInMillis;
    @DatabaseField(columnName = "email")
    public String email;
    @DatabaseField(generatedId = true)

    /* renamed from: id */
    public int f1286id;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_INFO_PAGE_URL)
    public String infoPageUrl;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_LAST_UPDATE_DATE_TIME)
    public long lastUpdateDateTimeInMillis;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_ACTOR_LOGO_URL)
    public String logoUrl;
    private String mLastSpamComment;
    private String mLastSpamDate;
    private String mReportableAddress;
    @DatabaseField(columnName = "name")
    public String name;
    public String phoneNumberForDisplaying;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_PHONEBOOK_NUMBER)
    public String phonebookNumber;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_REGION_CODE)
    public String regionCode;
    public SearchResult searchResult;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_SECURITY_LEVEL)
    public String securityLevel;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_SPAM_TYPE)
    public String spamType;
    public int type;
    @DatabaseField(columnName = PhoneCallOrmLiteHelper.FIELD_ACTOR_WEBSITE)
    public String website;
    private Boolean mSpamComunityRed = null;
    private Boolean mSpamComunityOrange = null;
    private Boolean mSpamPersonal = null;
    private Boolean mSpam = null;
    private String mSpamTitle = null;
    private String mSpamMessage = null;

    private int callTypeIsIncomingOrMissed(PhoneEvent phoneEvent) {
        int compare = Integer.compare(phoneEvent.type, 1);
        if (compare != 0) {
            compare = Integer.compare(phoneEvent.type, 3);
        }
        return compare;
    }

    public static PhoneEvent phoneCallOfSearchResult(Context context, SearchResult searchResult, String str, Spam spam, String str2) {
        PhoneEvent phoneEvent = new PhoneEvent();
        phoneEvent.searchResult = searchResult;
        phoneEvent.f1286id = -1;
        phoneEvent.type = -1;
        phoneEvent.actorId = searchResult.f1287id;
        phoneEvent.name = searchResult.getFormattedName();
        phoneEvent.birthDate = searchResult.birthDate;
        phoneEvent.actorType = searchResult.getActorType().toString();
        phoneEvent.actorPhoneNumber = searchResult.getAnyPhoneNumber();
        phoneEvent.logoUrl = searchResult.logoUrl;
        if (spam != null) {
            phoneEvent.spamType = spam.spamType;
            phoneEvent.infoPageUrl = spam.infoPageUrl;
        } else {
            phoneEvent.spamType = null;
            phoneEvent.infoPageUrl = null;
        }
        if (!TextUtils.isEmpty(searchResult.getAnyAddress().singleLine())) {
            phoneEvent.address = searchResult.getAnyAddress().singleLine();
        }
        if (!TextUtils.isEmpty(searchResult.email)) {
            phoneEvent.email = searchResult.email;
        }
        if (!TextUtils.isEmpty(searchResult.webUrl)) {
            phoneEvent.website = searchResult.webUrl;
        }
        phoneEvent.calledPhoneNumber = str;
        phoneEvent.phoneNumberForDisplaying = ContactUtils.getFormattedPhoneNumber(context, str, false, null);
        phoneEvent.dateTimeInMillis = System.currentTimeMillis();
        phoneEvent.securityLevel = str2;
        return phoneEvent;
    }

    public static PhoneEvent phoneCallOfSearchResult(Context context, SearchResult searchResult, String str, String str2) {
        return phoneCallOfSearchResult(context, searchResult, str, null, str2);
    }

    public static PhoneEvent phoneEventOfCallCursor(Context context, Cursor cursor) {
        PhoneEvent phoneEvent = new PhoneEvent();
        phoneEvent.f1286id = -1;
        phoneEvent.callLogId = cursor.getLong(cursor.getColumnIndex(FieldType.FOREIGN_ID_FIELD_SUFFIX));
        String string = cursor.getString(cursor.getColumnIndex("normalized_number"));
        String str = string;
        if (TextUtils.isEmpty(string)) {
            str = cursor.getString(cursor.getColumnIndex("number"));
        }
        phoneEvent.phonebookNumber = str;
        String e164NUmberIfPossible = ContactUtils.getE164NUmberIfPossible(context, str, null);
        phoneEvent.calledPhoneNumber = e164NUmberIfPossible;
        phoneEvent.phoneNumberForDisplaying = ContactUtils.getFormattedPhoneNumber(context, e164NUmberIfPossible, false, null);
        if (!TextUtils.isEmpty(str)) {
            phoneEvent.name = cursor.getString(cursor.getColumnIndex("name"));
        } else {
            phoneEvent.name = ContactUtils.getHiddenNumberDisplayName(context);
        }
        phoneEvent.type = cursor.getInt(cursor.getColumnIndex("type"));
        phoneEvent.actorType = ActorType.UNKNOWN.toString();
        phoneEvent.dateTimeInMillis = cursor.getLong(cursor.getColumnIndex("date"));
        return phoneEvent;
    }

    public static PhoneEvent phoneEventOfHistoryCacheItem(CachedHistoryListItem cachedHistoryListItem) {
        PhoneEvent phoneEvent = new PhoneEvent();
        phoneEvent.f1286id = -1;
        phoneEvent.name = cachedHistoryListItem.getName();
        phoneEvent.spamType = cachedHistoryListItem.getSpamType();
        phoneEvent.infoPageUrl = cachedHistoryListItem.getInfoPageUrl();
        phoneEvent.phoneNumberForDisplaying = cachedHistoryListItem.getPhoneNumberForDisplaying();
        phoneEvent.calledPhoneNumber = cachedHistoryListItem.getCalledPhoneNumber();
        phoneEvent.counter = cachedHistoryListItem.getCounter();
        phoneEvent.setLastSpamComment(cachedHistoryListItem.getLastSpamComment());
        phoneEvent.setLastSpamDate(cachedHistoryListItem.getLastSpamDate());
        phoneEvent.type = cachedHistoryListItem.getType();
        phoneEvent.dateTimeInMillis = cachedHistoryListItem.getDateTimeInMillis();
        phoneEvent.securityLevel = cachedHistoryListItem.getSecurityLevel();
        return phoneEvent;
    }

    public int compareTo(PhoneEvent phoneEvent) {
        Integer valueOf = Integer.valueOf(this.calledPhoneNumber.compareTo(phoneEvent.calledPhoneNumber));
        Integer valueOf2 = Integer.valueOf(Integer.compare(this.type, phoneEvent.type));
        if (valueOf.intValue() == 0 && valueOf2.intValue() == 0) {
            return 0;
        }
        return valueOf.compareTo(Integer.valueOf(Integer.valueOf(Integer.valueOf(callTypeIsIncomingOrMissed(this)).compareTo(Integer.valueOf(callTypeIsIncomingOrMissed(phoneEvent)))).compareTo(valueOf2)));
    }

    @Override // com.telguarder.features.rateAndFeedback.Reportable
    public List<String> getAllReportablePhoneNumbers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.calledPhoneNumber);
        return arrayList;
    }

    public String getDisplayableBirthDate() {
        String str;
        try {
            str = new SimpleDateFormat("dd. MMMM", new Locale("no", "NO")).format(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.getDefault()).parse(this.birthDate));
        } catch (ParseException e) {
            e.printStackTrace();
            str = "";
        }
        return str;
    }

    public String getLastSpamComment() {
        String str = this.mLastSpamComment;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public String getLastSpamDate() {
        String str = this.mLastSpamDate;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public String getLastSpamDateShort() {
        if (TextUtils.isEmpty(this.mLastSpamDate) || this.mLastSpamDate.length() <= 9) {
            return this.mLastSpamDate;
        }
        return this.mLastSpamDate.substring(8, 10) + "/" + this.mLastSpamDate.substring(5, 7);
    }

    @Override // com.telguarder.features.rateAndFeedback.Reportable
    public String getReportableAddress() {
        String str;
        if (this.mReportableAddress == null && (str = this.address) != null) {
            this.mReportableAddress = str.trim().replaceAll("\\p{Cntrl}", "");
        }
        return this.mReportableAddress;
    }

    @Override // com.telguarder.features.rateAndFeedback.Reportable
    public String getReportableName() {
        return this.name;
    }

    @Override // com.telguarder.features.rateAndFeedback.Reportable
    public String getReportablePhoneNumber() {
        return this.calledPhoneNumber;
    }

    @Override // com.telguarder.features.rateAndFeedback.Reportable
    public String getReportableWebUrl() {
        return this.website;
    }

    public String getSpamMessage(Context context) {
        if (this.mSpamMessage == null) {
            if (isSpamCommunityRed()) {
                this.mSpamMessage = AppUtil.getStringResource(context, C2083R.string.spam_message_community);
            } else if (isSpamCommunityOrange()) {
                this.mSpamMessage = AppUtil.getStringResource(context, C2083R.string.spam_message_comunity_reported);
            } else if (isSpamPersonal()) {
                this.mSpamMessage = AppUtil.getStringResource(context, C2083R.string.spam_message_personal);
            }
        }
        return this.mSpamMessage;
    }

    public String getSpamTitle(Context context) {
        if (this.mSpamTitle == null) {
            if (isSpamCommunityOrange()) {
                this.mSpamTitle = AppUtil.getStringResource(context, C2083R.string.spam_title_community_reported_orange);
            } else {
                this.mSpamTitle = AppUtil.getStringResource(context, C2083R.string.spam_title_community_reported);
            }
        }
        return this.mSpamTitle;
    }

    public boolean isFromFreshCache(Context context) {
        return System.currentTimeMillis() - this.lastUpdateDateTimeInMillis <= ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE && AppUtil.getLastUpdateTime(context) < this.lastUpdateDateTimeInMillis;
    }

    public boolean isNumberTheSame(String str) {
        return ContactUtils.isNumberTheSame(str, this.calledPhoneNumber) || ContactUtils.isNumberTheSame(str, this.actorPhoneNumber) || ContactUtils.isNumberTheSame(str, this.phonebookNumber);
    }

    public boolean isSpam() {
        if (this.mSpam == null) {
            this.mSpam = Boolean.valueOf(!TextUtils.isEmpty(this.spamType));
        }
        return this.mSpam.booleanValue();
    }

    public boolean isSpamCommunityOrange() {
        if (this.mSpamComunityOrange == null) {
            this.mSpamComunityOrange = Boolean.valueOf(isSpam() && this.spamType.equalsIgnoreCase("communityReported"));
        }
        return this.mSpamComunityOrange.booleanValue();
    }

    public boolean isSpamCommunityRed() {
        if (this.mSpamComunityRed == null) {
            this.mSpamComunityRed = Boolean.valueOf(isSpam() && this.spamType.equalsIgnoreCase("community"));
        }
        return this.mSpamComunityRed.booleanValue();
    }

    public boolean isSpamPersonal() {
        if (this.mSpamPersonal == null) {
            this.mSpamPersonal = Boolean.valueOf(isSpam() && this.spamType.equalsIgnoreCase("personal"));
        }
        return this.mSpamPersonal.booleanValue();
    }

    public boolean sameAs(PhoneEvent phoneEvent) {
        return phoneEvent != null && AppUtil.isSameStrings(this.actorId, phoneEvent.actorId) && AppUtil.isSameStrings(this.name, phoneEvent.name) && AppUtil.isSameStrings(this.actorType, phoneEvent.actorType) && AppUtil.isSameStrings(this.actorPhoneNumber, phoneEvent.actorPhoneNumber) && AppUtil.isSameStrings(this.address, phoneEvent.address) && AppUtil.isSameStrings(this.logoUrl, phoneEvent.logoUrl) && AppUtil.isSameStrings(this.calledPhoneNumber, phoneEvent.calledPhoneNumber) && AppUtil.isSameStrings(this.spamType, phoneEvent.spamType) && AppUtil.isSameStrings(this.securityLevel, phoneEvent.securityLevel);
    }

    public void setCoreValuesFromOtherPhoneCall(PhoneEvent phoneEvent) {
        if (phoneEvent == null) {
            return;
        }
        this.f1286id = phoneEvent.f1286id;
        this.actorId = phoneEvent.actorId;
        this.name = phoneEvent.name;
        this.address = phoneEvent.address;
        this.logoUrl = phoneEvent.logoUrl;
        this.actorType = phoneEvent.actorType;
        this.actorPhoneNumber = phoneEvent.actorPhoneNumber;
        this.calledPhoneNumber = phoneEvent.calledPhoneNumber;
        this.email = phoneEvent.email;
        this.website = phoneEvent.website;
        this.birthDate = phoneEvent.birthDate;
        if (this.dateTimeInMillis == 0) {
            this.dateTimeInMillis = phoneEvent.dateTimeInMillis;
        }
        if (this.lastUpdateDateTimeInMillis == 0) {
            this.lastUpdateDateTimeInMillis = phoneEvent.lastUpdateDateTimeInMillis;
        }
        this.mSpamComunityRed = null;
        this.mSpamComunityOrange = null;
        this.mSpamPersonal = null;
        this.mSpam = null;
        this.mSpamTitle = null;
        this.mSpamMessage = null;
        this.spamType = phoneEvent.spamType;
        this.securityLevel = phoneEvent.securityLevel;
        this.infoPageUrl = phoneEvent.infoPageUrl;
    }

    public void setLastSpamComment(String str) {
        this.mLastSpamComment = str;
    }

    public void setLastSpamDate(String str) {
        this.mLastSpamDate = str;
    }
}
