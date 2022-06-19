package com.truecaller.analytics.common.event;

import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import kotlin.Metadata;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17784v2;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent.class */
public final class ViewActionEvent implements AbstractC19549v {

    /* renamed from: d */
    public static final C2856a f9985d = new C2856a(null);

    /* renamed from: a */
    public final String f9986a;

    /* renamed from: b */
    public final String f9987b;

    /* renamed from: c */
    public final String f9988c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "BACKUP_NOW", "ACCOUNT_CHANGE", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$BackupAction.class */
    public enum BackupAction {
        BACKUP_NOW("backupNow"),
        ACCOUNT_CHANGE("backupAccountChange");
        
        private final String value;

        BackupAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "BACKUP_PROMO_CLICKED", "BACKUP_PROMO_DISMISSED", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction.class */
    public enum BackupPromoAction {
        BACKUP_PROMO_CLICKED("backupPromoClicked"),
        BACKUP_PROMO_DISMISSED("backupPromoDismissed");
        
        private final String value;

        BackupPromoAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "BLOCK", "UNBLOCK", "NOTSPAM", "VOIP", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$BlockingAction.class */
    public enum BlockingAction {
        BLOCK("block"),
        UNBLOCK("unblock"),
        NOTSPAM("notspam"),
        VOIP("voip");
        
        private final String value;

        BlockingAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "WILDCARD", "ALPHANUMERIC", "NUMERIC", "COUNTRY", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction.class */
    public enum BlockingSubAction {
        WILDCARD("wildcard"),
        ALPHANUMERIC("alphanumeric"),
        NUMERIC("numeric"),
        COUNTRY(ImpressionData.COUNTRY);
        
        private final String value;

        BlockingSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessProfilesAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "IMAGE_OPENEND", "HOURS_EXPANDED", "NOT_BUSINESS", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$BusinessProfilesAction.class */
    public enum BusinessProfilesAction {
        IMAGE_OPENEND("businessImageOpened"),
        HOURS_EXPANDED("businessHoursExpanded"),
        NOT_BUSINESS("notBusiness");
        
        private final String value;

        BusinessProfilesAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "SHOWN", "YES", "NO", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction.class */
    public enum BusinessSuggestionSubAction {
        SHOWN(AnalyticsConstants.SHOWN),
        YES("yes"),
        NO("no");
        
        private final String value;

        BusinessSuggestionSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "SWIPE", "ITEM", "BUTTON", "HEADER", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$CallSubAction.class */
    public enum CallSubAction {
        SWIPE("swipe"),
        ITEM("item"),
        BUTTON("button"),
        HEADER("header");
        
        private final String value;

        CallSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "STYLE_FULLSCREEN", "STYLE_CLASSIC", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction.class */
    public enum CallerIdSettingsAction {
        STYLE_FULLSCREEN("FullScreenStyle"),
        STYLE_CLASSIC("ClassicStyle");
        
        private final String value;

        CallerIdSettingsAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "SAVE", "EDIT", "DELETE", "DELETE_IDENTIFIED", "SEARCH_WEB", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$ContactAction.class */
    public enum ContactAction {
        SAVE("save"),
        EDIT("edit"),
        DELETE("delete"),
        DELETE_IDENTIFIED("delete_identified"),
        SEARCH_WEB("search_web");
        
        private final String value;

        ContactAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0016\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "CALL_HISTORY", "UNBLOCK", "TAG", "COPY", "COPY_NAME", "COPY_NUMBER", "SHARE", "MAP", "EMAIL", "FACEBOOK", "BROWSER", "SKYPE", "GOOGLE_PLUS", "TWITTER", "SWISH", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction.class */
    public enum ContactDetailsAction {
        CALL_HISTORY("callHistory"),
        UNBLOCK("unblockQuery"),
        TAG(RemoteMessageConst.Notification.TAG),
        COPY("copy"),
        COPY_NAME("copyName"),
        COPY_NUMBER("copyNumber"),
        SHARE(ViewAction.SHARE),
        MAP("map"),
        EMAIL(AnalyticsConstants.EMAIL),
        FACEBOOK("facebook"),
        BROWSER("browser"),
        SKYPE("skype"),
        GOOGLE_PLUS("googlePlus"),
        TWITTER("twitter"),
        SWISH("swish");
        
