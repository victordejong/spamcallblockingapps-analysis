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
import io.objectbox.b;
import io.objectbox.c;
import io.objectbox.e;
import io.objectbox.model.IdUid;
import io.objectbox.model.Model;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/MyObjectBox.class */
public class MyObjectBox {
    private static void buildEntityAnalyticsCallsData(e eVar) {
        e.a a2 = eVar.a("AnalyticsCallsData");
        a2.a(43, 5709857310183866993L).b(16, 5820400086941657927L);
        a2.a("id", 6).a(1, 2040496040374714281L).a(3);
        a2.a("date", 6).a(2, 5509813520960730156L).a(4);
        a2.a("callType", 5).a(3, 3918168716495197524L).a(2);
        a2.a("dayType", 5).a(4, 1300925204611616994L).a(2);
        a2.a("simId", 5).a(5, 8942891734568950860L).a(2);
        a2.a("phoneAsGlobal", 9).a(7, 6860868426315387187L);
        a2.a(VastIconXmlManager.DURATION, 6).a(8, 5363915237632896604L).a(4);
        a2.a("isSpam", 1).a(9, 2685002476555488926L).a(4);
        a2.a("isBlock", 1).a(10, 3934218020966828257L).a(4);
        a2.a("isPrivate", 1).a(11, 7991521300754697371L).a(4);
        a2.a("isIncognito", 1).a(12, 1358040309271940567L).a(4);
        a2.a("isConference", 1).a(13, 1194391692562819562L).a(4);
        a2.a("isInternational", 1).a(14, 4562032924415814957L).a(4);
        a2.a("isIdentified", 1).a(15, 5618005031171802117L).a(4);
        a2.a("isExclude", 1).a(16, 5820400086941657927L).a(4);
        a2.b();
    }

    private static void buildEntityAnalyticsExcludeContact(e eVar) {
        e.a a2 = eVar.a("AnalyticsExcludeContact");
        a2.a(48, 7741942680764670272L).b(2, 6952966447818972784L);
        a2.a("id", 6).a(1, 3287199374381418388L).a(3);
        a2.a("phoneAsGlobal", 9).a(2, 6952966447818972784L);
        a2.b();
    }

    private static void buildEntityBirthdayData(e eVar) {
        e.a a2 = eVar.a("BirthdayData");
        a2.a(22, 353656924772909212L).b(7, 3348411438641315973L);
        a2.a("id", 6).a(1, 8438025153028963194L).a(3);
        a2.a("phoneOrIdKey", 9).a(2, 9156240785498701668L).a(2048).b(31, 1073365482339825356L);
        a2.a("dayOfMonth", 5).a(3, 688231497609748745L).a(12).b(42, 6995863539965857694L);
        a2.a("month", 5).a(4, 875048273620571153L).a(12).b(43, 9121867270480229292L);
        a2.a("socialNetId", 5).a(5, 3236989948006978974L).a(4);
        a2.a("socialProfileId", 9).a(6, 902473234006063657L);
        a2.a("displayName", 9).a(7, 3348411438641315973L);
        a2.b();
    }

    private static void buildEntityBlockedNumberData(e eVar) {
        e.a a2 = eVar.a("BlockedNumberData");
        a2.a(1, 8248488025029928591L).b(6, 3538305610080013788L);
        a2.a("id", 6).a(1, 4715991556628672043L).a(1);
        a2.a("phoneNum", 9).a(2, 4443021464182167411L).a(2048).b(1, 5335627059248470606L);
        a2.a(ContactDetailsActivity.EXTRA_FULL_NAME, 9).a(3, 9120642647349600724L);
        a2.a("blockSms", 1).a(4, 4346845344243459612L).a(12).b(44, 6638668918726117181L);
        a2.a("blockCall", 1).a(5, 263997857360937285L).a(12).b(45, 2068346409548756851L);
        a2.a("when", 6).a(6, 3538305610080013788L).a(12).b(69, 537727657282947609L);
        a2.b();
    }

    private static void buildEntityBlockedRule(e eVar) {
        e.a a2 = eVar.a("BlockedRule");
        a2.a(2, 6437072158938229905L).b(3, 2729891679818893774L);
        a2.a("id", 6).a(1, 8521456818611816941L).a(1);
        a2.a("rawNumber", 9).a(2, 6081723819950158310L).a(2048).b(2, 3324087953654761821L);
        a2.a("blockRuleType", 5).a(3, 2729891679818893774L).a(10).b(46, 5888236315314138941L);
        a2.b();
    }

