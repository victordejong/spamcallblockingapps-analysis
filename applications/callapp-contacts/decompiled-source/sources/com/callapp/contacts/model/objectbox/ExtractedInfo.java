package com.callapp.contacts.model.objectbox;

import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.framework.phone.Phone;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ExtractedInfo.class */
public class ExtractedInfo implements Serializable {
    private static final long serialVersionUID = -7438518177506947757L;
    public IMDataExtractionUtils.ComType comType;
    public boolean disableNotification;
    public String displayName;
    public long firstSeen;
    public String groupName;
    protected Long id;
    public long lastNotificationShowed;
    public String nameT9Format;
    public String nameT9FormatNoZero;
    public Map<String, Integer> namesMap;
    public String phoneAsRaw;
    public IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin;
    public int seenCount;
    public String senderName;
    public boolean starred;
    public List<Integer> t9Indexes;
    public String unAccentName;
    public long when;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ExtractedInfo$Builder.class */
    public static class Builder {
        public IMDataExtractionUtils.ComType comType;
        public boolean disableNotification;
        public long firstSeen;
        public String groupName;
        public long lastNotificationShowed;
        public String phoneAsRaw;
        public IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin;
        public int seenCount;
        public String senderName;
        public long when;

        public static Builder getBuilderAccordingToOrigin(Phone phone, IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin) {
            Builder builder = new Builder();
            builder.phoneAsRaw = T9Helper.a((CharSequence) phone.getRawNumber());
            builder.when = System.currentTimeMillis();
            builder.recognizedPersonOrigin = recognizedPersonOrigin;
            builder.comType = recognizedPersonOrigin.comtype;
            return builder;
        }

        public ExtractedInfo build() {
            return new ExtractedInfo(this);
        }
    }

    public ExtractedInfo() {
        this.displayName = "";
        this.nameT9Format = "";
        this.nameT9FormatNoZero = "";
        this.unAccentName = "";
        this.t9Indexes = new ArrayList();
        this.namesMap = new HashMap();
    }

    private ExtractedInfo(Builder builder) {
        this.displayName = "";
        this.nameT9Format = "";
        this.nameT9FormatNoZero = "";
        this.unAccentName = "";
        this.t9Indexes = new ArrayList();
        this.namesMap = new HashMap();
        this.recognizedPersonOrigin = builder.recognizedPersonOrigin;
        this.comType = builder.comType;
        this.senderName = builder.senderName;
        this.groupName = builder.groupName;
        this.phoneAsRaw = T9Helper.a((CharSequence) builder.phoneAsRaw);
        this.when = builder.when;
        this.firstSeen = builder.firstSeen;
        this.lastNotificationShowed = builder.lastNotificationShowed;
        this.seenCount = builder.seenCount;
        this.disableNotification = builder.disableNotification;
    }

    public ExtractedInfo(Long l, IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin, IMDataExtractionUtils.ComType comType, String str, String str2, String str3, long j, long j2, long j3, int i, boolean z) {
        this.displayName = "";
        this.nameT9Format = "";
        this.nameT9FormatNoZero = "";
        this.unAccentName = "";
        this.t9Indexes = new ArrayList();
        this.namesMap = new HashMap();
        this.id = l;
        this.recognizedPersonOrigin = recognizedPersonOrigin;
        this.comType = comType;
        this.senderName = str;
        this.groupName = str2;
        this.phoneAsRaw = T9Helper.a((CharSequence) str3);
        this.when = j;
        this.firstSeen = j2;
        this.lastNotificationShowed = j3;
        this.seenCount = i;
        this.disableNotification = z;
    }

