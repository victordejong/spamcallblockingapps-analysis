package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.Message;
import com.privacystar.core.data.model.MessageFields;
import com.privacystar.core.util.CampaignUtil;
import io.realm.Realm;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.Calendar;
import java.util.Date;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/MessageRealm.class */
public class MessageRealm {
    public static long countUnreadMessages(Realm realm) {
        return realm.where(Message.class).equalTo("read", (Boolean) false).count();
    }

    public static void delete(Realm realm, final String str) {
        realm.executeTransaction(new Realm.Transaction(str) { // from class: com.privacystar.core.data.model.helper.MessageRealm$$Lambda$6
            private final String arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                realm2.where(Message.class).equalTo("batchId", this.arg$1).findAll().deleteAllFromRealm();
            }
        });
    }

    public static void deleteExpiredMessages(Realm realm) {
        final Date date = new Date();
        realm.executeTransaction(new Realm.Transaction(date) { // from class: com.privacystar.core.data.model.helper.MessageRealm$$Lambda$7
            private final Date arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = date;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                realm2.where(Message.class).lessThan("expiration", this.arg$1).findAll().deleteAllFromRealm();
            }
        });
    }

    private static Date getExpiration(int i) {
        Calendar instance = Calendar.getInstance();
        instance.add(5, i);
        return instance.getTime();
    }

    private static Date getExpiration(int i, Date date) {
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        instance.add(5, i);
        return instance.getTime();
    }

    public static Message getMessage(Realm realm, String str) {
        return (Message) realm.where(Message.class).equalTo("batchId", str).findFirst();
    }

    public static RealmResults<Message> getMessages(Realm realm) {
        return realm.where(Message.class).findAll().sort(MessageFields.RECEIVED_DATE);
    }

    public static RealmResults<Message> getMessagesAsync(Realm realm) {
        return realm.where(Message.class).findAllAsync().sort(MessageFields.RECEIVED_DATE, Sort.DESCENDING);
    }

    public static void initializeDebugMessages(Realm realm) {
        realm.executeTransaction(MessageRealm$$Lambda$0.$instance);
        storeNewMessage(realm, "1", "4d65737361676520626f64792031", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, "2", "4d65737361676520626f64792032", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, CampaignUtil.CAMPAIGN_ACTION_DASHBOARD, "4d65737361676520626f64792033", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, CampaignUtil.CAMPAIGN_ACTION_WALKTHROUGH, "4d65737361676520626f64792034", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, CampaignUtil.CAMPAIGN_ACTION_PROTECTION, "4d65737361676520626f64792035", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, CampaignUtil.CAMPAIGN_ACTION_STATE, "4d65737361676520626f64792036", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, CampaignUtil.CAMPAIGN_ACTION_BLOCK, "4d65737361676520626f64792037", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, CampaignUtil.CAMPAIGN_ACTION_APPROVED, "4d65737361676520626f64792038", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, CampaignUtil.CAMPAIGN_ACTION_INBOX, "4d65737361676520626f64792039", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, CampaignUtil.CAMPAIGN_ACTION_INBOX_RATE, "4d65737361676520626f64792040", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, "11", "4d65737361676520626f64792041", CampaignUtil.FIELD_TITLE, "subtitle");
        storeNewMessage(realm, "12", "4d65737361676520626f64792042", CampaignUtil.FIELD_TITLE, "subtitle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$markMessageRead$5$MessageRealm(String str, boolean z, Realm realm) {
        Message message = (Message) realm.where(Message.class).equalTo("batchId", str).findFirst();
        if (message != null) {
            message.setRead(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$storeNewExpiringMessage$2$MessageRealm(String str, String str2, String str3, String str4, int i, Realm realm) {
        Message message = (Message) realm.createObject(Message.class, str);
        message.setMessageBody(str2);
        message.setMessageTitle(str3);
        message.setMessageSubtitle(str4);
        message.setReceivedDate(new Date());
        message.setExpiration(getExpiration(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$storeNewMessage$1$MessageRealm(String str, String str2, String str3, String str4, Realm realm) {
        Message message = (Message) realm.createObject(Message.class, str);
        message.setMessageBody(str2);
        message.setMessageTitle(str3);
        message.setMessageSubtitle(str4);
        message.setReceivedDate(new Date());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$updateExpiringMessage$3$MessageRealm(String str, String str2, String str3, String str4, int i, Realm realm) {
        Message message = (Message) realm.where(Message.class).equalTo("batchId", str).findFirst();
        message.setMessageBody(str2);
        message.setMessageTitle(str3);
        message.setMessageSubtitle(str4);
        message.setReceivedDate(new Date());
        message.setExpiration(getExpiration(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$updateMessage$4$MessageRealm(String str, String str2, String str3, String str4, Realm realm) {
        Message message = (Message) realm.where(Message.class).equalTo("batchId", str).findFirst();
        message.setMessageBody(str2);
        message.setMessageTitle(str3);
        message.setMessageSubtitle(str4);
        message.setReceivedDate(new Date());
    }

    public static void markMessageRead(Realm realm, String str) {
        markMessageRead(realm, str, true);
    }

    public static void markMessageRead(Realm realm, final String str, final boolean z) {
        realm.executeTransaction(new Realm.Transaction(str, z) { // from class: com.privacystar.core.data.model.helper.MessageRealm$$Lambda$5
            private final String arg$1;
            private final boolean arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
                this.arg$2 = z;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                MessageRealm.lambda$markMessageRead$5$MessageRealm(this.arg$1, this.arg$2, realm2);
            }
        });
    }

    public static void markMessageUnread(Realm realm, String str) {
        markMessageRead(realm, str, false);
    }

    public static void storeExpiringMessage(Realm realm, String str, String str2, String str3, String str4, int i) {
        boolean z = 0 < realm.where(Message.class).equalTo("batchId", str).count();
        Timber.m37d("message \"%s\" already exists = %b", str, Boolean.valueOf(z));
        if (z) {
            updateExpiringMessage(realm, str, str2, str3, str4, i);
        } else {
            storeNewExpiringMessage(realm, str, str2, str3, str4, i);
        }
    }

    public static void storeMessage(Realm realm, String str, String str2, String str3, String str4) {
        if (0 < realm.where(Message.class).equalTo("batchId", str).count()) {
            updateMessage(realm, str, str2, str3, str4);
        } else {
            storeNewMessage(realm, str, str2, str3, str4);
        }
    }

    public static void storeNewExpiringMessage(Realm realm, final String str, final String str2, final String str3, final String str4, final int i) {
        realm.executeTransaction(new Realm.Transaction(str, str2, str3, str4, i) { // from class: com.privacystar.core.data.model.helper.MessageRealm$$Lambda$2
            private final String arg$1;
            private final String arg$2;
            private final String arg$3;
            private final String arg$4;
            private final int arg$5;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
                this.arg$2 = str2;
                this.arg$3 = str3;
                this.arg$4 = str4;
                this.arg$5 = i;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                MessageRealm.lambda$storeNewExpiringMessage$2$MessageRealm(this.arg$1, this.arg$2, this.arg$3, this.arg$4, this.arg$5, realm2);
            }
        });
    }

    private static void storeNewMessage(Realm realm, final String str, final String str2, final String str3, final String str4) {
        realm.executeTransaction(new Realm.Transaction(str, str2, str3, str4) { // from class: com.privacystar.core.data.model.helper.MessageRealm$$Lambda$1
            private final String arg$1;
            private final String arg$2;
            private final String arg$3;
            private final String arg$4;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
                this.arg$2 = str2;
                this.arg$3 = str3;
                this.arg$4 = str4;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                MessageRealm.lambda$storeNewMessage$1$MessageRealm(this.arg$1, this.arg$2, this.arg$3, this.arg$4, realm2);
            }
        });
    }

    public static void updateExpiringMessage(Realm realm, final String str, final String str2, final String str3, final String str4, final int i) {
        realm.executeTransaction(new Realm.Transaction(str, str2, str3, str4, i) { // from class: com.privacystar.core.data.model.helper.MessageRealm$$Lambda$3
            private final String arg$1;
            private final String arg$2;
            private final String arg$3;
            private final String arg$4;
            private final int arg$5;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
                this.arg$2 = str2;
                this.arg$3 = str3;
                this.arg$4 = str4;
                this.arg$5 = i;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                MessageRealm.lambda$updateExpiringMessage$3$MessageRealm(this.arg$1, this.arg$2, this.arg$3, this.arg$4, this.arg$5, realm2);
            }
        });
    }

    private static void updateMessage(Realm realm, final String str, final String str2, final String str3, final String str4) {
        realm.executeTransaction(new Realm.Transaction(str, str2, str3, str4) { // from class: com.privacystar.core.data.model.helper.MessageRealm$$Lambda$4
            private final String arg$1;
            private final String arg$2;
            private final String arg$3;
            private final String arg$4;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
                this.arg$2 = str2;
                this.arg$3 = str3;
                this.arg$4 = str4;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                MessageRealm.lambda$updateMessage$4$MessageRealm(this.arg$1, this.arg$2, this.arg$3, this.arg$4, realm2);
            }
        });
    }
}
