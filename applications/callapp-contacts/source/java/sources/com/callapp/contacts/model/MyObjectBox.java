package com.callapp.contacts.model;

import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.model.invites.ReferAndEarnData_;
import com.callapp.contacts.model.invites.ReferAndEarnUserData_;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData_;
import com.callapp.contacts.model.objectbox.AnalyticsExcludeContact_;
import com.callapp.contacts.model.objectbox.BirthdayData_;
import com.callapp.contacts.model.objectbox.BlockedNumberData_;
import com.callapp.contacts.model.objectbox.BlockedRule_;
import com.callapp.contacts.model.objectbox.CacheData_;
import com.callapp.contacts.model.objectbox.CallRecorder_;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData_;
import com.callapp.contacts.model.objectbox.CallRemindersData_;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto_;
import com.callapp.contacts.model.objectbox.CommonSpammer_;
import com.callapp.contacts.model.objectbox.ContactLookupData_;
import com.callapp.contacts.model.objectbox.ExtractedInfo_;
import com.callapp.contacts.model.objectbox.FastCacheData_;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoData_;
import com.callapp.contacts.model.objectbox.IncognitoData_;
import com.callapp.contacts.model.objectbox.JSONExternalSourceContactOBEntity_;
import com.callapp.contacts.model.objectbox.MissedCallCardIds_;
import com.callapp.contacts.model.objectbox.OBPref_;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData_;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserData_;
import com.callapp.contacts.model.objectbox.PreferredSimData_;
import com.callapp.contacts.model.objectbox.ProfileViewedData_;
import com.callapp.contacts.model.objectbox.Promotion_;
import com.callapp.contacts.model.objectbox.SingleMissedCallData_;
import com.callapp.contacts.model.objectbox.SingleSmsData;
import com.callapp.contacts.model.objectbox.SingleSmsData_;
import com.callapp.contacts.model.objectbox.SpamData_;
import com.callapp.contacts.model.objectbox.SuggestContactData_;
import com.callapp.contacts.model.objectbox.UserCorrectedData_;
import com.callapp.contacts.model.objectbox.UserCorrectedPositiveData_;
import com.callapp.contacts.model.objectbox.UserMediaData_;
import com.callapp.contacts.model.objectbox.UserNegativePositiveData_;
import com.callapp.contacts.model.objectbox.UserNegativeSocialData_;
import com.callapp.contacts.model.objectbox.UserPositiveSocialData_;
import com.callapp.contacts.model.objectbox.UserSpamData_;
import com.callapp.contacts.recorder.recordertest.RecorderTestData_;
import com.callapp.contacts.sync.model.SyncerData_;
import com.callapp.contacts.sync.model.SyncerDetails_;
import com.mopub.mobileads.VastIconXmlManager;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17947b;
import io.objectbox.C17974e;
import io.objectbox.model.IdUid;
import io.objectbox.model.Model;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/MyObjectBox.class */
public class MyObjectBox {
    private static void buildEntityAnalyticsCallsData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("AnalyticsCallsData");
        m4671a.m4668a(43, 5709857310183866993L).m4664b(16, 5820400086941657927L);
        m4671a.m4667a("id", 6).m4659a(1, 2040496040374714281L).m4660a(3);
        m4671a.m4667a("date", 6).m4659a(2, 5509813520960730156L).m4660a(4);
        m4671a.m4667a("callType", 5).m4659a(3, 3918168716495197524L).m4660a(2);
        m4671a.m4667a("dayType", 5).m4659a(4, 1300925204611616994L).m4660a(2);
        m4671a.m4667a("simId", 5).m4659a(5, 8942891734568950860L).m4660a(2);
        m4671a.m4667a("phoneAsGlobal", 9).m4659a(7, 6860868426315387187L);
        m4671a.m4667a(VastIconXmlManager.DURATION, 6).m4659a(8, 5363915237632896604L).m4660a(4);
        m4671a.m4667a("isSpam", 1).m4659a(9, 2685002476555488926L).m4660a(4);
        m4671a.m4667a("isBlock", 1).m4659a(10, 3934218020966828257L).m4660a(4);
        m4671a.m4667a("isPrivate", 1).m4659a(11, 7991521300754697371L).m4660a(4);
        m4671a.m4667a("isIncognito", 1).m4659a(12, 1358040309271940567L).m4660a(4);
        m4671a.m4667a("isConference", 1).m4659a(13, 1194391692562819562L).m4660a(4);
        m4671a.m4667a("isInternational", 1).m4659a(14, 4562032924415814957L).m4660a(4);
        m4671a.m4667a("isIdentified", 1).m4659a(15, 5618005031171802117L).m4660a(4);
        m4671a.m4667a("isExclude", 1).m4659a(16, 5820400086941657927L).m4660a(4);
        m4671a.m4665b();
    }

    private static void buildEntityAnalyticsExcludeContact(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("AnalyticsExcludeContact");
        m4671a.m4668a(48, 7741942680764670272L).m4664b(2, 6952966447818972784L);
        m4671a.m4667a("id", 6).m4659a(1, 3287199374381418388L).m4660a(3);
        m4671a.m4667a("phoneAsGlobal", 9).m4659a(2, 6952966447818972784L);
        m4671a.m4665b();
    }

    private static void buildEntityBirthdayData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("BirthdayData");
        m4671a.m4668a(22, 353656924772909212L).m4664b(7, 3348411438641315973L);
        m4671a.m4667a("id", 6).m4659a(1, 8438025153028963194L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 9156240785498701668L).m4660a(2048).m4657b(31, 1073365482339825356L);
        m4671a.m4667a("dayOfMonth", 5).m4659a(3, 688231497609748745L).m4660a(12).m4657b(42, 6995863539965857694L);
        m4671a.m4667a("month", 5).m4659a(4, 875048273620571153L).m4660a(12).m4657b(43, 9121867270480229292L);
        m4671a.m4667a("socialNetId", 5).m4659a(5, 3236989948006978974L).m4660a(4);
        m4671a.m4667a("socialProfileId", 9).m4659a(6, 902473234006063657L);
        m4671a.m4667a("displayName", 9).m4659a(7, 3348411438641315973L);
        m4671a.m4665b();
    }

    private static void buildEntityBlockedNumberData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("BlockedNumberData");
        m4671a.m4668a(1, 8248488025029928591L).m4664b(6, 3538305610080013788L);
        m4671a.m4667a("id", 6).m4659a(1, 4715991556628672043L).m4660a(1);
        m4671a.m4667a("phoneNum", 9).m4659a(2, 4443021464182167411L).m4660a(2048).m4657b(1, 5335627059248470606L);
        m4671a.m4667a(ContactDetailsActivity.EXTRA_FULL_NAME, 9).m4659a(3, 9120642647349600724L);
        m4671a.m4667a("blockSms", 1).m4659a(4, 4346845344243459612L).m4660a(12).m4657b(44, 6638668918726117181L);
        m4671a.m4667a("blockCall", 1).m4659a(5, 263997857360937285L).m4660a(12).m4657b(45, 2068346409548756851L);
        m4671a.m4667a("when", 6).m4659a(6, 3538305610080013788L).m4660a(12).m4657b(69, 537727657282947609L);
        m4671a.m4665b();
    }

    private static void buildEntityBlockedRule(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("BlockedRule");
        m4671a.m4668a(2, 6437072158938229905L).m4664b(3, 2729891679818893774L);
        m4671a.m4667a("id", 6).m4659a(1, 8521456818611816941L).m4660a(1);
        m4671a.m4667a("rawNumber", 9).m4659a(2, 6081723819950158310L).m4660a(2048).m4657b(2, 3324087953654761821L);
        m4671a.m4667a("blockRuleType", 5).m4659a(3, 2729891679818893774L).m4660a(10).m4657b(46, 5888236315314138941L);
        m4671a.m4665b();
    }

    private static void buildEntityCacheData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("CacheData");
        m4671a.m4668a(25, 5708167761838449515L).m4664b(9, 5070459076342167098L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 3209067479556321571L).m4660a(1);
        m4671a.m4667a("file", 9).m4659a(2, 538874191487985073L).m4660a(2048).m4657b(36, 517663985738448632L);
        m4671a.m4667a("expires", 10).m4659a(3, 7430404870615061097L).m4660a(8).m4657b(37, 170989684080791773L);
        m4671a.m4667a("valueType", 9).m4659a(4, 9055005535681396507L);
        m4671a.m4667a("stringVal", 9).m4659a(5, 4700129149717824753L);
        m4671a.m4667a("longVal", 6).m4659a(6, 3394365282566646719L).m4660a(2);
        m4671a.m4667a("booleanVal", 1).m4659a(7, 8104882351724571401L).m4660a(2);
        m4671a.m4667a("integerVal", 5).m4659a(8, 2143169321066802804L).m4660a(2);
        m4671a.m4667a("bytesVal", 23).m4659a(9, 5070459076342167098L);
        m4671a.m4665b();
    }

    private static void buildEntityCallRecorder(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("CallRecorder");
        m4671a.m4668a(10, 5703800094340710850L).m4664b(9, 8905165326996125722L);
        m4671a.m4667a("id", 6).m4659a(1, 8635350705360816394L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 1748859429311224092L).m4660a(2048).m4657b(10, 2732780898947200681L);
        m4671a.m4667a("date", 6).m4659a(3, 8144065716960176956L).m4660a(12).m4657b(11, 707637524940212799L);
        m4671a.m4667a("fileName", 9).m4659a(4, 460940582553783003L);
        m4671a.m4667a(VastIconXmlManager.DURATION, 6).m4659a(5, 2632485258670330590L).m4660a(4);
        m4671a.m4667a("starred", 1).m4659a(6, 170686882156353295L).m4660a(12).m4657b(12, 5120532386698365170L);
        m4671a.m4667a("note", 9).m4659a(7, 1402169436374606696L);
        m4671a.m4667a("callType", 5).m4659a(8, 2206426613377860489L).m4660a(4);
        m4671a.m4667a("isUploaded", 1).m4659a(9, 8905165326996125722L).m4660a(4);
        m4671a.m4665b();
    }

    private static void buildEntityCallReminderFrequentData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("CallReminderFrequentData");
        m4671a.m4668a(37, 6147705632270751031L).m4664b(10, 7331224933277417836L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 5428193466528024349L).m4660a(3);
        m4671a.m4667a("phoneAsGlobal", 9).m4659a(2, 5848485133638169024L);
        m4671a.m4667a("frequentType", 5).m4659a(3, 2405216307869197893L).m4660a(2);
        m4671a.m4667a("deleteTimeStamp", 6).m4659a(7, 1781893565876495861L).m4660a(4);
        m4671a.m4667a("missedCallType", 5).m4659a(8, 7855265064345850860L).m4660a(4);
        m4671a.m4667a("lastDeleteFromNotificationTimeStamp", 6).m4659a(10, 7331224933277417836L).m4660a(4);
        m4671a.m4665b();
    }

    private static void buildEntityCallRemindersData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("CallRemindersData");
        m4671a.m4668a(7, 3868573406589413935L).m4664b(10, 8918448017337682648L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 6407966342435426139L).m4660a(3);
        m4671a.m4667a("date", 10).m4659a(2, 8943886145480392043L);
        m4671a.m4667a("displayName", 9).m4659a(3, 8989996262216128844L);
        m4671a.m4667a("phoneAsRaw", 9).m4659a(8, 1101623702538710623L);
        m4671a.m4667a("jobStringId", 9).m4659a(10, 8918448017337682648L);
        m4671a.m4667a("notificationTime", 6).m4659a(5, 454571292269867776L).m4660a(10).m4657b(6, 8881360785868211904L);
        m4671a.m4667a("notificationId", 6).m4659a(6, 5911681822092193193L).m4660a(10).m4657b(47, 1969048126033727636L);
        m4671a.m4665b();
    }

    private static void buildEntityChosenContactPhoto(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("ChosenContactPhoto");
        m4671a.m4668a(11, 7481663278051499513L).m4664b(4, 2119046007826719203L);
        m4671a.m4667a("id", 6).m4659a(1, 8317600365687317141L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 4310579783204666841L).m4660a(2048).m4657b(13, 8913329150665347661L);
        m4671a.m4667a("dataSource", 9).m4659a(3, 4961902622340699733L);
        m4671a.m4667a("url", 9).m4659a(4, 2119046007826719203L);
        m4671a.m4665b();
    }

    private static void buildEntityCommonSpammer(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("CommonSpammer");
        m4671a.m4668a(9, 6557064299440973235L).m4664b(4, 8456070995570496411L);
        m4671a.m4667a("id", 6).m4659a(1, 9039880574919020243L).m4660a(3);
        m4671a.m4667a("commonSpammerName", 9).m4659a(2, 1084791855977124767L);
        m4671a.m4667a("commonSpammerPhone", 9).m4659a(3, 1684050353536041713L).m4660a(2048).m4657b(7, 839489213928164162L);
        m4671a.m4667a("commonSpammerScore", 5).m4659a(4, 8456070995570496411L).m4660a(4);
        m4671a.m4665b();
    }

    private static void buildEntityContactLookupData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("ContactLookupData");
        m4671a.m4668a(8, 5163303006374422614L).m4664b(16, 8643367479952373708L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 3558229391919111750L).m4660a(1);
        m4671a.m4667a("lookupKey", 9).m4659a(2, 8661021494185129456L).m4660a(2048).m4657b(8, 3844674125226349010L);
        m4671a.m4667a(Constants.EXTRA_CONTACT_ID, 6).m4659a(3, 1533398423883631007L).m4660a(12).m4657b(9, 5190814314391937923L);
        m4671a.m4667a("phoneNumbers", 9).m4659a(5, 2329956106123129365L);
        m4671a.m4667a("nameT9Format", 9).m4659a(6, 8310924237104462526L).m4660a(2048).m4657b(71, 4620292569523419580L);
        m4671a.m4667a("nameT9FormatNoZero", 9).m4659a(7, 2498982477813391220L).m4660a(2048).m4657b(72, 8887704783456583960L);
        m4671a.m4667a("displayName", 9).m4659a(8, 2273261731546834947L).m4660a(2048).m4657b(73, 7567355195188522225L);
        m4671a.m4667a("unAccentName", 9).m4659a(9, 9154126834823532594L).m4660a(2048).m4657b(74, 8061967295987430040L);
        m4671a.m4667a("description", 9).m4659a(12, 4897474586731782405L).m4660a(2048).m4657b(80, 4656685739526019174L);
        m4671a.m4667a("unAccentDescription", 9).m4659a(13, 7229260947994727967L).m4660a(2048).m4657b(81, 2289646955332701967L);
        m4671a.m4667a("t9Indexes", 9).m4659a(14, 5430697607453471458L);
        m4671a.m4667a("namesMap", 9).m4659a(15, 8581877397025012872L);
        m4671a.m4667a("descriptionMap", 9).m4659a(16, 8643367479952373708L);
        m4671a.m4665b();
    }

    private static void buildEntityExtractedInfo(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("ExtractedInfo");
        m4671a.m4668a(13, 2088847983825318043L).m4664b(20, 4173938297026424427L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 193225752544276874L).m4660a(3);
        m4671a.m4667a("recognizedPersonOrigin", 5).m4659a(2, 6111202344002010091L).m4660a(10).m4657b(16, 190710179216686285L);
        m4671a.m4667a("comType", 5).m4659a(3, 3367056408129031539L).m4660a(2);
        m4671a.m4667a("senderName", 9).m4659a(4, 4838588001255337974L);
        m4671a.m4667a("groupName", 9).m4659a(5, 6401790120402015401L);
        m4671a.m4667a("phoneAsRaw", 9).m4659a(6, 4698224805585235698L).m4660a(2048).m4657b(15, 122945135813576338L);
        m4671a.m4667a("when", 6).m4659a(7, 1569229740442429562L).m4660a(12).m4657b(17, 4253396219525997169L);
        m4671a.m4667a("firstSeen", 6).m4659a(8, 7436004828139063991L).m4660a(4);
        m4671a.m4667a("lastNotificationShowed", 6).m4659a(9, 4342117134994092191L).m4660a(4);
        m4671a.m4667a("seenCount", 5).m4659a(10, 1707034101985973392L).m4660a(4);
        m4671a.m4667a("disableNotification", 1).m4659a(11, 235287868596735829L).m4660a(12).m4657b(18, 7140782039587905726L);
        m4671a.m4667a("starred", 1).m4659a(13, 2090494253306682226L).m4660a(12).m4657b(41, 5390043773793505808L);
        m4671a.m4667a("displayName", 9).m4659a(14, 899653936548504941L).m4660a(2048).m4657b(76, 8368299416957764751L);
        m4671a.m4667a("nameT9Format", 9).m4659a(15, 4259233065943579518L).m4660a(2048).m4657b(77, 8690077017517969361L);
        m4671a.m4667a("nameT9FormatNoZero", 9).m4659a(16, 3063990034880310182L).m4660a(2048).m4657b(78, 6640855233108936088L);
        m4671a.m4667a("unAccentName", 9).m4659a(17, 8278310578983640931L).m4660a(2048).m4657b(79, 3647711669178092702L);
        m4671a.m4667a("t9Indexes", 9).m4659a(19, 2969326282170700328L);
        m4671a.m4667a("namesMap", 9).m4659a(20, 4173938297026424427L);
        m4671a.m4665b();
    }

    private static void buildEntityFastCacheData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("FastCacheData");
        m4671a.m4668a(5, 4336028034668941466L).m4664b(12, 7473143999437282941L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 7163957861178379479L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 8069175253610031820L).m4660a(2048).m4657b(4, 864270897578282259L);
        m4671a.m4667a("expirationDate", 10).m4659a(3, 8649708801777371907L).m4660a(8).m4657b(5, 7310076080760191459L);
        m4671a.m4667a(ContactDetailsActivity.EXTRA_FULL_NAME, 9).m4659a(4, 8799496669098876379L);
        m4671a.m4667a("photoUrls", 9).m4659a(10, 3377405545214875290L);
        m4671a.m4667a("photoBackGroundColor", 5).m4659a(12, 7473143999437282941L).m4660a(2);
        m4671a.m4667a("photoUrl", 9).m4659a(5, 7868524529633488667L);
        m4671a.m4667a("isSpam", 1).m4659a(6, 6199071096225389525L).m4660a(4);
        m4671a.m4667a("photoDataSource", 9).m4659a(7, 3354679472620004342L);
        m4671a.m4667a("nameDataSource", 9).m4659a(8, 6795432616913430878L);
        m4671a.m4665b();
    }

    private static void buildEntityIMExtractedPhotoData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("IMExtractedPhotoData");
        m4671a.m4668a(33, 5233620777719101370L).m4664b(5, 3875998473570796098L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 4733238570242978657L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 53134437851221970L).m4660a(2048).m4657b(59, 5722124751129189976L);
        m4671a.m4667a("dataSource", 9).m4659a(3, 4420645010706138969L);
        m4671a.m4667a("date", 6).m4659a(5, 3875998473570796098L).m4660a(4);
        m4671a.m4667a("url", 9).m4659a(4, 1918069278095036068L);
        m4671a.m4665b();
    }

    private static void buildEntityIncognitoData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("IncognitoData");
        m4671a.m4668a(32, 4452265004366010143L).m4664b(2, 987367836231237615L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 1403879564792261610L).m4660a(1);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 987367836231237615L).m4660a(2048).m4657b(58, 4955582332696016594L);
        m4671a.m4665b();
    }

    private static void buildEntityJSONExternalSourceContactOBEntity(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("JSONExternalSourceContactOBEntity");
        m4671a.m4668a(4, 8897873364271381917L).m4664b(4, 7817601430050319982L);
        m4671a.m4667a("id", 6).m4659a(1, 1114926872777428776L).m4660a(1);
        m4671a.m4667a("externalSourceId", 5).m4659a(2, 7432785125098048637L).m4660a(4);
        m4671a.m4667a("key", 9).m4659a(3, 6207696946822415168L);
        m4671a.m4667a("jsonDoc", 9).m4659a(4, 7817601430050319982L);
        m4671a.m4665b();
    }

    private static void buildEntityMissedCallCardIds(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("MissedCallCardIds");
        m4671a.m4668a(35, 8046084339427877999L).m4664b(7, 7285280901156654483L);
        m4671a.m4667a("id", 6).m4659a(1, 7134680764226757436L).m4660a(3);
        m4671a.m4667a("phoneNumber", 9).m4659a(3, 5453401413036372382L).m4660a(2048).m4657b(63, 1624724291805176802L);
        m4671a.m4667a("phoneAsRaw", 9).m4659a(6, 369057754965915632L);
        m4671a.m4667a("numberOfMissedCalls", 5).m4659a(4, 5843505831000364739L).m4660a(4);
        m4671a.m4667a("lastMissedCall", 6).m4659a(5, 4367284721656454634L).m4660a(4);
        m4671a.m4667a("missedCallType", 5).m4659a(7, 7285280901156654483L).m4660a(4);
        m4671a.m4665b();
    }

    private static void buildEntityOBPref(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("OBPref");
        m4671a.m4668a(27, 5723030782171518726L).m4664b(3, 6196490715777306388L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 7135754577059984529L).m4660a(3);
        m4671a.m4667a("key", 9).m4659a(2, 3253459735111153500L);
        m4671a.m4667a("value", 9).m4659a(3, 6196490715777306388L);
        m4671a.m4665b();
    }

    private static void buildEntityPersonalStoreItemUrlData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("PersonalStoreItemUrlData");
        m4671a.m4668a(38, 270058765129672319L).m4664b(5, 8530180272219688986L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 4882533645695812274L).m4660a(1);
        m4671a.m4667a("personalStoreItemUrl", 9).m4659a(2, 4418532286729037564L);
        m4671a.m4667a("personalStoreItemType", 5).m4659a(5, 8530180272219688986L).m4660a(2);
        m4671a.m4667a("type", 5).m4659a(3, 780270362704369760L).m4660a(4);
        m4671a.m4667a("isUploaded", 1).m4659a(4, 4465708069467585247L).m4660a(4);
        m4671a.m4665b();
    }

    private static void buildEntityPersonalStoreItemUserData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("PersonalStoreItemUserData");
        m4671a.m4668a(41, 4702851153220256188L).m4664b(5, 669833676706196513L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 2711062568182433090L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(4, 7225423761585904523L).m4660a(2048).m4657b(67, 5740044825872996760L);
        m4671a.m4667a("personalStoreItemType", 5).m4659a(5, 669833676706196513L).m4660a(2);
        m4671a.m4666a("personalStoreItemUrlDataToOneId", "PersonalStoreItemUrlData", "personalStoreItemUrlDataToOne", 11).m4659a(3, 7951909736891753897L).m4660a(1548).m4657b(66, 6628815527088560807L);
        m4671a.m4665b();
    }

    private static void buildEntityPreferredSimData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("PreferredSimData");
        m4671a.m4668a(45, 1095609379023772560L).m4664b(3, 8280433291292479225L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 9030769598536458605L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 1774522840999357683L).m4660a(2048).m4657b(70, 4335253268414893694L);
        m4671a.m4667a("simId", 5).m4659a(3, 8280433291292479225L).m4660a(2);
        m4671a.m4665b();
    }

    private static void buildEntityProfileViewedData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("ProfileViewedData");
        m4671a.m4668a(49, 9113904861932490529L).m4664b(8, 1548989312789025872L);
        m4671a.m4667a("id", 6).m4659a(1, 4906911631631149332L).m4660a(1);
        m4671a.m4667a("phoneNumber", 9).m4659a(2, 2835081024161836092L);
        m4671a.m4667a("entrypoint", 5).m4659a(8, 1548989312789025872L).m4660a(2);
        m4671a.m4667a("lastViewed", 6).m4659a(4, 6821842514748884296L).m4660a(4);
        m4671a.m4667a("name", 9).m4659a(5, 1787518823941869076L);
        m4671a.m4667a("counter", 5).m4659a(6, 405216608698807107L).m4660a(4);
        m4671a.m4667a("type", 5).m4659a(7, 6341039314155736518L).m4660a(2);
        m4671a.m4665b();
    }

    private static void buildEntityPromotion(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("Promotion");
        m4671a.m4668a(34, 9220619888730505978L).m4664b(8, 7055014347954408034L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 7052498574530957591L).m4660a(1);
        m4671a.m4667a("numberToGetGift", 5).m4659a(2, 2299417631643913431L).m4660a(4);
        m4671a.m4667a("currentNumberToGetGift", 5).m4659a(3, 7053374447263936090L).m4660a(4);
        m4671a.m4667a("typeToBuyToGetGift", 5).m4659a(4, 4957705295223735418L).m4660a(2);
        m4671a.m4667a("numberOfGift", 5).m4659a(5, 7409869217500942773L).m4660a(4);
        m4671a.m4667a("numberOfUsedGift", 5).m4659a(6, 7604757856689140431L).m4660a(4);
        m4671a.m4667a("expiredDate", 10).m4659a(7, 4911025383551378505L);
        m4671a.m4667a("typeOfGift", 5).m4659a(8, 7055014347954408034L).m4660a(2);
        m4671a.m4665b();
    }

    private static void buildEntityRecorderTestData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("RecorderTestData");
        m4671a.m4668a(44, 7750090380329518799L).m4664b(10, 7525157629499162929L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 8757194204678750674L).m4660a(1);
        m4671a.m4667a("audioMethod", 5).m4659a(2, 6584907819451494984L).m4660a(2);
        m4671a.m4667a("audioSource", 5).m4659a(3, 2597757748319858341L).m4660a(2);
        m4671a.m4667a("outputFormat", 5).m4659a(4, 5821017792564918320L).m4660a(2);
        m4671a.m4667a("testStatus", 5).m4659a(5, 8895381207430035294L).m4660a(2);
        m4671a.m4667a("testPriority", 5).m4659a(6, 6069267100407300323L).m4660a(4);
        m4671a.m4667a("recordTime", 6).m4659a(7, 7446861249673519317L).m4660a(4);
        m4671a.m4667a("volumeLevel", 5).m4659a(8, 4019857442187132955L).m4660a(2);
        m4671a.m4667a("forceInCommunicationMode", 1).m4659a(9, 5276548519753264257L).m4660a(4);
        m4671a.m4666a("callRecorderId", "CallRecorder", "callRecorder", 11).m4659a(10, 7525157629499162929L).m4660a(1548).m4657b(68, 4353096070001000910L);
        m4671a.m4665b();
    }

    private static void buildEntityReferAndEarnData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("ReferAndEarnData");
        m4671a.m4668a(46, 5941721314824378325L).m4664b(6, 6100218871584069757L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 2113030359095875544L).m4660a(3);
        m4671a.m4667a("referId", 9).m4659a(3, 5134629470868568970L);
        m4671a.m4667a("earnedPoints", 5).m4659a(6, 6100218871584069757L).m4660a(4);
        m4671a.m4665b();
    }

    private static void buildEntityReferAndEarnUserData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("ReferAndEarnUserData");
        m4671a.m4668a(47, 2103933601406400529L).m4664b(8, 7527364285002207906L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 8649016282554152317L).m4660a(3);
        m4671a.m4667a("globalPhoneNumber", 9).m4659a(6, 5393675993754880779L).m4660a(2048).m4657b(86, 5461712547104436835L);
        m4671a.m4667a("nameOrNumber", 9).m4659a(7, 8455565677699034502L);
        m4671a.m4667a("date", 6).m4659a(8, 7527364285002207906L).m4660a(4);
        m4671a.m4667a("status", 5).m4659a(3, 3373282396143043000L).m4660a(2);
        m4671a.m4666a("referAndEarnDataToOneId", "ReferAndEarnData", "referAndEarnDataToOne", 11).m4659a(4, 2398377500512673528L).m4660a(1548).m4657b(84, 1122638518649647077L);
        m4671a.m4665b();
    }

    private static void buildEntitySingleMissedCallData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("SingleMissedCallData");
        m4671a.m4668a(42, 8585317615205762711L).m4664b(7, 1116368970461781181L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 1394554808170482806L).m4660a(3);
        m4671a.m4667a(Constants.EXTRA_CONTACT_ID, 6).m4659a(2, 2536260377536076588L).m4660a(4);
        m4671a.m4667a("phoneAsRaw", 9).m4659a(7, 1116368970461781181L);
        m4671a.m4667a("missedCallTime", 6).m4659a(4, 4530602791124760060L).m4660a(4);
        m4671a.m4667a("numberOfMissedCalls", 5).m4659a(5, 233489563456603169L).m4660a(4);
        m4671a.m4667a("missedCallType", 5).m4659a(6, 6565616446047173518L).m4660a(4);
        m4671a.m4665b();
    }

    private static void buildEntitySingleSmsData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("SingleSmsData");
        m4671a.m4668a(30, 4797107195383294197L).m4664b(9, 8817829924034438914L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(9, 8817829924034438914L).m4660a(1);
        m4671a.m4667a(Constants.EXTRA_CONTACT_ID, 6).m4659a(1, 6783962138124791752L).m4660a(4);
        m4671a.m4667a(SingleSmsData.EXTRA_SMS_TEXT, 9).m4659a(2, 8190389501426851617L);
        m4671a.m4667a(Constants.EXTRA_PHONE_NUMBER, 9).m4659a(3, 3445334011434564722L);
        m4671a.m4667a(ContactDetailsActivity.EXTRA_FULL_NAME, 9).m4659a(6, 3602849476838985612L);
        m4671a.m4665b();
    }

    private static void buildEntitySpamData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("SpamData");
        m4671a.m4668a(28, 6175686183918444768L).m4664b(3, 2507974760880766666L);
        m4671a.m4667a("id", 6).m4659a(1, 103861178024910651L).m4660a(1);
        m4671a.m4667a("phoneAsRaw", 9).m4659a(2, 5947053024872589006L).m4660a(2048).m4657b(39, 2143760826125288025L);
        m4671a.m4667a("when", 6).m4659a(3, 2507974760880766666L).m4660a(12).m4657b(40, 4374158371677998609L);
        m4671a.m4665b();
    }

    private static void buildEntitySuggestContactData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("SuggestContactData");
        m4671a.m4668a(16, 4453247237738611575L).m4664b(6, 1510306739259487167L);
        m4671a.m4667a("id", 6).m4659a(1, 6434852240419020883L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 1517783412071789623L).m4660a(2048).m4657b(21, 1576354949641703807L);
        m4671a.m4667a("socialNetworkId", 5).m4659a(3, 1712508761966664446L).m4660a(12).m4657b(22, 3849854559412902168L);
        m4671a.m4667a("profileId", 9).m4659a(4, 1408840834892955113L);
        m4671a.m4667a("userName", 9).m4659a(5, 5928618045979070659L).m4660a(2048).m4657b(23, 5070933193805242419L);
        m4671a.m4667a("contactName", 9).m4659a(6, 1510306739259487167L);
        m4671a.m4665b();
    }

    private static void buildEntitySyncerData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("SyncerData");
        m4671a.m4668a(23, 4744909137374425955L).m4664b(3, 7889340251512954834L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 7481095054496994377L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(3, 7889340251512954834L).m4660a(2048).m4657b(33, 1717888888309115349L);
        m4671a.m4665b();
    }

    private static void buildEntitySyncerDetails(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("SyncerDetails");
        m4671a.m4668a(24, 884922060965788121L).m4664b(7, 1284267189587569322L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 8784227264020534905L).m4660a(3);
        m4671a.m4667a("syncerKeyName", 9).m4659a(2, 96954994583782425L).m4660a(2048).m4657b(34, 8693402364472978257L);
        m4671a.m4667a("lastSyncDate", 6).m4659a(6, 2986218176759405569L).m4660a(4);
        m4671a.m4666a("syncerDataId", "SyncerData", "syncerData", 11).m4659a(7, 1284267189587569322L).m4660a(1548).m4657b(35, 2244088553040323978L);
        m4671a.m4665b();
    }

    private static void buildEntityUsageCounterData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("UsageCounterData");
        m4671a.m4668a(17, 2860779603509031276L).m4664b(5, 1683893995760262067L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 2005710026600460322L).m4660a(1);
        m4671a.m4667a("socialNetworkId", 5).m4659a(2, 7621554013583237565L).m4660a(12).m4657b(24, 9189192069955565281L);
        m4671a.m4667a("netCallType", 5).m4659a(3, 5206260753377466398L).m4660a(12).m4657b(27, 2707369524843353696L);
        m4671a.m4667a("count", 6).m4659a(4, 2987316656398965891L).m4660a(4);
        m4671a.m4667a("date", 6).m4659a(5, 1683893995760262067L).m4660a(4);
        m4671a.m4665b();
    }

    private static void buildEntityUserCorrectedData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("UserCorrectedData");
        m4671a.m4668a(14, 6630232344399157334L).m4664b(5, 4217952885109701774L);
        m4671a.m4667a("id", 6).m4659a(1, 6816931706690853139L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 4713927824362051043L).m4660a(2048).m4657b(19, 308446815824247361L);
        m4671a.m4667a(ContactDetailsActivity.EXTRA_FULL_NAME, 9).m4659a(5, 4217952885109701774L);
        m4671a.m4667a("userCorrectedType", 5).m4659a(4, 7685424554594306313L).m4660a(4);
        m4671a.m4665b();
    }

    private static void buildEntityUserCorrectedPositiveData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("UserCorrectedPositiveData");
        m4671a.m4668a(15, 2672168031608336744L).m4664b(4, 8625331153491291135L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 5634482370481707965L).m4660a(1);
        m4671a.m4667a("socialNetworkId", 5).m4659a(2, 4358347641201993668L).m4660a(4);
        m4671a.m4667a("profileId", 9).m4659a(3, 7321572107341316708L);
        m4671a.m4666a("userCorrectedDataId", "UserCorrectedData", "userCorrectedData", 11).m4659a(4, 8625331153491291135L).m4660a(1548).m4657b(20, 1672796393996577003L);
        m4671a.m4665b();
    }

    private static void buildEntityUserMediaData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("UserMediaData");
        m4671a.m4668a(12, 1528036708591623642L).m4664b(3, 4315637917061356465L);
        m4671a.m4667a("id", 6).m4659a(1, 4137609755256607245L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 5758059721148487178L).m4660a(2048).m4657b(14, 1864497052315481459L);
        m4671a.m4667a("photoUrl", 9).m4659a(3, 4315637917061356465L);
        m4671a.m4665b();
    }

    private static void buildEntityUserNegativePositiveData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("UserNegativePositiveData");
        m4671a.m4668a(19, 286632623073522052L).m4664b(2, 4298530053099970914L);
        m4671a.m4667a("id", 6).m4659a(1, 1539442054557750806L).m4660a(3);
        m4671a.m4667a("phoneOrIdKey", 9).m4659a(2, 4298530053099970914L).m4660a(2048).m4657b(28, 3885449644255566378L);
        m4671a.m4665b();
    }

    private static void buildEntityUserNegativeSocialData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("UserNegativeSocialData");
        m4671a.m4668a(20, 7520636210633954949L).m4664b(4, 7975183207846968412L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 5943346226090289578L).m4660a(3);
        m4671a.m4667a("socialNetworkId", 5).m4659a(2, 7939855318936890542L).m4660a(4);
        m4671a.m4667a("profileId", 9).m4659a(3, 6334592914045644560L);
        m4671a.m4666a("userNegativeDataId", "UserNegativePositiveData", "userNegativeData", 11).m4659a(4, 7975183207846968412L).m4660a(1548).m4657b(29, 9129278488546335589L);
        m4671a.m4665b();
    }

    private static void buildEntityUserPositiveSocialData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("UserPositiveSocialData");
        m4671a.m4668a(21, 7178035316747387668L).m4664b(5, 1883346438977018807L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 4850002831434578659L).m4660a(3);
        m4671a.m4667a("socialNetworkId", 5).m4659a(2, 8380108828623159201L).m4660a(4);
        m4671a.m4667a("profileId", 9).m4659a(3, 740323606006912375L);
        m4671a.m4667a("sure", 1).m4659a(4, 6473805135875570036L).m4660a(4);
        m4671a.m4666a("userPositiveDataId", "UserNegativePositiveData", "userPositiveData", 11).m4659a(5, 1883346438977018807L).m4660a(1548).m4657b(30, 6712291684743611533L);
        m4671a.m4665b();
    }

    private static void buildEntityUserSpamData(C17974e c17974e) {
        C17974e.C17975a m4671a = c17974e.m4671a("UserSpamData");
        m4671a.m4668a(3, 1254659978540932318L).m4664b(4, 3037411130573338277L);
        m4671a.m4669a();
        m4671a.m4667a("id", 6).m4659a(1, 8437757477601609472L).m4660a(1);
        m4671a.m4667a(Constants.EXTRA_PHONE_NUMBER, 9).m4659a(2, 8911806248629202519L).m4660a(2048).m4657b(3, 4505074677814329148L);
        m4671a.m4667a("spamScore", 1).m4659a(4, 3037411130573338277L).m4660a(2);
        m4671a.m4665b();
    }

    public static C17947b builder() {
        C17947b c17947b = new C17947b(getModel());
        c17947b.m4693a((AbstractC17957c<?>) ProfileViewedData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) RecorderTestData_.f27480d);
        c17947b.m4693a((AbstractC17957c<?>) ReferAndEarnData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) ReferAndEarnUserData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) AnalyticsCallsData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) AnalyticsExcludeContact_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) BirthdayData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) BlockedNumberData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) BlockedRule_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) CacheData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) CallRecorder_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) CallReminderFrequentData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) CallRemindersData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) ChosenContactPhoto_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) CommonSpammer_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) ContactLookupData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) ExtractedInfo_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) FastCacheData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) IMExtractedPhotoData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) IncognitoData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) JSONExternalSourceContactOBEntity_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) MissedCallCardIds_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) OBPref_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) PersonalStoreItemUrlData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) PersonalStoreItemUserData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) PreferredSimData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) Promotion_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) SingleMissedCallData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) SingleSmsData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) SpamData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) SuggestContactData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) UserCorrectedData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) UserCorrectedPositiveData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) UserMediaData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) UserNegativePositiveData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) UserNegativeSocialData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) UserPositiveSocialData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) UserSpamData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) UsageCounterData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) SyncerData_.__INSTANCE);
        c17947b.m4693a((AbstractC17957c<?>) SyncerDetails_.__INSTANCE);
        return c17947b;
    }

    private static byte[] getModel() {
        C17974e c17974e = new C17974e();
        c17974e.f62772d = 49;
        c17974e.f62773e = 9113904861932490529L;
        c17974e.f62774f = 86;
        c17974e.f62775g = 5461712547104436835L;
        c17974e.f62776h = 0;
        c17974e.f62777i = 0L;
        buildEntityProfileViewedData(c17974e);
        buildEntityRecorderTestData(c17974e);
        buildEntityReferAndEarnData(c17974e);
        buildEntityReferAndEarnUserData(c17974e);
        buildEntityAnalyticsCallsData(c17974e);
        buildEntityAnalyticsExcludeContact(c17974e);
        buildEntityBirthdayData(c17974e);
        buildEntityBlockedNumberData(c17974e);
        buildEntityBlockedRule(c17974e);
        buildEntityCacheData(c17974e);
        buildEntityCallRecorder(c17974e);
        buildEntityCallReminderFrequentData(c17974e);
        buildEntityCallRemindersData(c17974e);
        buildEntityChosenContactPhoto(c17974e);
        buildEntityCommonSpammer(c17974e);
        buildEntityContactLookupData(c17974e);
        buildEntityExtractedInfo(c17974e);
        buildEntityFastCacheData(c17974e);
        buildEntityIMExtractedPhotoData(c17974e);
        buildEntityIncognitoData(c17974e);
        buildEntityJSONExternalSourceContactOBEntity(c17974e);
        buildEntityMissedCallCardIds(c17974e);
        buildEntityOBPref(c17974e);
        buildEntityPersonalStoreItemUrlData(c17974e);
        buildEntityPersonalStoreItemUserData(c17974e);
        buildEntityPreferredSimData(c17974e);
        buildEntityPromotion(c17974e);
        buildEntitySingleMissedCallData(c17974e);
        buildEntitySingleSmsData(c17974e);
        buildEntitySpamData(c17974e);
        buildEntitySuggestContactData(c17974e);
        buildEntityUserCorrectedData(c17974e);
        buildEntityUserCorrectedPositiveData(c17974e);
        buildEntityUserMediaData(c17974e);
        buildEntityUserNegativePositiveData(c17974e);
        buildEntityUserNegativeSocialData(c17974e);
        buildEntityUserPositiveSocialData(c17974e);
        buildEntityUserSpamData(c17974e);
        buildEntityUsageCounterData(c17974e);
        buildEntitySyncerData(c17974e);
        buildEntitySyncerDetails(c17974e);
        int m8026a = c17974e.f62769a.m8026a("default");
        int m4670a = c17974e.m4670a(c17974e.f62770b);
        Model.startModel(c17974e.f62769a);
        Model.addName(c17974e.f62769a, m8026a);
        Model.addModelVersion(c17974e.f62769a, 2L);
        Model.addVersion(c17974e.f62769a, 1L);
        Model.addEntities(c17974e.f62769a, m4670a);
        if (c17974e.f62772d != null) {
            Model.addLastEntityId(c17974e.f62769a, IdUid.createIdUid(c17974e.f62769a, c17974e.f62772d.intValue(), c17974e.f62773e.longValue()));
        }
        if (c17974e.f62774f != null) {
            Model.addLastIndexId(c17974e.f62769a, IdUid.createIdUid(c17974e.f62769a, c17974e.f62774f.intValue(), c17974e.f62775g.longValue()));
        }
        if (c17974e.f62776h != null) {
            Model.addLastRelationId(c17974e.f62769a, IdUid.createIdUid(c17974e.f62769a, c17974e.f62776h.intValue(), c17974e.f62777i.longValue()));
        }
        c17974e.f62769a.m8018b(Model.endModel(c17974e.f62769a), false);
        return c17974e.f62769a.m8014d();
    }
}