    private static void buildEntityCacheData(e eVar) {
        e.a a2 = eVar.a("CacheData");
        a2.a(25, 5708167761838449515L).b(9, 5070459076342167098L);
        a2.a();
        a2.a("id", 6).a(1, 3209067479556321571L).a(1);
        a2.a("file", 9).a(2, 538874191487985073L).a(2048).b(36, 517663985738448632L);
        a2.a("expires", 10).a(3, 7430404870615061097L).a(8).b(37, 170989684080791773L);
        a2.a("valueType", 9).a(4, 9055005535681396507L);
        a2.a("stringVal", 9).a(5, 4700129149717824753L);
        a2.a("longVal", 6).a(6, 3394365282566646719L).a(2);
        a2.a("booleanVal", 1).a(7, 8104882351724571401L).a(2);
        a2.a("integerVal", 5).a(8, 2143169321066802804L).a(2);
        a2.a("bytesVal", 23).a(9, 5070459076342167098L);
        a2.b();
    }

    private static void buildEntityCallRecorder(e eVar) {
        e.a a2 = eVar.a("CallRecorder");
        a2.a(10, 5703800094340710850L).b(9, 8905165326996125722L);
        a2.a("id", 6).a(1, 8635350705360816394L).a(3);
        a2.a("phoneOrIdKey", 9).a(2, 1748859429311224092L).a(2048).b(10, 2732780898947200681L);
        a2.a("date", 6).a(3, 8144065716960176956L).a(12).b(11, 707637524940212799L);
        a2.a("fileName", 9).a(4, 460940582553783003L);
        a2.a(VastIconXmlManager.DURATION, 6).a(5, 2632485258670330590L).a(4);
        a2.a("starred", 1).a(6, 170686882156353295L).a(12).b(12, 5120532386698365170L);
        a2.a("note", 9).a(7, 1402169436374606696L);
        a2.a("callType", 5).a(8, 2206426613377860489L).a(4);
        a2.a("isUploaded", 1).a(9, 8905165326996125722L).a(4);
        a2.b();
    }

    private static void buildEntityCallReminderFrequentData(e eVar) {
        e.a a2 = eVar.a("CallReminderFrequentData");
        a2.a(37, 6147705632270751031L).b(10, 7331224933277417836L);
        a2.a();
        a2.a("id", 6).a(1, 5428193466528024349L).a(3);
        a2.a("phoneAsGlobal", 9).a(2, 5848485133638169024L);
        a2.a("frequentType", 5).a(3, 2405216307869197893L).a(2);
        a2.a("deleteTimeStamp", 6).a(7, 1781893565876495861L).a(4);
        a2.a("missedCallType", 5).a(8, 7855265064345850860L).a(4);
        a2.a("lastDeleteFromNotificationTimeStamp", 6).a(10, 7331224933277417836L).a(4);
        a2.b();
    }

    private static void buildEntityCallRemindersData(e eVar) {
        e.a a2 = eVar.a("CallRemindersData");
        a2.a(7, 3868573406589413935L).b(10, 8918448017337682648L);
        a2.a();
        a2.a("id", 6).a(1, 6407966342435426139L).a(3);
        a2.a("date", 10).a(2, 8943886145480392043L);
        a2.a("displayName", 9).a(3, 8989996262216128844L);
        a2.a("phoneAsRaw", 9).a(8, 1101623702538710623L);
        a2.a("jobStringId", 9).a(10, 8918448017337682648L);
        a2.a("notificationTime", 6).a(5, 454571292269867776L).a(10).b(6, 8881360785868211904L);
        a2.a("notificationId", 6).a(6, 5911681822092193193L).a(10).b(47, 1969048126033727636L);
        a2.b();
    }

    private static void buildEntityChosenContactPhoto(e eVar) {
        e.a a2 = eVar.a("ChosenContactPhoto");
        a2.a(11, 7481663278051499513L).b(4, 2119046007826719203L);
        a2.a("id", 6).a(1, 8317600365687317141L).a(3);
        a2.a("phoneOrIdKey", 9).a(2, 4310579783204666841L).a(2048).b(13, 8913329150665347661L);
        a2.a("dataSource", 9).a(3, 4961902622340699733L);
        a2.a("url", 9).a(4, 2119046007826719203L);
        a2.b();
    }

    private static void buildEntityCommonSpammer(e eVar) {
        e.a a2 = eVar.a("CommonSpammer");
        a2.a(9, 6557064299440973235L).b(4, 8456070995570496411L);
        a2.a("id", 6).a(1, 9039880574919020243L).a(3);
        a2.a("commonSpammerName", 9).a(2, 1084791855977124767L);
        a2.a("commonSpammerPhone", 9).a(3, 1684050353536041713L).a(2048).b(7, 839489213928164162L);
        a2.a("commonSpammerScore", 5).a(4, 8456070995570496411L).a(4);
        a2.b();
    }