    private void fillMap(String str, Map<String, Integer> map) {
        map.clear();
        StringBuilder sb = new StringBuilder();
        int i = -1;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (Character.isLetterOrDigit(charAt)) {
                sb.append(charAt);
                sb = sb;
                i = i;
                if (i == -1) {
                    i = i2;
                    sb = sb;
                }
            } else {
                sb = sb;
                i = i;
                if (i != -1) {
                    String sb2 = sb.toString();
                    if (!map.containsKey(sb2)) {
                        map.put(sb2, Integer.valueOf(i));
                    }
                    sb = new StringBuilder();
                    i = -1;
                }
            }
        }
        if (i != -1) {
            map.put(sb.toString(), Integer.valueOf(i));
        }
    }

    private void onNameUpdate() {
        String str = this.displayName;
        if (str != null) {
            String l = RegexUtils.l(RegexUtils.m(str.toLowerCase()));
            this.unAccentName = l;
            fillMap(l, this.namesMap);
            String replace = T9Helper.a(StringUtils.SPACE + this.unAccentName).replace("*", "0").replace("#", "0").replace("+", "0");
            this.nameT9Format = replace;
            this.t9Indexes.clear();
            for (int i = 1; i < replace.length(); i++) {
                if (replace.charAt(i) != '0') {
                    this.t9Indexes.add(Integer.valueOf(i - 1));
                }
            }
            if (!this.t9Indexes.isEmpty()) {
                List<Integer> list = this.t9Indexes;
                this.t9Indexes.add(Integer.valueOf(list.get(list.size() - 1).intValue() + 1));
            }
            this.nameT9FormatNoZero = this.nameT9Format.replaceAll("0", "");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        ExtractedInfo extractedInfo = (ExtractedInfo) obj;
        IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin = this.recognizedPersonOrigin;
        if (recognizedPersonOrigin != null && !recognizedPersonOrigin.equals(extractedInfo.recognizedPersonOrigin)) {
            return false;
        }
        if (this.recognizedPersonOrigin == null && extractedInfo.recognizedPersonOrigin != null) {
            return false;
        }
        String str = this.phoneAsRaw;
        if (str == null || str.equals(extractedInfo.phoneAsRaw)) {
            return (this.phoneAsRaw != null || extractedInfo.phoneAsRaw == null) && com.callapp.framework.util.StringUtils.b((Object) this.groupName, (Object) extractedInfo.groupName);
        }
        return false;
    }

    public IMDataExtractionUtils.ComType getComType() {
        return this.comType;
    }

    public long getFirstSeen() {
        return this.firstSeen;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public Long getId() {
        return this.id;
    }

    public long getLastNotificationShowed() {
        return this.lastNotificationShowed;
    }

    public String getPhoneAsRaw() {
        return this.phoneAsRaw;
    }

    public IMDataExtractionUtils.RecognizedPersonOrigin getRecognizedPersonOrigin() {
        return this.recognizedPersonOrigin;
    }

    public int getSeenCount() {
        return this.seenCount;
    }

    public String getSenderName() {
        return this.senderName;
    }

    public long getWhen() {
        return this.when;
    }

    public int hashCode() {
        int hashCode = super.hashCode();
        int hashCode2 = this.phoneAsRaw.hashCode();
        int hashCode3 = this.recognizedPersonOrigin.hashCode();
        String str = this.groupName;
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + (str != null ? str.hashCode() : 0);
    }

    public boolean isDisableNotification() {
        return this.disableNotification;
    }

    public boolean isStarred() {
        return this.starred;
    }

    public void setComType(IMDataExtractionUtils.ComType comType) {
        this.comType = comType;
    }

    public void setDisableNotification(boolean z) {
        this.disableNotification = z;
    }

    public void setDisplayName(String str) {
        if (com.callapp.framework.util.StringUtils.b((CharSequence) str)) {
            this.displayName = str;
            onNameUpdate();
        }
    }

    public void setFirstSeen(long j) {
        this.firstSeen = j;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public void setLastNotificationShowed(long j) {
        this.lastNotificationShowed = j;
    }

    public void setSeenCount(int i) {
        this.seenCount = i;
    }

    public void setSenderName(String str) {
        this.senderName = str;
    }

    public void setStarred(boolean z) {
        this.starred = z;
    }

    public void setWhen(long j) {
        this.when = j;
    }

    public String toString() {
        return "IM: " + this.recognizedPersonOrigin + "\ncomType " + this.comType + "\ncontactName " + this.senderName + "\nDisplay Name " + this.displayName + "\nnameT9FormatNoZero " + this.nameT9FormatNoZero + "\ngroupName " + this.groupName + "\nphone " + this.phoneAsRaw + "\nwhen " + this.when + "\nfirstSeen " + this.firstSeen + "\nlastNotificationShowed " + this.lastNotificationShowed + "\nseenCount " + this.seenCount;
    }
}