        private final String value;

        ContactDetailsAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "BUTTON", "HEADER", "EDIT", "ADD", "CONTACT", "NUMBER", "NAME", "EMAIL", "SEARCH", "LINK", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction.class */
    public enum ContactDetailsSubAction {
        BUTTON("button"),
        HEADER("header"),
        EDIT("edit"),
        ADD("add"),
        CONTACT(AnalyticsConstants.CONTACT),
        NUMBER("number"),
        NAME(AnalyticsConstants.NAME),
        EMAIL(AnalyticsConstants.EMAIL),
        SEARCH("search"),
        LINK("link");
        
        private final String value;

        ContactDetailsSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "MANAGE_CALL_REASON", "ON_DEMAND_CUSTOM_MESSAGE", "ON_BOARDED_CUSTOM_MESSAGE", "ON_BOARDED_REASON_PICKED", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction.class */
    public enum ContextCallAction {
        MANAGE_CALL_REASON("OnBoardingManageCallReason"),
        ON_DEMAND_CUSTOM_MESSAGE("OnDemandCustomMessage"),
        ON_BOARDED_CUSTOM_MESSAGE("OnBoardedCustomMessage"),
        ON_BOARDED_REASON_PICKED("ContextCallReasonPicked");
        
        private final String value;

        ContextCallAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "PHONE_BOOK", "TRUECALLER", "CLOUD_CONTACT", "CATEGORY", "HEADER", "BUTTON", "ITEM", "AVATAR", "CALL_RECORDING", "NAME_CLICKED", "PREMIUM_BADGE", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction.class */
    public enum DetailsSubAction {
        PHONE_BOOK("phoneBook"),
        TRUECALLER("truecaller"),
        CLOUD_CONTACT("cloudContact"),
        CATEGORY("category"),
        HEADER("header"),
        BUTTON("button"),
        ITEM("item"),
        AVATAR("avatar"),
        CALL_RECORDING("callRecording"),
        NAME_CLICKED("nameClicked"),
        PREMIUM_BADGE("premiumBadge");
        
        private final String value;

        DetailsSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$DialogWarnFriendsAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "WARN_FRIENDS", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$DialogWarnFriendsAction.class */
    public enum DialogWarnFriendsAction {
        WARN_FRIENDS("warnedFriends");
        
        private final String value;

        DialogWarnFriendsAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$DualSimSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "SIM1", "SIM2", "AlwaysAsk", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$DualSimSubAction.class */
    public enum DualSimSubAction {
        SIM1("sim1"),
        SIM2("sim2"),
        AlwaysAsk("alwaysAsk");
        
        private final String value;

        DualSimSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "FAQ", "SEND_FEEDBACK", "CHAT_WITH_US", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$HelpAction.class */
    public enum HelpAction {
        FAQ("faq"),
        SEND_FEEDBACK("send_feedback"),
        CHAT_WITH_US("chat_with_us");
        
        private final String value;

        HelpAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$ImUpgradeAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "UPDATE_APP_CLICKED", "UPDATE_APP_DISMISSED", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$ImUpgradeAction.class */
    public enum ImUpgradeAction {
        UPDATE_APP_CLICKED("imSoftUpgradeClicked"),
        UPDATE_APP_DISMISSED("imSoftUpgradeDismissed");
        
        private final String value;

        ImUpgradeAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u001d\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001e¨\u0006\u001f"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "INCALLUI_CALL", "FULL_SCREEN_PROFILE_PICTURE", "MUTE", "UNMUTE", "OPEN_KEYPAD", "HOLD", "UNHOLD", "HANG_UP", "ACCEPT", "REJECT", "REJECT_WITH_MESSAGE", "ADD_CALL", "AUDIO_ROUTE", "MERGE", "SWAP", "NOTIFICATION", "ANSWER", "DECLINE", "SPEAKER_ON", "SPEAKER_OFF", "VOIP", "BUBBLE", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction.class */
    public enum InCallUiAction {
        INCALLUI_CALL("InCallUICall"),
        FULL_SCREEN_PROFILE_PICTURE("fullPicInCallUI"),
        MUTE("Mute"),
        UNMUTE("Unmute"),
        OPEN_KEYPAD("OpenKeypad"),
        HOLD("Hold"),
        UNHOLD("Unhold"),
        HANG_UP("Hangup"),
        ACCEPT("Accept"),
        REJECT("Reject"),
        REJECT_WITH_MESSAGE("RejectWithMessage"),
        ADD_CALL("AddCall"),
        AUDIO_ROUTE("AudioRoute"),
        MERGE("Merge"),
        SWAP("Swap"),
        NOTIFICATION("Notification"),
        ANSWER("Answer"),
        DECLINE("Decline"),
        SPEAKER_ON("SpeakerOn"),
        SPEAKER_OFF("SpeakerOff"),
        VOIP("SwitchToVoip"),
        BUBBLE("CallingBubbleClicked");
        
        private final String value;

        InCallUiAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$LearnMoreSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "LEARN_MORE", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$LearnMoreSubAction.class */
    public enum LearnMoreSubAction {
        LEARN_MORE("LearnMore");
        
        private final String value;

        LearnMoreSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "INCOMING", "OUTGOING", "MISSED", "BLOCKED", "FLASH", "GROUP_BY_NUMBER", "DELETE_ALL_CALLS", "DELETE_FLASH_EVENTS", "BRING_BACK_HIDDEN_MOST_CALLED_CONTACTS", "PASTE", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction.class */
    public enum MenuSubAction {
        INCOMING("incoming"),
        OUTGOING("outgoing"),
        MISSED("missed"),
        BLOCKED("blocked"),
        FLASH("flash"),
        GROUP_BY_NUMBER("groupByNumber"),
        DELETE_ALL_CALLS("deleteAllCalls"),
        DELETE_FLASH_EVENTS("deleteFlashEvents"),
        BRING_BACK_HIDDEN_MOST_CALLED_CONTACTS("bringBackHiddenMostCalledContacts"),
        PASTE("paste");
        
        private final String value;

        MenuSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$MessageSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "SWIPE", "BUTTON", "HEADER", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$MessageSubAction.class */
    public enum MessageSubAction {
        SWIPE("swipe"),
        BUTTON("button"),
        HEADER("header");
        
        private final String value;

        MessageSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "COPY_OTP", "DISMISS_OTP", "MARK_OTP_READ", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction.class */
    public enum OtpNotifAction {
        COPY_OTP("otpCopiedFromNotif"),
        DISMISS_OTP("otpDismissedFromNotif"),
        MARK_OTP_READ("otpMarkedReadFromNotif");
        
        private final String value;

        OtpNotifAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "POSITIVE", "NEGATIVE", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction.class */
    public enum PremiumAlertAction {
        POSITIVE("Positive"),
        NEGATIVE("Negative");
        
        private final String value;

        PremiumAlertAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "FACEBOOK", "TWITTER", "INSTAGRAM", "WEBSITE", "GOOGLE_PLAY_STORE", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction.class */
    public enum SocialMediaSubAction {
        FACEBOOK("Facebook"),
        TWITTER("Twitter"),
        INSTAGRAM("Instagram"),
        WEBSITE("Website"),
        GOOGLE_PLAY_STORE("GooglePlayStore");
        
        private final String value;

        SocialMediaSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$TagSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "BUTTON", "HEADER", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$TagSubAction.class */
    public enum TagSubAction {
        BUTTON("button"),
        HEADER("header");
        
        private final String value;

        TagSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "RATE", "FEEDBACK", "SHARE", "INVITE", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$ViralityAction.class */
    public enum ViralityAction {
        RATE("rate"),
        FEEDBACK("feedback"),
        SHARE(ViewAction.SHARE),
        INVITE("invite");
        
        private final String value;

        ViralityAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "AUDIO", "VIDEO", "APP_OPEN", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction.class */
    public enum WhatsAppSubAction {
        AUDIO("Audio"),
        VIDEO("Video"),
        APP_OPEN("AppOpen");
        
        private final String value;

        WhatsAppSubAction(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.analytics.common.event.ViewActionEvent$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/ViewActionEvent$a.class */
    public static final class C2856a {
        public C2856a(f fVar) {
        }

        /* renamed from: c */
        public static ViewActionEvent m35935c(C2856a c2856a, String str, BlockingAction blockingAction, BlockingSubAction blockingSubAction, int i) {
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(blockingAction, "action");
            return c2856a.m35931g(str, blockingAction.getValue(), null);
        }

        /* renamed from: h */
        public static /* synthetic */ ViewActionEvent m35930h(C2856a c2856a, String str, String str2, String str3, int i) {
            if ((i & 1) != 0) {
                str = null;
            }
            return c2856a.m35931g(str, str2, null);
        }

        /* renamed from: k */
        public static ViewActionEvent m35927k(C2856a c2856a, InCallUiAction inCallUiAction, String str, String str2, int i) {
            if ((i & 2) != 0) {
                str = null;
            }
            if ((i & 4) != 0) {
                str2 = null;
            }
            l.e(inCallUiAction, "action");
            return c2856a.m35931g(str, inCallUiAction.getValue(), str2);
        }

        /* renamed from: a */
        public final ViewActionEvent m35937a(String str, BackupAction backupAction) {
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(backupAction, "action");
            return m35930h(this, str, backupAction.getValue(), null, 4);
        }

        /* renamed from: b */
        public final ViewActionEvent m35936b(String str, BackupPromoAction backupPromoAction) {
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(backupPromoAction, "action");
            return m35930h(this, str, backupPromoAction.getValue(), null, 4);
        }

        /* renamed from: d */
        public final ViewActionEvent m35934d(String str, CallerIdSettingsAction callerIdSettingsAction) {
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(callerIdSettingsAction, "action");
            return m35930h(this, str, callerIdSettingsAction.getValue(), null, 4);
        }

        /* renamed from: e */
        public final ViewActionEvent m35933e(String str, ContactAction contactAction) {
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(contactAction, "action");
            return m35930h(this, str, contactAction.getValue(), null, 4);
        }

        /* renamed from: f */
        public final ViewActionEvent m35932f(String str, ContextCallAction contextCallAction) {
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(contextCallAction, "action");
            return m35930h(this, str, contextCallAction.getValue(), null, 4);
        }

        /* renamed from: g */
        public final ViewActionEvent m35931g(String str, String str2, String str3) {
            return C22128a.m8584p1(str2, "action", str2, str3, str);
        }

        /* renamed from: i */
        public final ViewActionEvent m35929i(String str, HelpAction helpAction) {
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(helpAction, "action");
            return m35930h(this, str, helpAction.getValue(), null, 4);
        }

        /* renamed from: j */
        public final ViewActionEvent m35928j(String str, ImUpgradeAction imUpgradeAction) {
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(imUpgradeAction, "action");
            return m35930h(this, str, imUpgradeAction.getValue(), null, 4);
        }

        /* renamed from: l */
        public final ViewActionEvent m35926l(OtpNotifAction otpNotifAction) {
            l.e(otpNotifAction, "action");
            return m35930h(this, null, otpNotifAction.getValue(), null, 5);
        }

        /* renamed from: m */
        public final ViewActionEvent m35925m(String str, PremiumAlertAction premiumAlertAction) {
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(premiumAlertAction, "action");
            return m35930h(this, str, premiumAlertAction.getValue(), null, 4);
        }

        /* renamed from: n */
        public final ViewActionEvent m35924n(String str) {
            l.e(str, AnalyticsConstants.CONTEXT);
            return m35930h(this, str, "suggestName", null, 4);
        }

        /* renamed from: o */
        public final ViewActionEvent m35923o(String str, ViralityAction viralityAction) {
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(viralityAction, "action");
            return m35930h(this, str, viralityAction.getValue(), null, 4);
        }
    }

    public ViewActionEvent(String str, String str2, String str3) {
        l.e(str, "action");
        this.f9986a = str;
        this.f9987b = str2;
        this.f9988c = str3;
    }

    /* renamed from: b */
    public static final ViewActionEvent m35945b(String str, BusinessProfilesAction businessProfilesAction) {
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e(businessProfilesAction, "action");
        String value = businessProfilesAction.getValue();
        l.e(value, "action");
        return new ViewActionEvent(value, null, str);
    }

    /* renamed from: c */
    public static final ViewActionEvent m35944c(String str, String str2) {
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e("call", "action");
        return new ViewActionEvent("call", str2, str);
    }

    /* renamed from: d */
    public static final ViewActionEvent m35943d(String str, ContactAction contactAction) {
        return f9985d.m35933e(str, contactAction);
    }

    /* renamed from: e */
    public static final ViewActionEvent m35942e(String str, ContactDetailsAction contactDetailsAction) {
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e(contactDetailsAction, "action");
        String value = contactDetailsAction.getValue();
        l.e(value, "action");
        return new ViewActionEvent(value, null, str);
    }

    /* renamed from: f */
    public static final ViewActionEvent m35941f(String str, ContactDetailsAction contactDetailsAction, ContactDetailsSubAction contactDetailsSubAction) {
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e(contactDetailsAction, "action");
        String value = contactDetailsAction.getValue();
        return C22128a.m8584p1(value, "action", value, contactDetailsSubAction != null ? contactDetailsSubAction.getValue() : null, str);
    }

    /* renamed from: g */
    public static final ViewActionEvent m35940g(String str, String str2) {
        return C22128a.m8584p1(str2, "action", str2, null, str);
    }

    /* renamed from: h */
    public static final ViewActionEvent m35939h(String str, MessageSubAction messageSubAction) {
        l.e(str, AnalyticsConstants.CONTEXT);
        return C22128a.m8584p1("message", "action", "message", messageSubAction != null ? messageSubAction.getValue() : null, str);
    }

    /* renamed from: i */
    public static final ViewActionEvent m35938i(String str, ViralityAction viralityAction) {
        return f9985d.m35923o(str, viralityAction);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17784v2.f50520f;
        C17784v2.C17786b c17786b = new C17784v2.C17786b(null);
        l.d(c17786b, "builder");
        String str = this.f9986a;
        c17786b.validate(c17786b.fields()[2], str);
        c17786b.f50529a = str;
        c17786b.fieldSetFlags()[2] = true;
        String str2 = this.f9987b;
        c17786b.validate(c17786b.fields()[3], str2);
        c17786b.f50530b = str2;
        c17786b.fieldSetFlags()[3] = true;
        String str3 = this.f9988c;
        c17786b.validate(c17786b.fields()[4], str3);
        c17786b.f50531c = str3;
        c17786b.fieldSetFlags()[4] = true;
        C17784v2 build = c17786b.build();
        l.d(build, "builder.build()");
        AbstractC19580x.C19584d c19584d = new AbstractC19580x.C19584d(build);
        Bundle bundle = new Bundle();
        bundle.putString("Action", this.f9986a);
        String str4 = this.f9988c;
        if (str4 != null) {
            bundle.putString("Context", str4);
        }
        String str5 = this.f9987b;
        if (str5 != null) {
            bundle.putString("SubAction", str5);
        }
        return new AbstractC19580x.C19585e(i.z0(new AbstractC19580x[]{c19584d, new AbstractC19580x.C19582b("ViewAction", bundle)}));
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ViewActionEvent)) {
                return false;
            }
            ViewActionEvent viewActionEvent = (ViewActionEvent) obj;
            return l.a(this.f9986a, viewActionEvent.f9986a) && l.a(this.f9987b, viewActionEvent.f9987b) && l.a(this.f9988c, viewActionEvent.f9988c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f9986a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f9987b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f9988c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ViewActionEvent(action=");
        m8728C.append(this.f9986a);
        m8728C.append(", subAction=");
        m8728C.append(this.f9987b);
        m8728C.append(", context=");
        return C22128a.m8618h(m8728C, this.f9988c, ")");
    }
}