    private static void buildEntityContactLookupData(e eVar) {
        e.a a2 = eVar.a("ContactLookupData");
        a2.a(8, 5163303006374422614L).b(16, 8643367479952373708L);
        a2.a();
        a2.a("id", 6).a(1, 3558229391919111750L).a(1);
        a2.a("lookupKey", 9).a(2, 8661021494185129456L).a(2048).b(8, 3844674125226349010L);
        a2.a(Constants.EXTRA_CONTACT_ID, 6).a(3, 1533398423883631007L).a(12).b(9, 5190814314391937923L);
        a2.a("phoneNumbers", 9).a(5, 2329956106123129365L);
        a2.a("nameT9Format", 9).a(6, 8310924237104462526L).a(2048).b(71, 4620292569523419580L);
        a2.a("nameT9FormatNoZero", 9).a(7, 2498982477813391220L).a(2048).b(72, 8887704783456583960L);
        a2.a("displayName", 9).a(8, 2273261731546834947L).a(2048).b(73, 7567355195188522225L);
        a2.a("unAccentName", 9).a(9, 9154126834823532594L).a(2048).b(74, 8061967295987430040L);
        a2.a("description", 9).a(12, 4897474586731782405L).a(2048).b(80, 4656685739526019174L);
        a2.a("unAccentDescription", 9).a(13, 7229260947994727967L).a(2048).b(81, 2289646955332701967L);
        a2.a("t9Indexes", 9).a(14, 5430697607453471458L);
        a2.a("namesMap", 9).a(15, 8581877397025012872L);
        a2.a("descriptionMap", 9).a(16, 8643367479952373708L);
        a2.b();
    }

    private static void buildEntityExtractedInfo(e eVar) {
        e.a a2 = eVar.a("ExtractedInfo");
        a2.a(13, 2088847983825318043L).b(20, 4173938297026424427L);
        a2.a();
        a2.a("id", 6).a(1, 193225752544276874L).a(3);
        a2.a("recognizedPersonOrigin", 5).a(2, 6111202344002010091L).a(10).b(16, 190710179216686285L);
        a2.a("comType", 5).a(3, 3367056408129031539L).a(2);
        a2.a("senderName", 9).a(4, 4838588001255337974L);
        a2.a("groupName", 9).a(5, 6401790120402015401L);
        a2.a("phoneAsRaw", 9).a(6, 4698224805585235698L).a(2048).b(15, 122945135813576338L);
        a2.a("when", 6).a(7, 1569229740442429562L).a(12).b(17, 4253396219525997169L);
        a2.a("firstSeen", 6).a(8, 7436004828139063991L).a(4);
        a2.a("lastNotificationShowed", 6).a(9, 4342117134994092191L).a(4);
        a2.a("seenCount", 5).a(10, 1707034101985973392L).a(4);
        a2.a("disableNotification", 1).a(11, 235287868596735829L).a(12).b(18, 7140782039587905726L);
        a2.a("starred", 1).a(13, 2090494253306682226L).a(12).b(41, 5390043773793505808L);
        a2.a("displayName", 9).a(14, 899653936548504941L).a(2048).b(76, 8368299416957764751L);
        a2.a("nameT9Format", 9).a(15, 4259233065943579518L).a(2048).b(77, 8690077017517969361L);
        a2.a("nameT9FormatNoZero", 9).a(16, 3063990034880310182L).a(2048).b(78, 6640855233108936088L);
        a2.a("unAccentName", 9).a(17, 8278310578983640931L).a(2048).b(79, 3647711669178092702L);
        a2.a("t9Indexes", 9).a(19, 2969326282170700328L);
        a2.a("namesMap", 9).a(20, 4173938297026424427L);
        a2.b();
    }

    private static void buildEntityFastCacheData(e eVar) {
        e.a a2 = eVar.a("FastCacheData");
        a2.a(5, 4336028034668941466L).b(12, 7473143999437282941L);
        a2.a();
        a2.a("id", 6).a(1, 7163957861178379479L).a(3);
        a2.a("phoneOrIdKey", 9).a(2, 8069175253610031820L).a(2048).b(4, 864270897578282259L);
        a2.a("expirationDate", 10).a(3, 8649708801777371907L).a(8).b(5, 7310076080760191459L);
        a2.a(ContactDetailsActivity.EXTRA_FULL_NAME, 9).a(4, 8799496669098876379L);
        a2.a("photoUrls", 9).a(10, 3377405545214875290L);
        a2.a("photoBackGroundColor", 5).a(12, 7473143999437282941L).a(2);
        a2.a("photoUrl", 9).a(5, 7868524529633488667L);
        a2.a("isSpam", 1).a(6, 6199071096225389525L).a(4);
        a2.a("photoDataSource", 9).a(7, 3354679472620004342L);
        a2.a("nameDataSource", 9).a(8, 6795432616913430878L);
        a2.b();
    }

    private static void buildEntityIMExtractedPhotoData(e eVar) {
        e.a a2 = eVar.a("IMExtractedPhotoData");
        a2.a(33, 5233620777719101370L).b(5, 3875998473570796098L);
        a2.a();
        a2.a("id", 6).a(1, 4733238570242978657L).a(3);
        a2.a("phoneOrIdKey", 9).a(2, 53134437851221970L).a(2048).b(59, 5722124751129189976L);
        a2.a("dataSource", 9).a(3, 4420645010706138969L);
        a2.a("date", 6).a(5, 3875998473570796098L).a(4);
        a2.a("url", 9).a(4, 1918069278095036068L);
        a2.b();
    }

