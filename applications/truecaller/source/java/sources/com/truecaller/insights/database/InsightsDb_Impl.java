package com.truecaller.insights.database;

import android.content.Context;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25651h;
import p1727n3.p1751c0.C25670o;
import p1727n3.p1751c0.C25683x;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25654c;
import p1727n3.p1751c0.p1754h0.C25656e;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p526c.p528d.AbstractC9788a;
import p193e.p194a.p437c.p526c.p528d.AbstractC9789a0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9793c;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9804e;
import p193e.p194a.p437c.p526c.p528d.AbstractC9845f0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9846g;
import p193e.p194a.p437c.p526c.p528d.AbstractC9868h0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9869i;
import p193e.p194a.p437c.p526c.p528d.AbstractC9893j0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9894k;
import p193e.p194a.p437c.p526c.p528d.AbstractC9920m;
import p193e.p194a.p437c.p526c.p528d.AbstractC9921m0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9929o0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9930p;
import p193e.p194a.p437c.p526c.p528d.AbstractC9945s;
import p193e.p194a.p437c.p526c.p528d.AbstractC9956u;
import p193e.p194a.p437c.p526c.p528d.AbstractC9967w;
import p193e.p194a.p437c.p526c.p528d.AbstractC9972y;
import p193e.p194a.p437c.p526c.p528d.C9790b;
import p193e.p194a.p437c.p526c.p528d.C9794c0;
import p193e.p194a.p437c.p526c.p528d.C9796d;
import p193e.p194a.p437c.p526c.p528d.C9805e0;
import p193e.p194a.p437c.p526c.p528d.C9843f;
import p193e.p194a.p437c.p526c.p528d.C9847g0;
import p193e.p194a.p437c.p526c.p528d.C9858h;
import p193e.p194a.p437c.p526c.p528d.C9870i0;
import p193e.p194a.p437c.p526c.p528d.C9877j;
import p193e.p194a.p437c.p526c.p528d.C9895k0;
import p193e.p194a.p437c.p526c.p528d.C9915l;
import p193e.p194a.p437c.p526c.p528d.C9922n;
import p193e.p194a.p437c.p526c.p528d.C9924n0;
import p193e.p194a.p437c.p526c.p528d.C9931p0;
import p193e.p194a.p437c.p526c.p528d.C9935q;
import p193e.p194a.p437c.p526c.p528d.C9946t;
import p193e.p194a.p437c.p526c.p528d.C9957v;
import p193e.p194a.p437c.p526c.p528d.C9968x;
import p193e.p194a.p437c.p526c.p528d.C9973z;
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/database/InsightsDb_Impl.class */
public final class InsightsDb_Impl extends InsightsDb {

    /* renamed from: a */
    public volatile AbstractC9800d0 f12502a;

    /* renamed from: b */
    public volatile AbstractC9921m0 f12503b;

    /* renamed from: c */
    public volatile AbstractC9945s f12504c;

    /* renamed from: d */
    public volatile AbstractC9793c f12505d;

    /* renamed from: e */
    public volatile AbstractC9788a f12506e;

    /* renamed from: f */
    public volatile AbstractC9804e f12507f;

    /* renamed from: g */
    public volatile AbstractC9869i f12508g;

    /* renamed from: h */
    public volatile AbstractC9894k f12509h;

    /* renamed from: i */
    public volatile AbstractC9930p f12510i;

    /* renamed from: j */
    public volatile AbstractC9920m f12511j;

    /* renamed from: k */
    public volatile AbstractC9972y f12512k;

    /* renamed from: l */
    public volatile AbstractC9846g f12513l;

    /* renamed from: m */
    public volatile AbstractC9789a0 f12514m;

    /* renamed from: n */
    public volatile AbstractC9956u f12515n;

    /* renamed from: o */
    public volatile AbstractC9845f0 f12516o;

    /* renamed from: p */
    public volatile AbstractC9893j0 f12517p;

    /* renamed from: q */
    public volatile AbstractC9929o0 f12518q;

    /* renamed from: r */
    public volatile AbstractC9967w f12519r;

    /* renamed from: s */
    public volatile AbstractC9868h0 f12520s;