    private static void buildEntityIncognitoData(e eVar) {
        e.a a2 = eVar.a("IncognitoData");
        a2.a(32, 4452265004366010143L).b(2, 987367836231237615L);
        a2.a();
        a2.a("id", 6).a(1, 1403879564792261610L).a(1);
        a2.a("phoneOrIdKey", 9).a(2, 987367836231237615L).a(2048).b(58, 4955582332696016594L);
        a2.b();
    }

    private static void buildEntityJSONExternalSourceContactOBEntity(e eVar) {
        e.a a2 = eVar.a("JSONExternalSourceContactOBEntity");
        a2.a(4, 8897873364271381917L).b(4, 7817601430050319982L);
        a2.a("id", 6).a(1, 1114926872777428776L).a(1);
        a2.a("externalSourceId", 5).a(2, 7432785125098048637L).a(4);
        a2.a("key", 9).a(3, 6207696946822415168L);
        a2.a("jsonDoc", 9).a(4, 7817601430050319982L);
        a2.b();
    }

    private static void buildEntityMissedCallCardIds(e eVar) {
        e.a a2 = eVar.a("MissedCallCardIds");
        a2.a(35, 8046084339427877999L).b(7, 7285280901156654483L);
        a2.a("id", 6).a(1, 7134680764226757436L).a(3);
        a2.a("phoneNumber", 9).a(3, 5453401413036372382L).a(2048).b(63, 1624724291805176802L);
        a2.a("phoneAsRaw", 9).a(6, 369057754965915632L);
        a2.a("numberOfMissedCalls", 5).a(4, 5843505831000364739L).a(4);
        a2.a("lastMissedCall", 6).a(5, 4367284721656454634L).a(4);
        a2.a("missedCallType", 5).a(7, 7285280901156654483L).a(4);
        a2.b();
    }

    private static void buildEntityOBPref(e eVar) {
        e.a a2 = eVar.a("OBPref");
        a2.a(27, 5723030782171518726L).b(3, 6196490715777306388L);
        a2.a();
        a2.a("id", 6).a(1, 7135754577059984529L).a(3);
        a2.a("key", 9).a(2, 3253459735111153500L);
        a2.a("value", 9).a(3, 6196490715777306388L);
        a2.b();
    }

    private static void buildEntityPersonalStoreItemUrlData(e eVar) {
        e.a a2 = eVar.a("PersonalStoreItemUrlData");
        a2.a(38, 270058765129672319L).b(5, 8530180272219688986L);
        a2.a();
        a2.a("id", 6).a(1, 4882533645695812274L).a(1);
        a2.a("personalStoreItemUrl", 9).a(2, 4418532286729037564L);
        a2.a("personalStoreItemType", 5).a(5, 8530180272219688986L).a(2);
        a2.a("type", 5).a(3, 780270362704369760L).a(4);
        a2.a("isUploaded", 1).a(4, 4465708069467585247L).a(4);
        a2.b();
    }

    private static void buildEntityPersonalStoreItemUserData(e eVar) {
        e.a a2 = eVar.a("PersonalStoreItemUserData");
        a2.a(41, 4702851153220256188L).b(5, 669833676706196513L);
        a2.a();
        a2.a("id", 6).a(1, 2711062568182433090L).a(3);
        a2.a("phoneOrIdKey", 9).a(4, 7225423761585904523L).a(2048).b(67, 5740044825872996760L);
        a2.a("personalStoreItemType", 5).a(5, 669833676706196513L).a(2);
        a2.a("personalStoreItemUrlDataToOneId", "PersonalStoreItemUrlData", "personalStoreItemUrlDataToOne", 11).a(3, 7951909736891753897L).a(1548).b(66, 6628815527088560807L);
        a2.b();
    }

    private static void buildEntityPreferredSimData(e eVar) {
        e.a a2 = eVar.a("PreferredSimData");
        a2.a(45, 1095609379023772560L).b(3, 8280433291292479225L);
        a2.a();
        a2.a("id", 6).a(1, 9030769598536458605L).a(3);
        a2.a("phoneOrIdKey", 9).a(2, 1774522840999357683L).a(2048).b(70, 4335253268414893694L);
        a2.a("simId", 5).a(3, 8280433291292479225L).a(2);
        a2.b();
    }

    private static void buildEntityProfileViewedData(e eVar) {
        e.a a2 = eVar.a("ProfileViewedData");
        a2.a(49, 9113904861932490529L).b(8, 1548989312789025872L);
        a2.a("id", 6).a(1, 4906911631631149332L).a(1);
        a2.a("phoneNumber", 9).a(2, 2835081024161836092L);
        a2.a("entrypoint", 5).a(8, 1548989312789025872L).a(2);
        a2.a("lastViewed", 6).a(4, 6821842514748884296L).a(4);
        a2.a("name", 9).a(5, 1787518823941869076L);
        a2.a("counter", 5).a(6, 405216608698807107L).a(4);
        a2.a("type", 5).a(7, 6341039314155736518L).a(2);
        a2.b();
    }

    private static void buildEntityPromotion(e eVar) {
        e.a a2 = eVar.a("Promotion");
        a2.a(34, 9220619888730505978L).b(8, 7055014347954408034L);
        a2.a();
        a2.a("id", 6).a(1, 7052498574530957591L).a(1);
        a2.a("numberToGetGift", 5).a(2, 2299417631643913431L).a(4);
        a2.a("currentNumberToGetGift", 5).a(3, 7053374447263936090L).a(4);
        a2.a("typeToBuyToGetGift", 5).a(4, 4957705295223735418L).a(2);
        a2.a("numberOfGift", 5).a(5, 7409869217500942773L).a(4);
        a2.a("numberOfUsedGift", 5).a(6, 7604757856689140431L).a(4);
        a2.a("expiredDate", 10).a(7, 4911025383551378505L);
        a2.a("typeOfGift", 5).a(8, 7055014347954408034L).a(2);
        a2.b();
    }

    private static void buildEntityRecorderTestData(e eVar) {
        e.a a2 = eVar.a("RecorderTestData");
        a2.a(44, 7750090380329518799L).b(10, 7525157629499162929L);
        a2.a();
        a2.a("id", 6).a(1, 8757194204678750674L).a(1);
        a2.a("audioMethod", 5).a(2, 6584907819451494984L).a(2);
        a2.a("audioSource", 5).a(3, 2597757748319858341L).a(2);
        a2.a("outputFormat", 5).a(4, 5821017792564918320L).a(2);
        a2.a("testStatus", 5).a(5, 8895381207430035294L).a(2);
        a2.a("testPriority", 5).a(6, 6069267100407300323L).a(4);
        a2.a("recordTime", 6).a(7, 7446861249673519317L).a(4);
        a2.a("volumeLevel", 5).a(8, 4019857442187132955L).a(2);
        a2.a("forceInCommunicationMode", 1).a(9, 5276548519753264257L).a(4);
        a2.a("callRecorderId", "CallRecorder", "callRecorder", 11).a(10, 7525157629499162929L).a(1548).b(68, 4353096070001000910L);
        a2.b();
    }

    private static void buildEntityReferAndEarnData(e eVar) {
        e.a a2 = eVar.a("ReferAndEarnData");
        a2.a(46, 5941721314824378325L).b(6, 6100218871584069757L);
        a2.a();
        a2.a("id", 6).a(1, 2113030359095875544L).a(3);
        a2.a("referId", 9).a(3, 5134629470868568970L);
        a2.a("earnedPoints", 5).a(6, 6100218871584069757L).a(4);
        a2.b();
    }

    private static void buildEntityReferAndEarnUserData(e eVar) {
        e.a a2 = eVar.a("ReferAndEarnUserData");
        a2.a(47, 2103933601406400529L).b(8, 7527364285002207906L);
        a2.a();
        a2.a("id", 6).a(1, 8649016282554152317L).a(3);
        a2.a("globalPhoneNumber", 9).a(6, 5393675993754880779L).a(2048).b(86, 5461712547104436835L);
        a2.a("nameOrNumber", 9).a(7, 8455565677699034502L);
        a2.a("date", 6).a(8, 7527364285002207906L).a(4);
        a2.a("status", 5).a(3, 3373282396143043000L).a(2);
        a2.a("referAndEarnDataToOneId", "ReferAndEarnData", "referAndEarnDataToOne", 11).a(4, 2398377500512673528L).a(1548).b(84, 1122638518649647077L);
        a2.b();
    }

    private static void buildEntitySingleMissedCallData(e eVar) {
        e.a a2 = eVar.a("SingleMissedCallData");
        a2.a(42, 8585317615205762711L).b(7, 1116368970461781181L);
        a2.a();
        a2.a("id", 6).a(1, 1394554808170482806L).a(3);
        a2.a(Constants.EXTRA_CONTACT_ID, 6).a(2, 2536260377536076588L).a(4);
        a2.a("phoneAsRaw", 9).a(7, 1116368970461781181L);
        a2.a("missedCallTime", 6).a(4, 4530602791124760060L).a(4);
        a2.a("numberOfMissedCalls", 5).a(5, 233489563456603169L).a(4);
        a2.a("missedCallType", 5).a(6, 6565616446047173518L).a(4);
        a2.b();
    }