    /* renamed from: com.truecaller.insights.database.InsightsDb_Impl$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/database/InsightsDb_Impl$a.class */
    public class C4056a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4056a(int i) {
            super(i);
            InsightsDb_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `parsed_data_object_table` (`messageID` INTEGER NOT NULL, `d` TEXT NOT NULL, `k` TEXT NOT NULL, `p` TEXT NOT NULL, `c` TEXT NOT NULL, `o` TEXT NOT NULL, `f` TEXT NOT NULL, `g` TEXT NOT NULL, `s` TEXT NOT NULL, `account_model_id` INTEGER, `val1` TEXT NOT NULL, `val2` TEXT NOT NULL, `val3` TEXT NOT NULL, `val4` TEXT NOT NULL, `val5` TEXT NOT NULL, `datetime` TEXT NOT NULL, `address` TEXT NOT NULL, `date` TEXT NOT NULL, `msg_date` INTEGER NOT NULL, `dff_val1` TEXT NOT NULL, `dff_val2` TEXT NOT NULL, `dff_val3` TEXT NOT NULL, `dff_val4` TEXT NOT NULL, `dff_val5` TEXT NOT NULL, `active` INTEGER NOT NULL, `state` TEXT NOT NULL, `synthetic_record_id` INTEGER, `deleted` INTEGER NOT NULL, `created_at` INTEGER NOT NULL, `spam_category` INTEGER NOT NULL, PRIMARY KEY(`messageID`), FOREIGN KEY(`account_model_id`) REFERENCES `account_model_table`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )", "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_d` ON `parsed_data_object_table` (`d`)", "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_account_model_id` ON `parsed_data_object_table` (`account_model_id`)", "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_synthetic_record_id` ON `parsed_data_object_table` (`synthetic_record_id`)");
            C22128a.m8561v0(abstractC26147b, "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_msg_date` ON `parsed_data_object_table` (`msg_date`)", "CREATE TABLE IF NOT EXISTS `sms_backup_table` (`messageID` INTEGER NOT NULL, `address` TEXT NOT NULL, `message` TEXT NOT NULL, `date` INTEGER NOT NULL, `transport` INTEGER NOT NULL, `parseFailed` INTEGER NOT NULL, `errorMessage` TEXT NOT NULL, `retryCount` INTEGER NOT NULL, `deleted` INTEGER NOT NULL, `created_at` INTEGER NOT NULL, `updateCategory` TEXT, `classified_by` INTEGER NOT NULL, `conversationId` INTEGER NOT NULL, `spam_category` INTEGER NOT NULL, `confidence_score` REAL NOT NULL, `no_of_words` INTEGER NOT NULL, PRIMARY KEY(`messageID`))", "CREATE INDEX IF NOT EXISTS `index_sms_backup_table_address` ON `sms_backup_table` (`address`)", "CREATE TABLE IF NOT EXISTS `account_model_table` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `address` TEXT, `account_type` TEXT, `account_number` TEXT, `balance` REAL NOT NULL, `active` INTEGER NOT NULL, `record_count` INTEGER NOT NULL, `update_stamp` INTEGER, `root_account` INTEGER NOT NULL, `normalized_name` TEXT)");
            C22128a.m8561v0(abstractC26147b, "CREATE INDEX IF NOT EXISTS `index_account_model_table_address_account_number_id` ON `account_model_table` (`address`, `account_number`, `id`)", "CREATE INDEX IF NOT EXISTS `index_account_model_table_address_account_number` ON `account_model_table` (`address`, `account_number`)", "CREATE TABLE IF NOT EXISTS `account_relation_model` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `from_account` INTEGER, `to_account` INTEGER, `transaction_count` INTEGER NOT NULL, `created_at` INTEGER, FOREIGN KEY(`to_account`) REFERENCES `account_model_table`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION , FOREIGN KEY(`from_account`) REFERENCES `account_model_table`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )", "CREATE INDEX IF NOT EXISTS `index_account_relation_model_from_account` ON `account_relation_model` (`from_account`)");
            C22128a.m8561v0(abstractC26147b, "CREATE INDEX IF NOT EXISTS `index_account_relation_model_to_account` ON `account_relation_model` (`to_account`)", "CREATE TABLE IF NOT EXISTS `account_mapping_rule_model` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `to_account` INTEGER, `from_account` INTEGER, `from_address` TEXT, `to_address` TEXT, `created_at` INTEGER, FOREIGN KEY(`to_account`) REFERENCES `account_model_table`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION , FOREIGN KEY(`from_account`) REFERENCES `account_model_table`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )", "CREATE INDEX IF NOT EXISTS `index_account_mapping_rule_model_from_address_to_address` ON `account_mapping_rule_model` (`from_address`, `to_address`)", "CREATE INDEX IF NOT EXISTS `index_account_mapping_rule_model_from_account` ON `account_mapping_rule_model` (`from_account`)");
            C22128a.m8561v0(abstractC26147b, "CREATE INDEX IF NOT EXISTS `index_account_mapping_rule_model_to_account` ON `account_mapping_rule_model` (`to_account`)", "CREATE TABLE IF NOT EXISTS `link_prune_table` (`parent_id` INTEGER NOT NULL, `child_id` INTEGER NOT NULL, `link_type` TEXT NOT NULL, `created_at` INTEGER NOT NULL, PRIMARY KEY(`parent_id`, `child_id`), FOREIGN KEY(`parent_id`) REFERENCES `parsed_data_object_table`(`messageID`) ON UPDATE NO ACTION ON DELETE NO ACTION , FOREIGN KEY(`child_id`) REFERENCES `parsed_data_object_table`(`messageID`) ON UPDATE NO ACTION ON DELETE NO ACTION )", "CREATE INDEX IF NOT EXISTS `index_link_prune_table_parent_id` ON `link_prune_table` (`parent_id`)", "CREATE INDEX IF NOT EXISTS `index_link_prune_table_child_id` ON `link_prune_table` (`child_id`)");
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `states_table` (`owner` TEXT NOT NULL, `last_updated_at` INTEGER NOT NULL, `last_updated_data` TEXT, `created_at` INTEGER NOT NULL, PRIMARY KEY(`owner`))", "CREATE TABLE IF NOT EXISTS `analytics_events` (`feature` TEXT NOT NULL, `event_category` TEXT NOT NULL, `event_info` TEXT NOT NULL, `context` TEXT NOT NULL, `action_type` TEXT NOT NULL, `action_info` TEXT NOT NULL, `event_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `consumed` INTEGER NOT NULL)", "CREATE TABLE IF NOT EXISTS `analytics_property_maps` (`parent_event_id` INTEGER NOT NULL, `key` TEXT NOT NULL, `value` TEXT NOT NULL, `property_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, FOREIGN KEY(`parent_event_id`) REFERENCES `analytics_events`(`event_id`) ON UPDATE NO ACTION ON DELETE NO ACTION )", "CREATE INDEX IF NOT EXISTS `index_analytics_property_maps_parent_event_id_event_id` ON `analytics_property_maps` (`parent_event_id`)");
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `insights_reminders` (`uniqueRefId` TEXT NOT NULL, `vendorName` TEXT NOT NULL, `due_date` INTEGER NOT NULL, `generated_date` INTEGER NOT NULL, `image_url` TEXT, `times_notified` INTEGER NOT NULL, `is_dismissed` INTEGER NOT NULL, `category` TEXT NOT NULL, `meta` TEXT, `created_at` INTEGER NOT NULL, `is_notification_pending` INTEGER NOT NULL, PRIMARY KEY(`uniqueRefId`))", "CREATE INDEX IF NOT EXISTS `index_insights_reminders_uniqueRefId` ON `insights_reminders` (`uniqueRefId`)", "CREATE INDEX IF NOT EXISTS `index_insights_reminders_vendorName` ON `insights_reminders` (`vendorName`)", "CREATE INDEX IF NOT EXISTS `index_insights_reminders_category` ON `insights_reminders` (`category`)");
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `action_state` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `message_id` INTEGER NOT NULL, `domain` TEXT NOT NULL, `state` INTEGER NOT NULL, `origin` TEXT NOT NULL, `created_at` INTEGER NOT NULL, `last_updated_at` INTEGER NOT NULL, `extra` TEXT NOT NULL)", "CREATE UNIQUE INDEX IF NOT EXISTS `index_action_state_message_id_origin` ON `action_state` (`message_id`, `origin`)", "CREATE TABLE IF NOT EXISTS `categorizer_probability` (`word` TEXT NOT NULL, `probHam` REAL, `probSpam` REAL, `tfHam` REAL, `tfSpam` REAL, `idfHam` REAL, `idfSpam` REAL, PRIMARY KEY(`word`))", "CREATE VIRTUAL TABLE IF NOT EXISTS `sms_message_fts` USING FTS4(`message` TEXT NOT NULL, `address` TEXT NOT NULL, content=`sms_backup_table`)");
            C22128a.m8561v0(abstractC26147b, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_BEFORE_UPDATE BEFORE UPDATE ON `sms_backup_table` BEGIN DELETE FROM `sms_message_fts` WHERE `docid`=OLD.`rowid`; END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_BEFORE_DELETE BEFORE DELETE ON `sms_backup_table` BEGIN DELETE FROM `sms_message_fts` WHERE `docid`=OLD.`rowid`; END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_AFTER_UPDATE AFTER UPDATE ON `sms_backup_table` BEGIN INSERT INTO `sms_message_fts`(`docid`, `message`, `address`) VALUES (NEW.`rowid`, NEW.`message`, NEW.`address`); END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_AFTER_INSERT AFTER INSERT ON `sms_backup_table` BEGIN INSERT INTO `sms_message_fts`(`docid`, `message`, `address`) VALUES (NEW.`rowid`, NEW.`message`, NEW.`address`); END");
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `reclassified_message` (`message_body` TEXT NOT NULL, `from_category` TEXT NOT NULL, `to_category` TEXT NOT NULL, `model_version` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL)", "CREATE VIRTUAL TABLE IF NOT EXISTS `pdo_fts` USING FTS4(`d` TEXT NOT NULL, `k` TEXT NOT NULL, `p` TEXT NOT NULL, `c` TEXT NOT NULL, `o` TEXT NOT NULL, `f` TEXT NOT NULL, `g` TEXT NOT NULL, `s` TEXT NOT NULL, `val1` TEXT NOT NULL, `val2` TEXT NOT NULL, `val3` TEXT NOT NULL, `val4` TEXT NOT NULL, `val5` TEXT NOT NULL, `address` TEXT NOT NULL, `dff_val1` TEXT NOT NULL, `dff_val2` TEXT NOT NULL, `dff_val3` TEXT NOT NULL, `dff_val4` TEXT NOT NULL, `dff_val5` TEXT NOT NULL, content=`parsed_data_object_table`)", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_BEFORE_UPDATE BEFORE UPDATE ON `parsed_data_object_table` BEGIN DELETE FROM `pdo_fts` WHERE `docid`=OLD.`rowid`; END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_BEFORE_DELETE BEFORE DELETE ON `parsed_data_object_table` BEGIN DELETE FROM `pdo_fts` WHERE `docid`=OLD.`rowid`; END");
            C22128a.m8561v0(abstractC26147b, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_AFTER_UPDATE AFTER UPDATE ON `parsed_data_object_table` BEGIN INSERT INTO `pdo_fts`(`docid`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, `val1`, `val2`, `val3`, `val4`, `val5`, `address`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`) VALUES (NEW.`rowid`, NEW.`d`, NEW.`k`, NEW.`p`, NEW.`c`, NEW.`o`, NEW.`f`, NEW.`g`, NEW.`s`, NEW.`val1`, NEW.`val2`, NEW.`val3`, NEW.`val4`, NEW.`val5`, NEW.`address`, NEW.`dff_val1`, NEW.`dff_val2`, NEW.`dff_val3`, NEW.`dff_val4`, NEW.`dff_val5`); END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_AFTER_INSERT AFTER INSERT ON `parsed_data_object_table` BEGIN INSERT INTO `pdo_fts`(`docid`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, `val1`, `val2`, `val3`, `val4`, `val5`, `address`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`) VALUES (NEW.`rowid`, NEW.`d`, NEW.`k`, NEW.`p`, NEW.`c`, NEW.`o`, NEW.`f`, NEW.`g`, NEW.`s`, NEW.`val1`, NEW.`val2`, NEW.`val3`, NEW.`val4`, NEW.`val5`, NEW.`address`, NEW.`dff_val1`, NEW.`dff_val2`, NEW.`dff_val3`, NEW.`dff_val4`, NEW.`dff_val5`); END", "CREATE TABLE IF NOT EXISTS `feedback` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `feedback_type` TEXT NOT NULL, `feedback_value` TEXT NOT NULL, `entity_id` INTEGER NOT NULL, `sender` TEXT, `body` TEXT NOT NULL, `parser_output` TEXT, `categorizer_output` TEXT, `parent_id` INTEGER NOT NULL)", "CREATE INDEX IF NOT EXISTS `index_entity_id` ON `feedback` (`entity_id`)");
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `sender_info` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sender` TEXT NOT NULL, `sender_name` TEXT, `sender_type` TEXT, `smart_features_status` TEXT, `grammars_enabled` TEXT NOT NULL, `source_type` TEXT NOT NULL, `country_code` TEXT)", "CREATE INDEX IF NOT EXISTS `index_sender` ON `sender_info` (`sender`)", "CREATE TABLE IF NOT EXISTS `aggregate_analytics_events` (`feature` TEXT NOT NULL, `event_category` TEXT NOT NULL, `event_info` TEXT NOT NULL, `context` TEXT NOT NULL, `action_type` TEXT NOT NULL, `action_info` TEXT NOT NULL, `event_date` INTEGER NOT NULL, `counts` INTEGER NOT NULL, `agg_event_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `consumed` INTEGER NOT NULL)", "CREATE TABLE IF NOT EXISTS `sender_resolution_table` (`sender` TEXT NOT NULL, `sender_name` TEXT, `sender_icon_uri` TEXT, `created_at` INTEGER NOT NULL, `last_updated_at` INTEGER NOT NULL, PRIMARY KEY(`sender`))");
            abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_sender_name` ON `sender_resolution_table` (`sender_name`)");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'bdd3ef8f4b0524f2c4c637b896d776da')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "DROP TABLE IF EXISTS `parsed_data_object_table`", "DROP TABLE IF EXISTS `sms_backup_table`", "DROP TABLE IF EXISTS `account_model_table`", "DROP TABLE IF EXISTS `account_relation_model`");
            C22128a.m8561v0(abstractC26147b, "DROP TABLE IF EXISTS `account_mapping_rule_model`", "DROP TABLE IF EXISTS `link_prune_table`", "DROP TABLE IF EXISTS `states_table`", "DROP TABLE IF EXISTS `analytics_events`");
            C22128a.m8561v0(abstractC26147b, "DROP TABLE IF EXISTS `analytics_property_maps`", "DROP TABLE IF EXISTS `insights_reminders`", "DROP TABLE IF EXISTS `action_state`", "DROP TABLE IF EXISTS `categorizer_probability`");
            C22128a.m8561v0(abstractC26147b, "DROP TABLE IF EXISTS `sms_message_fts`", "DROP TABLE IF EXISTS `reclassified_message`", "DROP TABLE IF EXISTS `pdo_fts`", "DROP TABLE IF EXISTS `feedback`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `sender_info`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `aggregate_analytics_events`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `sender_resolution_table`");
            List<AbstractC25677q.AbstractC25679b> list = InsightsDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    InsightsDb_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = InsightsDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    InsightsDb_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            InsightsDb_Impl.this.mDatabase = abstractC26147b;
            abstractC26147b.mo2668S0("PRAGMA foreign_keys = ON");
            InsightsDb_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = InsightsDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    InsightsDb_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onPostMigrate(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_BEFORE_UPDATE BEFORE UPDATE ON `sms_backup_table` BEGIN DELETE FROM `sms_message_fts` WHERE `docid`=OLD.`rowid`; END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_BEFORE_DELETE BEFORE DELETE ON `sms_backup_table` BEGIN DELETE FROM `sms_message_fts` WHERE `docid`=OLD.`rowid`; END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_AFTER_UPDATE AFTER UPDATE ON `sms_backup_table` BEGIN INSERT INTO `sms_message_fts`(`docid`, `message`, `address`) VALUES (NEW.`rowid`, NEW.`message`, NEW.`address`); END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_AFTER_INSERT AFTER INSERT ON `sms_backup_table` BEGIN INSERT INTO `sms_message_fts`(`docid`, `message`, `address`) VALUES (NEW.`rowid`, NEW.`message`, NEW.`address`); END");
            C22128a.m8561v0(abstractC26147b, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_BEFORE_UPDATE BEFORE UPDATE ON `parsed_data_object_table` BEGIN DELETE FROM `pdo_fts` WHERE `docid`=OLD.`rowid`; END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_BEFORE_DELETE BEFORE DELETE ON `parsed_data_object_table` BEGIN DELETE FROM `pdo_fts` WHERE `docid`=OLD.`rowid`; END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_AFTER_UPDATE AFTER UPDATE ON `parsed_data_object_table` BEGIN INSERT INTO `pdo_fts`(`docid`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, `val1`, `val2`, `val3`, `val4`, `val5`, `address`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`) VALUES (NEW.`rowid`, NEW.`d`, NEW.`k`, NEW.`p`, NEW.`c`, NEW.`o`, NEW.`f`, NEW.`g`, NEW.`s`, NEW.`val1`, NEW.`val2`, NEW.`val3`, NEW.`val4`, NEW.`val5`, NEW.`address`, NEW.`dff_val1`, NEW.`dff_val2`, NEW.`dff_val3`, NEW.`dff_val4`, NEW.`dff_val5`); END", "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_AFTER_INSERT AFTER INSERT ON `parsed_data_object_table` BEGIN INSERT INTO `pdo_fts`(`docid`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, `val1`, `val2`, `val3`, `val4`, `val5`, `address`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`) VALUES (NEW.`rowid`, NEW.`d`, NEW.`k`, NEW.`p`, NEW.`c`, NEW.`o`, NEW.`f`, NEW.`g`, NEW.`s`, NEW.`val1`, NEW.`val2`, NEW.`val3`, NEW.`val4`, NEW.`val5`, NEW.`address`, NEW.`dff_val1`, NEW.`dff_val2`, NEW.`dff_val3`, NEW.`dff_val4`, NEW.`dff_val5`); END");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onPreMigrate(AbstractC26147b abstractC26147b) {
            C25653b.m3091a(abstractC26147b);
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public C25683x.C25685b onValidateSchema(AbstractC26147b abstractC26147b) {
            HashMap hashMap = new HashMap(30);
            hashMap.put("messageID", new C25656e.C25657a("messageID", "INTEGER", true, 1, null, 1));
            hashMap.put("d", new C25656e.C25657a("d", "TEXT", true, 0, null, 1));
            hashMap.put("k", new C25656e.C25657a("k", "TEXT", true, 0, null, 1));
            hashMap.put("p", new C25656e.C25657a("p", "TEXT", true, 0, null, 1));
            hashMap.put(AbstractC2405c.f7629a, new C25656e.C25657a(AbstractC2405c.f7629a, "TEXT", true, 0, null, 1));
            hashMap.put("o", new C25656e.C25657a("o", "TEXT", true, 0, null, 1));
            hashMap.put("f", new C25656e.C25657a("f", "TEXT", true, 0, null, 1));
            hashMap.put("g", new C25656e.C25657a("g", "TEXT", true, 0, null, 1));
            hashMap.put("s", new C25656e.C25657a("s", "TEXT", true, 0, null, 1));
            hashMap.put("account_model_id", new C25656e.C25657a("account_model_id", "INTEGER", false, 0, null, 1));
            hashMap.put("val1", new C25656e.C25657a("val1", "TEXT", true, 0, null, 1));
            hashMap.put("val2", new C25656e.C25657a("val2", "TEXT", true, 0, null, 1));
            hashMap.put("val3", new C25656e.C25657a("val3", "TEXT", true, 0, null, 1));
            hashMap.put("val4", new C25656e.C25657a("val4", "TEXT", true, 0, null, 1));
            hashMap.put("val5", new C25656e.C25657a("val5", "TEXT", true, 0, null, 1));
            hashMap.put("datetime", new C25656e.C25657a("datetime", "TEXT", true, 0, null, 1));
            hashMap.put("address", new C25656e.C25657a("address", "TEXT", true, 0, null, 1));
            hashMap.put("date", new C25656e.C25657a("date", "TEXT", true, 0, null, 1));
            hashMap.put("msg_date", new C25656e.C25657a("msg_date", "INTEGER", true, 0, null, 1));
            hashMap.put("dff_val1", new C25656e.C25657a("dff_val1", "TEXT", true, 0, null, 1));
            hashMap.put("dff_val2", new C25656e.C25657a("dff_val2", "TEXT", true, 0, null, 1));
            hashMap.put("dff_val3", new C25656e.C25657a("dff_val3", "TEXT", true, 0, null, 1));
            hashMap.put("dff_val4", new C25656e.C25657a("dff_val4", "TEXT", true, 0, null, 1));
            hashMap.put("dff_val5", new C25656e.C25657a("dff_val5", "TEXT", true, 0, null, 1));
            hashMap.put("active", new C25656e.C25657a("active", "INTEGER", true, 0, null, 1));
            hashMap.put("state", new C25656e.C25657a("state", "TEXT", true, 0, null, 1));
            hashMap.put("synthetic_record_id", new C25656e.C25657a("synthetic_record_id", "INTEGER", false, 0, null, 1));
            hashMap.put("deleted", new C25656e.C25657a("deleted", "INTEGER", true, 0, null, 1));
            hashMap.put("created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1));
            HashSet m8658W = C22128a.m8658W(hashMap, "spam_category", new C25656e.C25657a("spam_category", "INTEGER", true, 0, null, 1), 1);
            m8658W.add(new C25656e.C25658b("account_model_table", "NO ACTION", "NO ACTION", Arrays.asList("account_model_id"), Arrays.asList("id")));
            HashSet hashSet = new HashSet(4);
            hashSet.add(new C25656e.C25660d("index_parsed_data_object_table_d", false, Arrays.asList("d")));
            hashSet.add(new C25656e.C25660d("index_parsed_data_object_table_account_model_id", false, Arrays.asList("account_model_id")));
            hashSet.add(new C25656e.C25660d("index_parsed_data_object_table_synthetic_record_id", false, Arrays.asList("synthetic_record_id")));
            hashSet.add(new C25656e.C25660d("index_parsed_data_object_table_msg_date", false, Arrays.asList("msg_date")));
            C25656e c25656e = new C25656e("parsed_data_object_table", hashMap, m8658W, hashSet);
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "parsed_data_object_table");
            if (!c25656e.equals(m3085a)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("parsed_data_object_table(com.truecaller.insights.models.pdo.ParsedDataObject).\n Expected:\n", c25656e, "\n Found:\n", m3085a));
            }
            HashMap hashMap2 = new HashMap(16);
            hashMap2.put("messageID", new C25656e.C25657a("messageID", "INTEGER", true, 1, null, 1));
            hashMap2.put("address", new C25656e.C25657a("address", "TEXT", true, 0, null, 1));
            hashMap2.put("message", new C25656e.C25657a("message", "TEXT", true, 0, null, 1));
            hashMap2.put("date", new C25656e.C25657a("date", "INTEGER", true, 0, null, 1));
            hashMap2.put("transport", new C25656e.C25657a("transport", "INTEGER", true, 0, null, 1));
            hashMap2.put("parseFailed", new C25656e.C25657a("parseFailed", "INTEGER", true, 0, null, 1));
            hashMap2.put("errorMessage", new C25656e.C25657a("errorMessage", "TEXT", true, 0, null, 1));
            hashMap2.put("retryCount", new C25656e.C25657a("retryCount", "INTEGER", true, 0, null, 1));
            hashMap2.put("deleted", new C25656e.C25657a("deleted", "INTEGER", true, 0, null, 1));
            hashMap2.put("created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1));
            hashMap2.put("updateCategory", new C25656e.C25657a("updateCategory", "TEXT", false, 0, null, 1));
            hashMap2.put("classified_by", new C25656e.C25657a("classified_by", "INTEGER", true, 0, null, 1));
            hashMap2.put("conversationId", new C25656e.C25657a("conversationId", "INTEGER", true, 0, null, 1));
            hashMap2.put("spam_category", new C25656e.C25657a("spam_category", "INTEGER", true, 0, null, 1));
            hashMap2.put("confidence_score", new C25656e.C25657a("confidence_score", "REAL", true, 0, null, 1));
            HashSet m8658W2 = C22128a.m8658W(hashMap2, "no_of_words", new C25656e.C25657a("no_of_words", "INTEGER", true, 0, null, 1), 0);
            HashSet hashSet2 = new HashSet(1);
            hashSet2.add(new C25656e.C25660d("index_sms_backup_table_address", false, Arrays.asList("address")));
            C25656e c25656e2 = new C25656e("sms_backup_table", hashMap2, m8658W2, hashSet2);
            C25656e m3085a2 = C25656e.m3085a(abstractC26147b, "sms_backup_table");
            if (!c25656e2.equals(m3085a2)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("sms_backup_table(com.truecaller.insights.models.pdo.SmsBackup).\n Expected:\n", c25656e2, "\n Found:\n", m3085a2));
            }
            HashMap hashMap3 = new HashMap(11);
            hashMap3.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap3.put("created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1));
            hashMap3.put("address", new C25656e.C25657a("address", "TEXT", false, 0, null, 1));
            hashMap3.put("account_type", new C25656e.C25657a("account_type", "TEXT", false, 0, null, 1));
            hashMap3.put("account_number", new C25656e.C25657a("account_number", "TEXT", false, 0, null, 1));
            hashMap3.put("balance", new C25656e.C25657a("balance", "REAL", true, 0, null, 1));
            hashMap3.put("active", new C25656e.C25657a("active", "INTEGER", true, 0, null, 1));
            hashMap3.put("record_count", new C25656e.C25657a("record_count", "INTEGER", true, 0, null, 1));
            hashMap3.put("update_stamp", new C25656e.C25657a("update_stamp", "INTEGER", false, 0, null, 1));
            hashMap3.put("root_account", new C25656e.C25657a("root_account", "INTEGER", true, 0, null, 1));
            HashSet m8658W3 = C22128a.m8658W(hashMap3, "normalized_name", new C25656e.C25657a("normalized_name", "TEXT", false, 0, null, 1), 0);
            HashSet hashSet3 = new HashSet(2);
            hashSet3.add(new C25656e.C25660d("index_account_model_table_address_account_number_id", false, Arrays.asList("address", "account_number", "id")));
            hashSet3.add(new C25656e.C25660d("index_account_model_table_address_account_number", false, Arrays.asList("address", "account_number")));
            C25656e c25656e3 = new C25656e("account_model_table", hashMap3, m8658W3, hashSet3);
            C25656e m3085a3 = C25656e.m3085a(abstractC26147b, "account_model_table");
            if (!c25656e3.equals(m3085a3)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("account_model_table(com.truecaller.insights.models.enrichment.accounts.InsightsAccountModel).\n Expected:\n", c25656e3, "\n Found:\n", m3085a3));
            }
            HashMap hashMap4 = new HashMap(5);
            hashMap4.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap4.put("from_account", new C25656e.C25657a("from_account", "INTEGER", false, 0, null, 1));
            hashMap4.put("to_account", new C25656e.C25657a("to_account", "INTEGER", false, 0, null, 1));
            hashMap4.put("transaction_count", new C25656e.C25657a("transaction_count", "INTEGER", true, 0, null, 1));
            HashSet m8658W4 = C22128a.m8658W(hashMap4, "created_at", new C25656e.C25657a("created_at", "INTEGER", false, 0, null, 1), 2);
            m8658W4.add(new C25656e.C25658b("account_model_table", "NO ACTION", "NO ACTION", Arrays.asList("to_account"), Arrays.asList("id")));
            m8658W4.add(new C25656e.C25658b("account_model_table", "NO ACTION", "NO ACTION", Arrays.asList("from_account"), Arrays.asList("id")));
            HashSet hashSet4 = new HashSet(2);
            hashSet4.add(new C25656e.C25660d("index_account_relation_model_from_account", false, Arrays.asList("from_account")));
            hashSet4.add(new C25656e.C25660d("index_account_relation_model_to_account", false, Arrays.asList("to_account")));
            C25656e c25656e4 = new C25656e("account_relation_model", hashMap4, m8658W4, hashSet4);
            C25656e m3085a4 = C25656e.m3085a(abstractC26147b, "account_relation_model");
            if (!c25656e4.equals(m3085a4)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("account_relation_model(com.truecaller.insights.models.enrichment.accounts.InsightsAccountRelationModel).\n Expected:\n", c25656e4, "\n Found:\n", m3085a4));
            }
            HashMap hashMap5 = new HashMap(6);
            hashMap5.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap5.put("to_account", new C25656e.C25657a("to_account", "INTEGER", false, 0, null, 1));
            hashMap5.put("from_account", new C25656e.C25657a("from_account", "INTEGER", false, 0, null, 1));
            hashMap5.put("from_address", new C25656e.C25657a("from_address", "TEXT", false, 0, null, 1));
            hashMap5.put("to_address", new C25656e.C25657a("to_address", "TEXT", false, 0, null, 1));
            HashSet m8658W5 = C22128a.m8658W(hashMap5, "created_at", new C25656e.C25657a("created_at", "INTEGER", false, 0, null, 1), 2);
            m8658W5.add(new C25656e.C25658b("account_model_table", "NO ACTION", "NO ACTION", Arrays.asList("to_account"), Arrays.asList("id")));
            m8658W5.add(new C25656e.C25658b("account_model_table", "NO ACTION", "NO ACTION", Arrays.asList("from_account"), Arrays.asList("id")));
            HashSet hashSet5 = new HashSet(3);
            hashSet5.add(new C25656e.C25660d("index_account_mapping_rule_model_from_address_to_address", false, Arrays.asList("from_address", "to_address")));
            hashSet5.add(new C25656e.C25660d("index_account_mapping_rule_model_from_account", false, Arrays.asList("from_account")));
            hashSet5.add(new C25656e.C25660d("index_account_mapping_rule_model_to_account", false, Arrays.asList("to_account")));
            C25656e c25656e5 = new C25656e("account_mapping_rule_model", hashMap5, m8658W5, hashSet5);
            C25656e m3085a5 = C25656e.m3085a(abstractC26147b, "account_mapping_rule_model");
            if (!c25656e5.equals(m3085a5)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("account_mapping_rule_model(com.truecaller.insights.models.enrichment.accounts.InsightsAccountMappingRuleModel).\n Expected:\n", c25656e5, "\n Found:\n", m3085a5));
            }
            HashMap hashMap6 = new HashMap(4);
            hashMap6.put("parent_id", new C25656e.C25657a("parent_id", "INTEGER", true, 1, null, 1));
            hashMap6.put("child_id", new C25656e.C25657a("child_id", "INTEGER", true, 2, null, 1));
            hashMap6.put("link_type", new C25656e.C25657a("link_type", "TEXT", true, 0, null, 1));
            HashSet m8658W6 = C22128a.m8658W(hashMap6, "created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1), 2);
            m8658W6.add(new C25656e.C25658b("parsed_data_object_table", "NO ACTION", "NO ACTION", Arrays.asList("parent_id"), Arrays.asList("messageID")));
            m8658W6.add(new C25656e.C25658b("parsed_data_object_table", "NO ACTION", "NO ACTION", Arrays.asList("child_id"), Arrays.asList("messageID")));
            HashSet hashSet6 = new HashSet(2);
            hashSet6.add(new C25656e.C25660d("index_link_prune_table_parent_id", false, Arrays.asList("parent_id")));
            hashSet6.add(new C25656e.C25660d("index_link_prune_table_child_id", false, Arrays.asList("child_id")));
            C25656e c25656e6 = new C25656e("link_prune_table", hashMap6, m8658W6, hashSet6);
            C25656e m3085a6 = C25656e.m3085a(abstractC26147b, "link_prune_table");
            if (!c25656e6.equals(m3085a6)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("link_prune_table(com.truecaller.insights.models.enrichment.linking.LinkPruneMap).\n Expected:\n", c25656e6, "\n Found:\n", m3085a6));
            }
            HashMap hashMap7 = new HashMap(4);
            hashMap7.put("owner", new C25656e.C25657a("owner", "TEXT", true, 1, null, 1));
            hashMap7.put("last_updated_at", new C25656e.C25657a("last_updated_at", "INTEGER", true, 0, null, 1));
            hashMap7.put("last_updated_data", new C25656e.C25657a("last_updated_data", "TEXT", false, 0, null, 1));
            C25656e c25656e7 = new C25656e("states_table", hashMap7, C22128a.m8658W(hashMap7, "created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a7 = C25656e.m3085a(abstractC26147b, "states_table");
            if (!c25656e7.equals(m3085a7)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("states_table(com.truecaller.insights.models.states.InsightState).\n Expected:\n", c25656e7, "\n Found:\n", m3085a7));
            }
            HashMap hashMap8 = new HashMap(9);
            hashMap8.put("feature", new C25656e.C25657a("feature", "TEXT", true, 0, null, 1));
            hashMap8.put("event_category", new C25656e.C25657a("event_category", "TEXT", true, 0, null, 1));
            hashMap8.put("event_info", new C25656e.C25657a("event_info", "TEXT", true, 0, null, 1));
            hashMap8.put(AnalyticsConstants.CONTEXT, new C25656e.C25657a(AnalyticsConstants.CONTEXT, "TEXT", true, 0, null, 1));
            hashMap8.put("action_type", new C25656e.C25657a("action_type", "TEXT", true, 0, null, 1));
            hashMap8.put("action_info", new C25656e.C25657a("action_info", "TEXT", true, 0, null, 1));
            hashMap8.put("event_id", new C25656e.C25657a("event_id", "INTEGER", true, 1, null, 1));
            hashMap8.put("created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1));
            C25656e c25656e8 = new C25656e("analytics_events", hashMap8, C22128a.m8658W(hashMap8, "consumed", new C25656e.C25657a("consumed", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a8 = C25656e.m3085a(abstractC26147b, "analytics_events");
            if (!c25656e8.equals(m3085a8)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("analytics_events(com.truecaller.insights.models.analytics.SimpleAnalyticsModel).\n Expected:\n", c25656e8, "\n Found:\n", m3085a8));
            }
            HashMap hashMap9 = new HashMap(5);
            hashMap9.put("parent_event_id", new C25656e.C25657a("parent_event_id", "INTEGER", true, 0, null, 1));
            hashMap9.put(AnalyticsConstants.KEY, new C25656e.C25657a(AnalyticsConstants.KEY, "TEXT", true, 0, null, 1));
            hashMap9.put("value", new C25656e.C25657a("value", "TEXT", true, 0, null, 1));
            hashMap9.put("property_id", new C25656e.C25657a("property_id", "INTEGER", true, 1, null, 1));
            HashSet m8658W7 = C22128a.m8658W(hashMap9, "created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1), 1);
            m8658W7.add(new C25656e.C25658b("analytics_events", "NO ACTION", "NO ACTION", Arrays.asList("parent_event_id"), Arrays.asList("event_id")));
            HashSet hashSet7 = new HashSet(1);
            hashSet7.add(new C25656e.C25660d("index_analytics_property_maps_parent_event_id_event_id", false, Arrays.asList("parent_event_id")));
            C25656e c25656e9 = new C25656e("analytics_property_maps", hashMap9, m8658W7, hashSet7);
            C25656e m3085a9 = C25656e.m3085a(abstractC26147b, "analytics_property_maps");
            if (!c25656e9.equals(m3085a9)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("analytics_property_maps(com.truecaller.insights.models.analytics.AnalyticsPropertyMapsModel).\n Expected:\n", c25656e9, "\n Found:\n", m3085a9));
            }
            HashMap hashMap10 = new HashMap(11);
            hashMap10.put("uniqueRefId", new C25656e.C25657a("uniqueRefId", "TEXT", true, 1, null, 1));
            hashMap10.put("vendorName", new C25656e.C25657a("vendorName", "TEXT", true, 0, null, 1));
            hashMap10.put("due_date", new C25656e.C25657a("due_date", "INTEGER", true, 0, null, 1));
            hashMap10.put("generated_date", new C25656e.C25657a("generated_date", "INTEGER", true, 0, null, 1));
            hashMap10.put("image_url", new C25656e.C25657a("image_url", "TEXT", false, 0, null, 1));
            hashMap10.put("times_notified", new C25656e.C25657a("times_notified", "INTEGER", true, 0, null, 1));
            hashMap10.put("is_dismissed", new C25656e.C25657a("is_dismissed", "INTEGER", true, 0, null, 1));
            hashMap10.put("category", new C25656e.C25657a("category", "TEXT", true, 0, null, 1));
            hashMap10.put("meta", new C25656e.C25657a("meta", "TEXT", false, 0, null, 1));
            hashMap10.put("created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1));
            HashSet m8658W8 = C22128a.m8658W(hashMap10, "is_notification_pending", new C25656e.C25657a("is_notification_pending", "INTEGER", true, 0, null, 1), 0);
            HashSet hashSet8 = new HashSet(3);
            hashSet8.add(new C25656e.C25660d("index_insights_reminders_uniqueRefId", false, Arrays.asList("uniqueRefId")));
            hashSet8.add(new C25656e.C25660d("index_insights_reminders_vendorName", false, Arrays.asList("vendorName")));
            hashSet8.add(new C25656e.C25660d("index_insights_reminders_category", false, Arrays.asList("category")));
            C25656e c25656e10 = new C25656e("insights_reminders", hashMap10, m8658W8, hashSet8);
            C25656e m3085a10 = C25656e.m3085a(abstractC26147b, "insights_reminders");
            if (!c25656e10.equals(m3085a10)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("insights_reminders(com.truecaller.insights.models.InsightsReminder).\n Expected:\n", c25656e10, "\n Found:\n", m3085a10));
            }
            HashMap hashMap11 = new HashMap(8);
            hashMap11.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap11.put("message_id", new C25656e.C25657a("message_id", "INTEGER", true, 0, null, 1));
            hashMap11.put("domain", new C25656e.C25657a("domain", "TEXT", true, 0, null, 1));
            hashMap11.put("state", new C25656e.C25657a("state", "INTEGER", true, 0, null, 1));
            hashMap11.put("origin", new C25656e.C25657a("origin", "TEXT", true, 0, null, 1));
            hashMap11.put("created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1));
            hashMap11.put("last_updated_at", new C25656e.C25657a("last_updated_at", "INTEGER", true, 0, null, 1));
            HashSet m8658W9 = C22128a.m8658W(hashMap11, "extra", new C25656e.C25657a("extra", "TEXT", true, 0, null, 1), 0);
            HashSet hashSet9 = new HashSet(1);
            hashSet9.add(new C25656e.C25660d("index_action_state_message_id_origin", true, Arrays.asList("message_id", "origin")));
            C25656e c25656e11 = new C25656e("action_state", hashMap11, m8658W9, hashSet9);
            C25656e m3085a11 = C25656e.m3085a(abstractC26147b, "action_state");
            if (!c25656e11.equals(m3085a11)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("action_state(com.truecaller.insights.models.smartcards.ActionStateEntity).\n Expected:\n", c25656e11, "\n Found:\n", m3085a11));
            }
            HashMap hashMap12 = new HashMap(7);
            hashMap12.put("word", new C25656e.C25657a("word", "TEXT", true, 1, null, 1));
            hashMap12.put("probHam", new C25656e.C25657a("probHam", "REAL", false, 0, null, 1));
            hashMap12.put("probSpam", new C25656e.C25657a("probSpam", "REAL", false, 0, null, 1));
            hashMap12.put("tfHam", new C25656e.C25657a("tfHam", "REAL", false, 0, null, 1));
            hashMap12.put("tfSpam", new C25656e.C25657a("tfSpam", "REAL", false, 0, null, 1));
            hashMap12.put("idfHam", new C25656e.C25657a("idfHam", "REAL", false, 0, null, 1));
            C25656e c25656e12 = new C25656e("categorizer_probability", hashMap12, C22128a.m8658W(hashMap12, "idfSpam", new C25656e.C25657a("idfSpam", "REAL", false, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a12 = C25656e.m3085a(abstractC26147b, "categorizer_probability");
            if (!c25656e12.equals(m3085a12)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("categorizer_probability(com.truecaller.insights.models.categorizer.CategorizerWordProb).\n Expected:\n", c25656e12, "\n Found:\n", m3085a12));
            }
            HashSet hashSet10 = new HashSet(2);
            hashSet10.add("message");
            hashSet10.add("address");
            C25654c c25654c = new C25654c("sms_message_fts", hashSet10, "CREATE VIRTUAL TABLE IF NOT EXISTS `sms_message_fts` USING FTS4(`message` TEXT NOT NULL, `address` TEXT NOT NULL, content=`sms_backup_table`)");
            C25654c m3087b = C25654c.m3087b(abstractC26147b, "sms_message_fts");
            if (!c25654c.equals(m3087b)) {
                return new C25683x.C25685b(false, "sms_message_fts(com.truecaller.insights.models.search.SmsMessagesFTS).\n Expected:\n" + c25654c + "\n Found:\n" + m3087b);
            }
            HashMap hashMap13 = new HashMap(6);
            hashMap13.put(RemoteMessageConst.MSGBODY, new C25656e.C25657a(RemoteMessageConst.MSGBODY, "TEXT", true, 0, null, 1));
            hashMap13.put("from_category", new C25656e.C25657a("from_category", "TEXT", true, 0, null, 1));
            hashMap13.put("to_category", new C25656e.C25657a("to_category", "TEXT", true, 0, null, 1));
            hashMap13.put("model_version", new C25656e.C25657a("model_version", "INTEGER", true, 0, null, 1));
            hashMap13.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            C25656e c25656e13 = new C25656e("reclassified_message", hashMap13, C22128a.m8658W(hashMap13, "created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a13 = C25656e.m3085a(abstractC26147b, "reclassified_message");
            if (!c25656e13.equals(m3085a13)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("reclassified_message(com.truecaller.insights.models.categorizer.ReclassifiedMessage).\n Expected:\n", c25656e13, "\n Found:\n", m3085a13));
            }
            HashSet hashSet11 = new HashSet(19);
            hashSet11.add("d");
            hashSet11.add("k");
            hashSet11.add("p");
            hashSet11.add(AbstractC2405c.f7629a);
            C22128a.m8663U0(hashSet11, "o", "f", "g", "s");
            C22128a.m8663U0(hashSet11, "val1", "val2", "val3", "val4");
            C22128a.m8663U0(hashSet11, "val5", "address", "dff_val1", "dff_val2");
            hashSet11.add("dff_val3");
            hashSet11.add("dff_val4");
            hashSet11.add("dff_val5");
            C25654c c25654c2 = new C25654c("pdo_fts", hashSet11, "CREATE VIRTUAL TABLE IF NOT EXISTS `pdo_fts` USING FTS4(`d` TEXT NOT NULL, `k` TEXT NOT NULL, `p` TEXT NOT NULL, `c` TEXT NOT NULL, `o` TEXT NOT NULL, `f` TEXT NOT NULL, `g` TEXT NOT NULL, `s` TEXT NOT NULL, `val1` TEXT NOT NULL, `val2` TEXT NOT NULL, `val3` TEXT NOT NULL, `val4` TEXT NOT NULL, `val5` TEXT NOT NULL, `address` TEXT NOT NULL, `dff_val1` TEXT NOT NULL, `dff_val2` TEXT NOT NULL, `dff_val3` TEXT NOT NULL, `dff_val4` TEXT NOT NULL, `dff_val5` TEXT NOT NULL, content=`parsed_data_object_table`)");
            C25654c m3087b2 = C25654c.m3087b(abstractC26147b, "pdo_fts");
            if (!c25654c2.equals(m3087b2)) {
                return new C25683x.C25685b(false, "pdo_fts(com.truecaller.insights.models.search.PdoFts).\n Expected:\n" + c25654c2 + "\n Found:\n" + m3087b2);
            }
            HashMap hashMap14 = new HashMap(10);
            hashMap14.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap14.put("created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1));
            hashMap14.put("feedback_type", new C25656e.C25657a("feedback_type", "TEXT", true, 0, null, 1));
            hashMap14.put("feedback_value", new C25656e.C25657a("feedback_value", "TEXT", true, 0, null, 1));
            hashMap14.put("entity_id", new C25656e.C25657a("entity_id", "INTEGER", true, 0, null, 1));
            hashMap14.put(AnalyticsConstants.SENDER, new C25656e.C25657a(AnalyticsConstants.SENDER, "TEXT", false, 0, null, 1));
            hashMap14.put("body", new C25656e.C25657a("body", "TEXT", true, 0, null, 1));
            hashMap14.put("parser_output", new C25656e.C25657a("parser_output", "TEXT", false, 0, null, 1));
            hashMap14.put("categorizer_output", new C25656e.C25657a("categorizer_output", "TEXT", false, 0, null, 1));
            HashSet m8658W10 = C22128a.m8658W(hashMap14, "parent_id", new C25656e.C25657a("parent_id", "INTEGER", true, 0, null, 1), 0);
            HashSet hashSet12 = new HashSet(1);
            hashSet12.add(new C25656e.C25660d("index_entity_id", false, Arrays.asList("entity_id")));
            C25656e c25656e14 = new C25656e("feedback", hashMap14, m8658W10, hashSet12);
            C25656e m3085a14 = C25656e.m3085a(abstractC26147b, "feedback");
            if (!c25656e14.equals(m3085a14)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("feedback(com.truecaller.insights.models.feedback.InsightsFeedbackEntity).\n Expected:\n", c25656e14, "\n Found:\n", m3085a14));
            }
            HashMap hashMap15 = new HashMap(8);
            hashMap15.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap15.put(AnalyticsConstants.SENDER, new C25656e.C25657a(AnalyticsConstants.SENDER, "TEXT", true, 0, null, 1));
            hashMap15.put("sender_name", new C25656e.C25657a("sender_name", "TEXT", false, 0, null, 1));
            hashMap15.put("sender_type", new C25656e.C25657a("sender_type", "TEXT", false, 0, null, 1));
            hashMap15.put("smart_features_status", new C25656e.C25657a("smart_features_status", "TEXT", false, 0, null, 1));
            hashMap15.put("grammars_enabled", new C25656e.C25657a("grammars_enabled", "TEXT", true, 0, null, 1));
            hashMap15.put("source_type", new C25656e.C25657a("source_type", "TEXT", true, 0, null, 1));
            HashSet m8658W11 = C22128a.m8658W(hashMap15, "country_code", new C25656e.C25657a("country_code", "TEXT", false, 0, null, 1), 0);
            HashSet hashSet13 = new HashSet(1);
            hashSet13.add(new C25656e.C25660d("index_sender", false, Arrays.asList(AnalyticsConstants.SENDER)));
            C25656e c25656e15 = new C25656e("sender_info", hashMap15, m8658W11, hashSet13);
            C25656e m3085a15 = C25656e.m3085a(abstractC26147b, "sender_info");
            if (!c25656e15.equals(m3085a15)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("sender_info(com.truecaller.insights.models.senders.SenderInfoEntity).\n Expected:\n", c25656e15, "\n Found:\n", m3085a15));
            }
            HashMap hashMap16 = new HashMap(11);
            hashMap16.put("feature", new C25656e.C25657a("feature", "TEXT", true, 0, null, 1));
            hashMap16.put("event_category", new C25656e.C25657a("event_category", "TEXT", true, 0, null, 1));
            hashMap16.put("event_info", new C25656e.C25657a("event_info", "TEXT", true, 0, null, 1));
            hashMap16.put(AnalyticsConstants.CONTEXT, new C25656e.C25657a(AnalyticsConstants.CONTEXT, "TEXT", true, 0, null, 1));
            hashMap16.put("action_type", new C25656e.C25657a("action_type", "TEXT", true, 0, null, 1));
            hashMap16.put("action_info", new C25656e.C25657a("action_info", "TEXT", true, 0, null, 1));
            hashMap16.put("event_date", new C25656e.C25657a("event_date", "INTEGER", true, 0, null, 1));
            hashMap16.put("counts", new C25656e.C25657a("counts", "INTEGER", true, 0, null, 1));
            hashMap16.put("agg_event_id", new C25656e.C25657a("agg_event_id", "INTEGER", true, 1, null, 1));
            hashMap16.put("created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1));
            C25656e c25656e16 = new C25656e("aggregate_analytics_events", hashMap16, C22128a.m8658W(hashMap16, "consumed", new C25656e.C25657a("consumed", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a16 = C25656e.m3085a(abstractC26147b, "aggregate_analytics_events");
            if (!c25656e16.equals(m3085a16)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("aggregate_analytics_events(com.truecaller.insights.models.analytics.AggregatedAnalyticsEventModel).\n Expected:\n", c25656e16, "\n Found:\n", m3085a16));
            }
            HashMap hashMap17 = new HashMap(5);
            hashMap17.put(AnalyticsConstants.SENDER, new C25656e.C25657a(AnalyticsConstants.SENDER, "TEXT", true, 1, null, 1));
            hashMap17.put("sender_name", new C25656e.C25657a("sender_name", "TEXT", false, 0, null, 1));
            hashMap17.put("sender_icon_uri", new C25656e.C25657a("sender_icon_uri", "TEXT", false, 0, null, 1));
            hashMap17.put("created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1));
            HashSet m8658W12 = C22128a.m8658W(hashMap17, "last_updated_at", new C25656e.C25657a("last_updated_at", "INTEGER", true, 0, null, 1), 0);
            HashSet hashSet14 = new HashSet(1);
            hashSet14.add(new C25656e.C25660d("index_sender_name", false, Arrays.asList("sender_name")));
            C25656e c25656e17 = new C25656e("sender_resolution_table", hashMap17, m8658W12, hashSet14);
            C25656e m3085a17 = C25656e.m3085a(abstractC26147b, "sender_resolution_table");
            return !c25656e17.equals(m3085a17) ? new C25683x.C25685b(false, C22128a.m8563u2("sender_resolution_table(com.truecaller.insights.models.senders.resolution.SenderResolutionEntity).\n Expected:\n", c25656e17, "\n Found:\n", m3085a17)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: a */
    public AbstractC9788a mo35283a() {
        AbstractC9788a abstractC9788a;
        if (this.f12506e != null) {
            return this.f12506e;
        }
        synchronized (this) {
            if (this.f12506e == null) {
                this.f12506e = new C9790b(this);
            }
            abstractC9788a = this.f12506e;
        }
        return abstractC9788a;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: b */
    public AbstractC9793c mo35282b() {
        AbstractC9793c abstractC9793c;
        if (this.f12505d != null) {
            return this.f12505d;
        }
        synchronized (this) {
            if (this.f12505d == null) {
                this.f12505d = new C9796d(this);
            }
            abstractC9793c = this.f12505d;
        }
        return abstractC9793c;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: c */
    public AbstractC9804e mo35281c() {
        AbstractC9804e abstractC9804e;
        if (this.f12507f != null) {
            return this.f12507f;
        }
        synchronized (this) {
            if (this.f12507f == null) {
                this.f12507f = new C9843f(this);
            }
            abstractC9804e = this.f12507f;
        }
        return abstractC9804e;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        if (1 == 0) {
            try {
                writableDatabase.mo2668S0("PRAGMA foreign_keys = FALSE");
            } catch (Throwable th) {
                super.endTransaction();
                if (1 == 0) {
                    writableDatabase.mo2668S0("PRAGMA foreign_keys = TRUE");
                }
                if (!C22128a.m8651Y0(writableDatabase, "PRAGMA wal_checkpoint(FULL)")) {
                    writableDatabase.mo2668S0("VACUUM");
                }
                throw th;
            }
        }
        super.beginTransaction();
        if (1 != 0) {
            writableDatabase.mo2668S0("PRAGMA defer_foreign_keys = TRUE");
        }
        writableDatabase.mo2668S0("DELETE FROM `parsed_data_object_table`");
        writableDatabase.mo2668S0("DELETE FROM `sms_backup_table`");
        writableDatabase.mo2668S0("DELETE FROM `account_relation_model`");
        writableDatabase.mo2668S0("DELETE FROM `account_mapping_rule_model`");
        writableDatabase.mo2668S0("DELETE FROM `account_model_table`");
        writableDatabase.mo2668S0("DELETE FROM `link_prune_table`");
        writableDatabase.mo2668S0("DELETE FROM `states_table`");
        writableDatabase.mo2668S0("DELETE FROM `analytics_property_maps`");
        writableDatabase.mo2668S0("DELETE FROM `analytics_events`");
        writableDatabase.mo2668S0("DELETE FROM `insights_reminders`");
        writableDatabase.mo2668S0("DELETE FROM `action_state`");
        writableDatabase.mo2668S0("DELETE FROM `categorizer_probability`");
        writableDatabase.mo2668S0("DELETE FROM `sms_message_fts`");
        writableDatabase.mo2668S0("DELETE FROM `reclassified_message`");
        writableDatabase.mo2668S0("DELETE FROM `pdo_fts`");
        writableDatabase.mo2668S0("DELETE FROM `feedback`");
        writableDatabase.mo2668S0("DELETE FROM `sender_info`");
        writableDatabase.mo2668S0("DELETE FROM `aggregate_analytics_events`");
        writableDatabase.mo2668S0("DELETE FROM `sender_resolution_table`");
        super.setTransactionSuccessful();
        super.endTransaction();
        if (1 == 0) {
            writableDatabase.mo2668S0("PRAGMA foreign_keys = TRUE");
        }
        if (!C22128a.m8651Y0(writableDatabase, "PRAGMA wal_checkpoint(FULL)")) {
            writableDatabase.mo2668S0("VACUUM");
        }
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public C25670o createInvalidationTracker() {
        HashMap hashMap = new HashMap(2);
        hashMap.put("sms_message_fts", "sms_backup_table");
        hashMap.put("pdo_fts", "parsed_data_object_table");
        return new C25670o(this, hashMap, new HashMap(0), "parsed_data_object_table", "sms_backup_table", "account_model_table", "account_relation_model", "account_mapping_rule_model", "link_prune_table", "states_table", "analytics_events", "analytics_property_maps", "insights_reminders", "action_state", "categorizer_probability", "sms_message_fts", "reclassified_message", "pdo_fts", "feedback", "sender_info", "aggregate_analytics_events", "sender_resolution_table");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C4056a(55), "bdd3ef8f4b0524f2c4c637b896d776da", "dcf04f80e226c5edd0323464d1858e5a");
        Context context = c25651h.f71846b;
        String str = c25651h.f71847c;
        if (context != null) {
            return c25651h.f71845a.mo1435a(new AbstractC26148c.C26150b(context, str, c25683x, false));
        }
        throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: d */
    public AbstractC9846g mo35280d() {
        AbstractC9846g abstractC9846g;
        if (this.f12513l != null) {
            return this.f12513l;
        }
        synchronized (this) {
            if (this.f12513l == null) {
                this.f12513l = new C9858h(this);
            }
            abstractC9846g = this.f12513l;
        }
        return abstractC9846g;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: e */
    public AbstractC9869i mo35279e() {
        AbstractC9869i abstractC9869i;
        if (this.f12508g != null) {
            return this.f12508g;
        }
        synchronized (this) {
            if (this.f12508g == null) {
                this.f12508g = new C9877j(this);
            }
            abstractC9869i = this.f12508g;
        }
        return abstractC9869i;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: f */
    public AbstractC9894k mo35278f() {
        AbstractC9894k abstractC9894k;
        if (this.f12509h != null) {
            return this.f12509h;
        }
        synchronized (this) {
            if (this.f12509h == null) {
                this.f12509h = new C9915l(this);
            }
            abstractC9894k = this.f12509h;
        }
        return abstractC9894k;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: g */
    public AbstractC9930p mo35277g() {
        AbstractC9930p abstractC9930p;
        if (this.f12510i != null) {
            return this.f12510i;
        }
        synchronized (this) {
            if (this.f12510i == null) {
                this.f12510i = new C9935q(this);
            }
            abstractC9930p = this.f12510i;
        }
        return abstractC9930p;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(AbstractC9800d0.class, Collections.emptyList());
        hashMap.put(AbstractC9921m0.class, Collections.emptyList());
        hashMap.put(AbstractC9945s.class, Collections.emptyList());
        hashMap.put(AbstractC9793c.class, Collections.emptyList());
        hashMap.put(AbstractC9788a.class, Collections.emptyList());
        hashMap.put(AbstractC9804e.class, Collections.emptyList());
        hashMap.put(AbstractC9869i.class, Collections.emptyList());
        hashMap.put(AbstractC9894k.class, Collections.emptyList());
        hashMap.put(AbstractC9930p.class, Collections.emptyList());
        hashMap.put(AbstractC9920m.class, Collections.emptyList());
        hashMap.put(AbstractC9972y.class, Collections.emptyList());
        hashMap.put(AbstractC9846g.class, Collections.emptyList());
        hashMap.put(AbstractC9789a0.class, Collections.emptyList());
        hashMap.put(AbstractC9956u.class, Collections.emptyList());
        hashMap.put(AbstractC9845f0.class, Collections.emptyList());
        hashMap.put(AbstractC9893j0.class, Collections.emptyList());
        hashMap.put(AbstractC9929o0.class, Collections.emptyList());
        hashMap.put(AbstractC9967w.class, Collections.emptyList());
        hashMap.put(AbstractC9868h0.class, Collections.emptyList());
        return hashMap;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: h */
    public AbstractC9945s mo35276h() {
        AbstractC9945s abstractC9945s;
        if (this.f12504c != null) {
            return this.f12504c;
        }
        synchronized (this) {
            if (this.f12504c == null) {
                this.f12504c = new C9946t(this);
            }
            abstractC9945s = this.f12504c;
        }
        return abstractC9945s;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: i */
    public AbstractC9956u mo35275i() {
        AbstractC9956u abstractC9956u;
        if (this.f12515n != null) {
            return this.f12515n;
        }
        synchronized (this) {
            if (this.f12515n == null) {
                this.f12515n = new C9957v(this);
            }
            abstractC9956u = this.f12515n;
        }
        return abstractC9956u;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: j */
    public AbstractC9967w mo35274j() {
        AbstractC9967w abstractC9967w;
        if (this.f12519r != null) {
            return this.f12519r;
        }
        synchronized (this) {
            if (this.f12519r == null) {
                this.f12519r = new C9968x(this);
            }
            abstractC9967w = this.f12519r;
        }
        return abstractC9967w;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: k */
    public AbstractC9920m mo35273k() {
        AbstractC9920m abstractC9920m;
        if (this.f12511j != null) {
            return this.f12511j;
        }
        synchronized (this) {
            if (this.f12511j == null) {
                this.f12511j = new C9922n(this);
            }
            abstractC9920m = this.f12511j;
        }
        return abstractC9920m;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: l */
    public AbstractC9789a0 mo35272l() {
        AbstractC9789a0 abstractC9789a0;
        if (this.f12514m != null) {
            return this.f12514m;
        }
        synchronized (this) {
            if (this.f12514m == null) {
                this.f12514m = new C9794c0(this);
            }
            abstractC9789a0 = this.f12514m;
        }
        return abstractC9789a0;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: m */
    public AbstractC9800d0 mo35271m() {
        AbstractC9800d0 abstractC9800d0;
        if (this.f12502a != null) {
            return this.f12502a;
        }
        synchronized (this) {
            if (this.f12502a == null) {
                this.f12502a = new C9805e0(this);
            }
            abstractC9800d0 = this.f12502a;
        }
        return abstractC9800d0;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: n */
    public AbstractC9972y mo35270n() {
        AbstractC9972y abstractC9972y;
        if (this.f12512k != null) {
            return this.f12512k;
        }
        synchronized (this) {
            if (this.f12512k == null) {
                this.f12512k = new C9973z(this);
            }
            abstractC9972y = this.f12512k;
        }
        return abstractC9972y;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: o */
    public AbstractC9845f0 mo35269o() {
        AbstractC9845f0 abstractC9845f0;
        if (this.f12516o != null) {
            return this.f12516o;
        }
        synchronized (this) {
            if (this.f12516o == null) {
                this.f12516o = new C9847g0(this);
            }
            abstractC9845f0 = this.f12516o;
        }
        return abstractC9845f0;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: p */
    public AbstractC9868h0 mo35268p() {
        AbstractC9868h0 abstractC9868h0;
        if (this.f12520s != null) {
            return this.f12520s;
        }
        synchronized (this) {
            if (this.f12520s == null) {
                this.f12520s = new C9870i0(this);
            }
            abstractC9868h0 = this.f12520s;
        }
        return abstractC9868h0;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: q */
    public AbstractC9893j0 mo35267q() {
        AbstractC9893j0 abstractC9893j0;
        if (this.f12517p != null) {
            return this.f12517p;
        }
        synchronized (this) {
            if (this.f12517p == null) {
                this.f12517p = new C9895k0(this);
            }
            abstractC9893j0 = this.f12517p;
        }
        return abstractC9893j0;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: r */
    public AbstractC9921m0 mo35266r() {
        AbstractC9921m0 abstractC9921m0;
        if (this.f12503b != null) {
            return this.f12503b;
        }
        synchronized (this) {
            if (this.f12503b == null) {
                this.f12503b = new C9924n0(this);
            }
            abstractC9921m0 = this.f12503b;
        }
        return abstractC9921m0;
    }

    @Override // com.truecaller.insights.database.InsightsDb
    /* renamed from: s */
    public AbstractC9929o0 mo35265s() {
        AbstractC9929o0 abstractC9929o0;
        if (this.f12518q != null) {
            return this.f12518q;
        }
        synchronized (this) {
            if (this.f12518q == null) {
                this.f12518q = new C9931p0(this);
            }
            abstractC9929o0 = this.f12518q;
        }
        return abstractC9929o0;
    }
}