    private static void buildEntitySingleSmsData(e eVar) {
        e.a a2 = eVar.a("SingleSmsData");
        a2.a(30, 4797107195383294197L).b(9, 8817829924034438914L);
        a2.a();
        a2.a("id", 6).a(9, 8817829924034438914L).a(1);
        a2.a(Constants.EXTRA_CONTACT_ID, 6).a(1, 6783962138124791752L).a(4);
        a2.a(SingleSmsData.EXTRA_SMS_TEXT, 9).a(2, 8190389501426851617L);
        a2.a(Constants.EXTRA_PHONE_NUMBER, 9).a(3, 3445334011434564722L);
        a2.a(ContactDetailsActivity.EXTRA_FULL_NAME, 9).a(6, 3602849476838985612L);
        a2.b();
    }

    private static void buildEntitySpamData(e eVar) {
        e.a a2 = eVar.a("SpamData");
        a2.a(28, 6175686183918444768L).b(3, 2507974760880766666L);
        a2.a("id", 6).a(1, 103861178024910651L).a(1);
        a2.a("phoneAsRaw", 9).a(2, 5947053024872589006L).a(2048).b(39, 2143760826125288025L);
        a2.a("when", 6).a(3, 2507974760880766666L).a(12).b(40, 4374158371677998609L);
        a2.b();
    }

    private static void buildEntitySuggestContactData(e eVar) {
        e.a a2 = eVar.a("SuggestContactData");
        a2.a(16, 4453247237738611575L).b(6, 1510306739259487167L);
        a2.a("id", 6).a(1, 6434852240419020883L).a(3);
        a2.a("phoneOrIdKey", 9).a(2, 1517783412071789623L).a(2048).b(21, 1576354949641703807L);
        a2.a("socialNetworkId", 5).a(3, 1712508761966664446L).a(12).b(22, 3849854559412902168L);
        a2.a("profileId", 9).a(4, 1408840834892955113L);
        a2.a("userName", 9).a(5, 5928618045979070659L).a(2048).b(23, 5070933193805242419L);
        a2.a("contactName", 9).a(6, 1510306739259487167L);
        a2.b();
    }

    private static void buildEntitySyncerData(e eVar) {
        e.a a2 = eVar.a("SyncerData");
        a2.a(23, 4744909137374425955L).b(3, 7889340251512954834L);
        a2.a();
        a2.a("id", 6).a(1, 7481095054496994377L).a(3);
        a2.a("phoneOrIdKey", 9).a(3, 7889340251512954834L).a(2048).b(33, 1717888888309115349L);
        a2.b();
    }

    private static void buildEntitySyncerDetails(e eVar) {
        e.a a2 = eVar.a("SyncerDetails");
        a2.a(24, 884922060965788121L).b(7, 1284267189587569322L);
        a2.a();
        a2.a("id", 6).a(1, 8784227264020534905L).a(3);
        a2.a("syncerKeyName", 9).a(2, 96954994583782425L).a(2048).b(34, 8693402364472978257L);
        a2.a("lastSyncDate", 6).a(6, 2986218176759405569L).a(4);
        a2.a("syncerDataId", "SyncerData", "syncerData", 11).a(7, 1284267189587569322L).a(1548).b(35, 2244088553040323978L);
        a2.b();
    }

    private static void buildEntityUsageCounterData(e eVar) {
        e.a a2 = eVar.a("UsageCounterData");
        a2.a(17, 2860779603509031276L).b(5, 1683893995760262067L);
        a2.a();
        a2.a("id", 6).a(1, 2005710026600460322L).a(1);
        a2.a("socialNetworkId", 5).a(2, 7621554013583237565L).a(12).b(24, 9189192069955565281L);
        a2.a("netCallType", 5).a(3, 5206260753377466398L).a(12).b(27, 2707369524843353696L);
        a2.a("count", 6).a(4, 2987316656398965891L).a(4);
        a2.a("date", 6).a(5, 1683893995760262067L).a(4);
        a2.b();
    }

    private static void buildEntityUserCorrectedData(e eVar) {
        e.a a2 = eVar.a("UserCorrectedData");
        a2.a(14, 6630232344399157334L).b(5, 4217952885109701774L);
        a2.a("id", 6).a(1, 6816931706690853139L).a(3);
        a2.a("phoneOrIdKey", 9).a(2, 4713927824362051043L).a(2048).b(19, 308446815824247361L);
        a2.a(ContactDetailsActivity.EXTRA_FULL_NAME, 9).a(5, 4217952885109701774L);
        a2.a("userCorrectedType", 5).a(4, 7685424554594306313L).a(4);
        a2.b();
    }

    private static void buildEntityUserCorrectedPositiveData(e eVar) {
        e.a a2 = eVar.a("UserCorrectedPositiveData");
        a2.a(15, 2672168031608336744L).b(4, 8625331153491291135L);
        a2.a();
        a2.a("id", 6).a(1, 5634482370481707965L).a(1);
        a2.a("socialNetworkId", 5).a(2, 4358347641201993668L).a(4);
        a2.a("profileId", 9).a(3, 7321572107341316708L);
        a2.a("userCorrectedDataId", "UserCorrectedData", "userCorrectedData", 11).a(4, 8625331153491291135L).a(1548).b(20, 1672796393996577003L);
        a2.b();
    }

    private static void buildEntityUserMediaData(e eVar) {
        e.a a2 = eVar.a("UserMediaData");
        a2.a(12, 1528036708591623642L).b(3, 4315637917061356465L);
        a2.a("id", 6).a(1, 4137609755256607245L).a(3);
        a2.a("phoneOrIdKey", 9).a(2, 5758059721148487178L).a(2048).b(14, 1864497052315481459L);
        a2.a("photoUrl", 9).a(3, 4315637917061356465L);
        a2.b();
    }

    private static void buildEntityUserNegativePositiveData(e eVar) {
        e.a a2 = eVar.a("UserNegativePositiveData");
        a2.a(19, 286632623073522052L).b(2, 4298530053099970914L);
        a2.a("id", 6).a(1, 1539442054557750806L).a(3);
        a2.a("phoneOrIdKey", 9).a(2, 4298530053099970914L).a(2048).b(28, 3885449644255566378L);
        a2.b();
    }

    private static void buildEntityUserNegativeSocialData(e eVar) {
        e.a a2 = eVar.a("UserNegativeSocialData");
        a2.a(20, 7520636210633954949L).b(4, 7975183207846968412L);
        a2.a();
        a2.a("id", 6).a(1, 5943346226090289578L).a(3);
        a2.a("socialNetworkId", 5).a(2, 7939855318936890542L).a(4);
        a2.a("profileId", 9).a(3, 6334592914045644560L);
        a2.a("userNegativeDataId", "UserNegativePositiveData", "userNegativeData", 11).a(4, 7975183207846968412L).a(1548).b(29, 9129278488546335589L);
        a2.b();
    }

    private static void buildEntityUserPositiveSocialData(e eVar) {
        e.a a2 = eVar.a("UserPositiveSocialData");
        a2.a(21, 7178035316747387668L).b(5, 1883346438977018807L);
        a2.a();
        a2.a("id", 6).a(1, 4850002831434578659L).a(3);
        a2.a("socialNetworkId", 5).a(2, 8380108828623159201L).a(4);
        a2.a("profileId", 9).a(3, 740323606006912375L);
        a2.a("sure", 1).a(4, 6473805135875570036L).a(4);
        a2.a("userPositiveDataId", "UserNegativePositiveData", "userPositiveData", 11).a(5, 1883346438977018807L).a(1548).b(30, 6712291684743611533L);
        a2.b();
    }

    private static void buildEntityUserSpamData(e eVar) {
        e.a a2 = eVar.a("UserSpamData");
        a2.a(3, 1254659978540932318L).b(4, 3037411130573338277L);
        a2.a();
        a2.a("id", 6).a(1, 8437757477601609472L).a(1);
        a2.a(Constants.EXTRA_PHONE_NUMBER, 9).a(2, 8911806248629202519L).a(2048).b(3, 4505074677814329148L);
        a2.a("spamScore", 1).a(4, 3037411130573338277L).a(2);
        a2.b();
    }

    public static b builder() {
        b bVar = new b(getModel());
        bVar.a((c<?>) ProfileViewedData_.__INSTANCE);
        bVar.a((c<?>) RecorderTestData_.f15704d);
        bVar.a((c<?>) ReferAndEarnData_.__INSTANCE);
        bVar.a((c<?>) ReferAndEarnUserData_.__INSTANCE);
        bVar.a((c<?>) AnalyticsCallsData_.__INSTANCE);
        bVar.a((c<?>) AnalyticsExcludeContact_.__INSTANCE);
        bVar.a((c<?>) BirthdayData_.__INSTANCE);
        bVar.a((c<?>) BlockedNumberData_.__INSTANCE);
        bVar.a((c<?>) BlockedRule_.__INSTANCE);
        bVar.a((c<?>) CacheData_.__INSTANCE);
        bVar.a((c<?>) CallRecorder_.__INSTANCE);
        bVar.a((c<?>) CallReminderFrequentData_.__INSTANCE);
        bVar.a((c<?>) CallRemindersData_.__INSTANCE);
        bVar.a((c<?>) ChosenContactPhoto_.__INSTANCE);
        bVar.a((c<?>) CommonSpammer_.__INSTANCE);
        bVar.a((c<?>) ContactLookupData_.__INSTANCE);
        bVar.a((c<?>) ExtractedInfo_.__INSTANCE);
        bVar.a((c<?>) FastCacheData_.__INSTANCE);
        bVar.a((c<?>) IMExtractedPhotoData_.__INSTANCE);
        bVar.a((c<?>) IncognitoData_.__INSTANCE);
        bVar.a((c<?>) JSONExternalSourceContactOBEntity_.__INSTANCE);
        bVar.a((c<?>) MissedCallCardIds_.__INSTANCE);
        bVar.a((c<?>) OBPref_.__INSTANCE);
        bVar.a((c<?>) PersonalStoreItemUrlData_.__INSTANCE);
        bVar.a((c<?>) PersonalStoreItemUserData_.__INSTANCE);
        bVar.a((c<?>) PreferredSimData_.__INSTANCE);
        bVar.a((c<?>) Promotion_.__INSTANCE);
        bVar.a((c<?>) SingleMissedCallData_.__INSTANCE);
        bVar.a((c<?>) SingleSmsData_.__INSTANCE);
        bVar.a((c<?>) SpamData_.__INSTANCE);
        bVar.a((c<?>) SuggestContactData_.__INSTANCE);
        bVar.a((c<?>) UserCorrectedData_.__INSTANCE);
        bVar.a((c<?>) UserCorrectedPositiveData_.__INSTANCE);
        bVar.a((c<?>) UserMediaData_.__INSTANCE);
        bVar.a((c<?>) UserNegativePositiveData_.__INSTANCE);
        bVar.a((c<?>) UserNegativeSocialData_.__INSTANCE);
        bVar.a((c<?>) UserPositiveSocialData_.__INSTANCE);
        bVar.a((c<?>) UserSpamData_.__INSTANCE);
        bVar.a((c<?>) UsageCounterData_.__INSTANCE);
        bVar.a((c<?>) SyncerData_.__INSTANCE);
        bVar.a((c<?>) SyncerDetails_.__INSTANCE);
        return bVar;
    }

    private static byte[] getModel() {
        e eVar = new e();
        eVar.f36222d = 49;
        eVar.e = 9113904861932490529L;
        eVar.f = 86;
        eVar.g = 5461712547104436835L;
        eVar.h = 0;
        eVar.i = 0L;
        buildEntityProfileViewedData(eVar);
        buildEntityRecorderTestData(eVar);
        buildEntityReferAndEarnData(eVar);
        buildEntityReferAndEarnUserData(eVar);
        buildEntityAnalyticsCallsData(eVar);
        buildEntityAnalyticsExcludeContact(eVar);
        buildEntityBirthdayData(eVar);
        buildEntityBlockedNumberData(eVar);
        buildEntityBlockedRule(eVar);
        buildEntityCacheData(eVar);
        buildEntityCallRecorder(eVar);
        buildEntityCallReminderFrequentData(eVar);
        buildEntityCallRemindersData(eVar);
        buildEntityChosenContactPhoto(eVar);
        buildEntityCommonSpammer(eVar);
        buildEntityContactLookupData(eVar);
        buildEntityExtractedInfo(eVar);
        buildEntityFastCacheData(eVar);
        buildEntityIMExtractedPhotoData(eVar);
        buildEntityIncognitoData(eVar);
        buildEntityJSONExternalSourceContactOBEntity(eVar);
        buildEntityMissedCallCardIds(eVar);
        buildEntityOBPref(eVar);
        buildEntityPersonalStoreItemUrlData(eVar);
        buildEntityPersonalStoreItemUserData(eVar);
        buildEntityPreferredSimData(eVar);
        buildEntityPromotion(eVar);
        buildEntitySingleMissedCallData(eVar);
        buildEntitySingleSmsData(eVar);
        buildEntitySpamData(eVar);
        buildEntitySuggestContactData(eVar);
        buildEntityUserCorrectedData(eVar);
        buildEntityUserCorrectedPositiveData(eVar);
        buildEntityUserMediaData(eVar);
        buildEntityUserNegativePositiveData(eVar);
        buildEntityUserNegativeSocialData(eVar);
        buildEntityUserPositiveSocialData(eVar);
        buildEntityUserSpamData(eVar);
        buildEntityUsageCounterData(eVar);
        buildEntitySyncerData(eVar);
        buildEntitySyncerDetails(eVar);
        int a2 = eVar.f36219a.a("default");
        int a3 = eVar.a(eVar.f36220b);
        Model.startModel(eVar.f36219a);
        Model.addName(eVar.f36219a, a2);
        Model.addModelVersion(eVar.f36219a, 2L);
        Model.addVersion(eVar.f36219a, 1L);
        Model.addEntities(eVar.f36219a, a3);
        if (eVar.f36222d != null) {
            Model.addLastEntityId(eVar.f36219a, IdUid.createIdUid(eVar.f36219a, eVar.f36222d.intValue(), eVar.e.longValue()));
        }
        if (eVar.f != null) {
            Model.addLastIndexId(eVar.f36219a, IdUid.createIdUid(eVar.f36219a, eVar.f.intValue(), eVar.g.longValue()));
        }
        if (eVar.h != null) {
            Model.addLastRelationId(eVar.f36219a, IdUid.createIdUid(eVar.f36219a, eVar.h.intValue(), eVar.i.longValue()));
        }
        eVar.f36219a.b(Model.endModel(eVar.f36219a), false);
        return eVar.f36219a.d();
    }
}
