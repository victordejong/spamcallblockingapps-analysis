package com.callapp.contacts.manager.preferences;

import android.os.Build;
import com.callapp.contacts.activity.analytics.cards.CommunityCard;
import com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager;
import com.callapp.contacts.activity.contact.details.ContactAction;
import com.callapp.contacts.activity.contact.details.PostCallActivity;
import com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView;
import com.callapp.contacts.activity.contact.details.overlay.DuringCallOverlayView;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.contact.list.CallLogSortType;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.marketplace.ButtonSet;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.settings.Language;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.api.helper.backup.BackupIntervalPeriod;
import com.callapp.contacts.api.helper.backup.BackupViaType;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.prefs.ArrayPref;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.manager.preferences.prefs.CachedPref;
import com.callapp.contacts.manager.preferences.prefs.CountryIsoPref;
import com.callapp.contacts.manager.preferences.prefs.DatePref;
import com.callapp.contacts.manager.preferences.prefs.EnumPref;
import com.callapp.contacts.manager.preferences.prefs.IntegerPref;
import com.callapp.contacts.manager.preferences.prefs.IntegerSetPref;
import com.callapp.contacts.manager.preferences.prefs.JSONDatePref;
import com.callapp.contacts.manager.preferences.prefs.LongArray;
import com.callapp.contacts.manager.preferences.prefs.LongPref;
import com.callapp.contacts.manager.preferences.prefs.LongSetPref;
import com.callapp.contacts.manager.preferences.prefs.PairPref;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.util.AppRater;
import com.callapp.contacts.util.DeviceDetector;
import com.callapp.contacts.util.ads.AdUtils;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/Prefs.class */
public interface Prefs {

    /* renamed from: eO */
    public static final EnumPref<RecordConfiguration.METHOD> f26450eO;

    /* renamed from: eP */
    public static final EnumPref<RecordConfiguration.AUDIO_SOURCE> f26451eP;

    /* renamed from: eQ */
    public static final EnumPref<RecordConfiguration.FILE_FORMAT> f26452eQ;

    /* renamed from: eR */
    public static final BooleanPref f26453eR;

    /* renamed from: eS */
    public static final IntegerPref f26454eS;

    /* renamed from: eT */
    public static final IntegerPref f26455eT;

    /* renamed from: eU */
    public static final BooleanPref f26456eU;

    /* renamed from: eV */
    public static final BooleanPref f26457eV;

    /* renamed from: eW */
    public static final BooleanPref f26458eW;

    /* renamed from: eX */
    public static final BooleanPref f26459eX;

    /* renamed from: eY */
    public static final BooleanPref f26460eY;

    /* renamed from: eZ */
    public static final BooleanPref f26461eZ;

    /* renamed from: fA */
    public static final BooleanPref f26489fA;

    /* renamed from: fB */
    public static final IntegerPref f26490fB;

    /* renamed from: fC */
    public static final IntegerPref f26491fC;

    /* renamed from: fD */
    public static final BooleanPref f26492fD;

    /* renamed from: fE */
    public static final BooleanPref f26493fE;

    /* renamed from: fF */
    public static final LongPref f26494fF;

    /* renamed from: fG */
    public static final IntegerPref f26495fG;

    /* renamed from: fH */
    public static final IntegerPref f26496fH;

    /* renamed from: fI */
    public static final BooleanPref f26497fI;

    /* renamed from: fJ */
    public static final StringPref f26498fJ;

    /* renamed from: fK */
    public static final StringPref f26499fK;

    /* renamed from: fL */
    public static final IntegerPref f26500fL;

    /* renamed from: fM */
    public static final BooleanPref f26501fM;

    /* renamed from: fN */
    public static final BooleanPref f26502fN;

    /* renamed from: fO */
    public static final BooleanPref f26503fO;

    /* renamed from: fP */
    public static final BooleanPref f26504fP;

    /* renamed from: fQ */
    public static final BooleanPref f26505fQ;

    /* renamed from: fR */
    public static final DatePref f26506fR;

    /* renamed from: fS */
    public static final DatePref f26507fS;

    /* renamed from: fT */
    public static final StringPref f26508fT;

    /* renamed from: fU */
    public static final StringPref f26509fU;

    /* renamed from: fV */
    public static final DatePref f26510fV;

    /* renamed from: fW */
    public static final IntegerPref f26511fW;

    /* renamed from: fX */
    public static final IntegerPref f26512fX;

    /* renamed from: fY */
    public static final IntegerPref f26513fY;

    /* renamed from: fZ */
    public static final DatePref f26514fZ;

    /* renamed from: fa */
    public static final BooleanPref f26515fa;

    /* renamed from: fb */
    public static final IntegerPref f26516fb;

    /* renamed from: fc */
    public static final DatePref f26517fc;

    /* renamed from: fd */
    public static final DatePref f26518fd;

    /* renamed from: fe */
    public static final BooleanPref f26519fe;

    /* renamed from: ff */
    public static final BooleanPref f26520ff;

    /* renamed from: fg */
    public static final BooleanPref f26521fg;

    /* renamed from: fh */
    public static final BooleanPref f26522fh;

    /* renamed from: fi */
    public static final BooleanPref f26523fi;

    /* renamed from: fj */
    public static final StringPref f26524fj;

    /* renamed from: fk */
    public static final StringPref f26525fk;

    /* renamed from: fl */
    public static final StringPref f26526fl;

    /* renamed from: fm */
    public static final StringPref f26527fm;

    /* renamed from: fn */
    public static final LongSetPref f26528fn;

    /* renamed from: fo */
    public static final LongPref f26529fo;

    /* renamed from: fp */
    public static final BooleanPref f26530fp;

    /* renamed from: fq */
    public static final BooleanPref f26531fq;

    /* renamed from: fr */
    public static final IntegerPref f26532fr;

    /* renamed from: fs */
    public static final BooleanPref f26533fs;

    /* renamed from: ft */
    public static final BooleanPref f26534ft;

    /* renamed from: fu */
    public static final BooleanPref f26535fu;

    /* renamed from: fv */
    public static final BooleanPref f26536fv;

    /* renamed from: fw */
    public static final IntegerPref f26537fw;

    /* renamed from: fx */
    public static final LongPref f26538fx;

    /* renamed from: fy */
    public static final LongPref f26539fy;

    /* renamed from: fz */
    public static final BooleanPref f26540fz;

    /* renamed from: gA */
    public static final BooleanPref f26542gA;

    /* renamed from: gB */
    public static final BooleanPref f26543gB;

    /* renamed from: gC */
    public static final BooleanPref f26544gC;

    /* renamed from: gD */
    public static final IntegerPref f26545gD;

    /* renamed from: gE */
    public static final IntegerPref f26546gE;

    /* renamed from: gF */
    public static final IntegerPref f26547gF;

    /* renamed from: gG */
    public static final EnumPref<AnalyticsDatePickerManager.DatePicker> f26548gG;

    /* renamed from: gH */
    public static final DatePref f26549gH;

    /* renamed from: gI */
    public static final BooleanPref f26550gI;

    /* renamed from: gJ */
    public static final BooleanPref f26551gJ;

    /* renamed from: gK */
    public static final BooleanPref f26552gK;

    /* renamed from: gL */
    public static final BooleanPref f26553gL;

    /* renamed from: gM */
    public static final BooleanPref f26554gM;

    /* renamed from: gN */
    public static final BooleanPref f26555gN;

    /* renamed from: gO */
    public static final BooleanPref f26556gO;

    /* renamed from: gP */
    public static final EnumPref<CommunityCard.CommunityContributionLevel> f26557gP;

    /* renamed from: gQ */
    public static final BooleanPref f26558gQ;

    /* renamed from: gR */
    public static final IntegerPref f26559gR;

    /* renamed from: gS */
    public static final IntegerPref f26560gS;

    /* renamed from: gT */
    public static final StringPref[] f26561gT;

    /* renamed from: gU */
    public static final BooleanPref f26562gU;

    /* renamed from: gV */
    public static final BooleanPref f26563gV;

    /* renamed from: gW */
    public static final BooleanPref f26564gW;

    /* renamed from: gX */
    public static final IntegerPref f26565gX;

    /* renamed from: gY */
    public static final IntegerPref f26566gY;

    /* renamed from: gZ */
    public static final IntegerPref f26567gZ;

    /* renamed from: ga */
    public static final BooleanPref f26568ga;

    /* renamed from: gb */
    public static final LongArray f26569gb;

    /* renamed from: gc */
    public static final BooleanPref f26570gc;

    /* renamed from: gd */
    public static final BooleanPref f26571gd;

    /* renamed from: ge */
    public static final IntegerPref f26572ge;

    /* renamed from: gf */
    public static final BooleanPref f26573gf;

    /* renamed from: gg */
    public static final IntegerPref f26574gg;

    /* renamed from: gh */
    public static final BooleanPref f26575gh;

    /* renamed from: gi */
    public static final LongArray f26576gi;

    /* renamed from: gj */
    public static final BooleanPref f26577gj;

    /* renamed from: gk */
    public static final BooleanPref f26578gk;

    /* renamed from: gl */
    public static final BooleanPref f26579gl;

    /* renamed from: gm */
    public static final BooleanPref f26580gm;

    /* renamed from: gn */
    public static final BooleanPref f26581gn;

    /* renamed from: go */
    public static final BooleanPref f26582go;

    /* renamed from: gp */
    public static final DatePref f26583gp;

    /* renamed from: gq */
    public static final DatePref f26584gq;

    /* renamed from: gr */
    public static final BooleanPref f26585gr;

    /* renamed from: gs */
    public static final BooleanPref f26586gs;

    /* renamed from: gt */
    public static final BooleanPref f26587gt;

    /* renamed from: gu */
    public static final BooleanPref f26588gu;

    /* renamed from: gv */
    public static final StringPref f26589gv;

    /* renamed from: gw */
    public static final BooleanPref f26590gw;

    /* renamed from: gx */
    public static final BooleanPref f26591gx;

    /* renamed from: gy */
    public static final BooleanPref f26592gy;

    /* renamed from: gz */
    public static final BooleanPref f26593gz;

    /* renamed from: hA */
    public static final BooleanPref f26595hA;

    /* renamed from: hB */
    public static final IntegerPref f26596hB;

    /* renamed from: hC */
    public static final DatePref f26597hC;

    /* renamed from: hD */
    public static final LongPref f26598hD;

    /* renamed from: hE */
    public static final BooleanPref f26599hE;

    /* renamed from: hF */
    public static final BooleanPref f26600hF;

    /* renamed from: hG */
    public static final StringPref f26601hG;

    /* renamed from: hH */
    public static final StringPref f26602hH;

    /* renamed from: hI */
    public static final BooleanPref f26603hI;

    /* renamed from: hJ */
    public static final DatePref f26604hJ;

    /* renamed from: hK */
    public static final EnumPref<BackupViaType> f26605hK;

    /* renamed from: hL */
    public static final IntegerPref f26606hL;

    /* renamed from: hM */
    public static final BooleanPref f26607hM;

    /* renamed from: hN */
    public static final BooleanPref f26608hN;

    /* renamed from: hO */
    public static final BooleanPref f26609hO;

    /* renamed from: hP */
    public static final BooleanPref f26610hP;

    /* renamed from: hQ */
    public static final BooleanPref f26611hQ;

    /* renamed from: hR */
    public static final BooleanPref f26612hR;

    /* renamed from: hS */
    public static final BooleanPref f26613hS;

    /* renamed from: hT */
    public static final IntegerPref f26614hT;

    /* renamed from: hU */
    public static final BooleanPref f26615hU;

    /* renamed from: hV */
    public static final BooleanPref f26616hV;

    /* renamed from: hW */
    public static final ArrayPref f26617hW;

    /* renamed from: hX */
    public static final DatePref f26618hX;

    /* renamed from: hY */
    public static final DatePref f26619hY;

    /* renamed from: hZ */
    public static final DatePref f26620hZ;

    /* renamed from: ha */
    public static final IntegerPref f26621ha;

    /* renamed from: hb */
    public static final BooleanPref f26622hb;

    /* renamed from: hc */
    public static final BooleanPref f26623hc;

    /* renamed from: hd */
    public static final StringPref f26624hd;

    /* renamed from: he */
    public static final LongPref f26625he;

    /* renamed from: hf */
    public static final StringPref f26626hf;

    /* renamed from: hg */
    public static final IntegerPref f26627hg;

    /* renamed from: hh */
    public static final IntegerPref f26628hh;

    /* renamed from: hi */
    public static final IntegerPref f26629hi;

    /* renamed from: hj */
    public static final BooleanPref f26630hj;

    /* renamed from: hk */
    public static final IntegerPref f26631hk;

    /* renamed from: hl */
    public static final EnumPref<ContactAction> f26632hl;

    /* renamed from: hm */
    public static final IntegerPref f26633hm;

    /* renamed from: hn */
    public static final IntegerPref f26634hn;

    /* renamed from: ho */
    public static final IntegerPref f26635ho;

    /* renamed from: hp */
    public static final IntegerPref f26636hp;

    /* renamed from: hq */
    public static final BooleanPref f26637hq;

    /* renamed from: hr */
    public static final StringPref f26638hr;

    /* renamed from: hs */
    public static final IntegerPref f26639hs;

    /* renamed from: ht */
    public static final IntegerPref f26640ht;

    /* renamed from: hu */
    public static final BooleanPref f26641hu;

    /* renamed from: hv */
    public static final IntegerPref f26642hv;

    /* renamed from: hw */
    public static final BooleanPref f26643hw;

    /* renamed from: hx */
    public static final BooleanPref f26644hx;

    /* renamed from: hy */
    public static final EnumPref<WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile> f26645hy;

    /* renamed from: hz */
    public static final BooleanPref f26646hz;

    /* renamed from: ia */
    public static final DatePref f26648ia;

    /* renamed from: ib */
    public static final DatePref f26649ib;

    /* renamed from: ic */
    public static final BooleanPref f26650ic;

    /* renamed from: id */
    public static final BooleanPref f26651id;

    /* renamed from: ie */
    public static final BooleanPref f26652ie;

    /* renamed from: a */
    public static final BooleanPref f26223a = new BooleanPref("quickSmsEnabled", Boolean.FALSE);

    /* renamed from: b */
    public static final BooleanPref f26276b = new BooleanPref("dialTonesEnabled", Boolean.TRUE);

    /* renamed from: c */
    public static final BooleanPref f26329c = new BooleanPref("speakNameEnabled", Boolean.FALSE);

    /* renamed from: d */
    public static final BooleanPref f26382d = new BooleanPref("vibrateOnClickEnabled", Boolean.TRUE);

    /* renamed from: e */
    public static final IntegerPref f26435e = new IntegerPref("callsMadeWithoutUsingAsDefaultAppCounter", 0);

    /* renamed from: f */
    public static final IntegerPref f26488f = new IntegerPref("defaultDailderDialogCounter", 0);

    /* renamed from: g */
    public static final BooleanPref f26541g = new BooleanPref("inCallFloatingWidgetEnabled", Boolean.TRUE);

    /* renamed from: h */
    public static final BooleanPref f26594h = new BooleanPref("forcePhoneToRing", Boolean.FALSE);

    /* renamed from: i */
    public static final BooleanPref f26647i = new BooleanPref("preferPhotosFromDevice", Boolean.FALSE);

    /* renamed from: j */
    public static final BooleanPref f26653j = new BooleanPref("postCallScreenEnabled", Boolean.TRUE);

    /* renamed from: k */
    public static final BooleanPref f26654k = new BooleanPref("callFabEnabled", Boolean.TRUE);

    /* renamed from: l */
    public static final BooleanPref f26655l = new BooleanPref("clipboardAutoSearchEnabled", Boolean.TRUE);

    /* renamed from: m */
    public static final BooleanPref f26656m = new BooleanPref("incomingSmsEnabled", Boolean.TRUE);

    /* renamed from: n */
    public static final CachedPref<Boolean> f26657n = new CachedPref<>(new BooleanPref("debugMode", Boolean.FALSE));

    /* renamed from: o */
    public static final BooleanPref f26658o = new BooleanPref("smsDumpThread", Boolean.FALSE);

    /* renamed from: p */
    public static final BooleanPref f26659p = new BooleanPref("ignoreImNotificationRules", Boolean.FALSE);

    /* renamed from: q */
    public static final BooleanPref f26660q = new BooleanPref("showToastIncomingCall", Boolean.FALSE);

    /* renamed from: r */
    public static final BooleanPref f26661r = new BooleanPref("verifiedSuccess", Boolean.FALSE);

    /* renamed from: s */
    public static final BooleanPref f26662s = new BooleanPref("verifiedFailed", Boolean.FALSE);

    /* renamed from: t */
    public static final BooleanPref f26663t = new BooleanPref("contactListPageSwipeEnabled", Boolean.TRUE);

    /* renamed from: u */
    public static final PairPref<Integer, Integer> f26664u = new PairPref<>(new IntegerPref("birthdayReminderTimeHours"), new IntegerPref("birthdayReminderTimeMinutes"));

    /* renamed from: v */
    public static final PairPref<Long, String> f26665v = new PairPref<>(new LongPref("clipTimeStampMillis"), new StringPref("clipText"));

    /* renamed from: w */
    public static final BooleanPref f26666w = new BooleanPref("historyFragmentShouldConfirmDelete", Boolean.TRUE);

    /* renamed from: x */
    public static final BooleanPref f26667x = new BooleanPref("birthdayReminderSoundEnabled", Boolean.TRUE);

    /* renamed from: y */
    public static final BooleanPref f26668y = new BooleanPref("missedCallCardEnabled", Boolean.TRUE);

    /* renamed from: z */
    public static final BooleanPref f26669z = new BooleanPref("notAnsweredCardEnabled", Boolean.TRUE);

    /* renamed from: A */
    public static final BooleanPref f26197A = new BooleanPref("missedCallOverlayEnabled", Boolean.TRUE);

    /* renamed from: B */
    public static final BooleanPref f26198B = new BooleanPref("notAnsweredOverlayEnabled", Boolean.TRUE);

    /* renamed from: C */
    public static final BooleanPref f26199C = new BooleanPref("missedCallDailySummaryEnabled", Boolean.TRUE);

    /* renamed from: D */
    public static final BooleanPref f26200D = new BooleanPref("notAnswerDailySummaryEnabled", Boolean.TRUE);

    /* renamed from: E */
    public static final BooleanPref f26201E = new BooleanPref("notAnswerNotificationEnabled", Boolean.TRUE);

    /* renamed from: F */
    public static final BooleanPref f26202F = new BooleanPref("missedCallNotificationEnabled", Boolean.TRUE);

    /* renamed from: G */
    public static final BooleanPref f26203G = new BooleanPref("callAppPlusDailySummaryEnabled", Boolean.TRUE);

    /* renamed from: H */
    public static final LongPref f26204H = new LongPref("lastMissedCallTimeOverlay", 0L);

    /* renamed from: I */
    public static final LongPref f26205I = new LongPref("lastNotAnsweredTimeOverlay", 0L);

    /* renamed from: J */
    public static final BooleanPref f26206J = new BooleanPref("hasPendingMissedCallDailySummary", Boolean.FALSE);

    /* renamed from: K */
    public static final BooleanPref f26207K = new BooleanPref("hasPendingNotAnswerDailySummary", Boolean.FALSE);

    /* renamed from: L */
    public static final BooleanPref f26208L = new BooleanPref("missedCallAnimationEnabled", Boolean.TRUE);

    /* renamed from: M */
    public static final DatePref f26209M = new DatePref("missedCallSummaryLastScheduled", null);

    /* renamed from: N */
    public static final IntegerPref f26210N = new IntegerPref("overlayViewYPos", Integer.valueOf((int) DuringCallOverlayView.OVERLAY_Y_POS_DEFAULT_VALUE));

    /* renamed from: O */
    public static final IntegerPref f26211O = new IntegerPref("callOverlaySeenCount", 0);

    /* renamed from: P */
    public static final BooleanPref f26212P = new BooleanPref("wasCallOverlaySwiped", Boolean.FALSE);

    /* renamed from: Q */
    public static final BooleanPref f26213Q = new BooleanPref("wasCallOverlayMoved", Boolean.FALSE);

    /* renamed from: R */
    public static final IntegerPref f26214R = new IntegerPref("installedVersionCode");

    /* renamed from: S */
    public static final IntegerPref f26215S = new IntegerPref("lastOsVersion", 0);

    /* renamed from: T */
    public static final IntegerPref f26216T = new IntegerPref("lastVersionCode", 0);

    /* renamed from: U */
    public static final IntegerPref f26217U = new IntegerPref("birthdayReminderBaseId", 100);

    /* renamed from: V */
    public static final IntegerPref f26218V = new IntegerPref("notificationReminderBaseId", 10000);

    /* renamed from: W */
    public static final BooleanPref f26219W = new BooleanPref("shortcutCreated", Boolean.FALSE);

    /* renamed from: X */
    public static final StringPref f26220X = new StringPref("installationReferrer");

    /* renamed from: Y */
    public static final IntegerPref f26221Y = new IntegerPref("numTimesRateScreenShown", 0);

    /* renamed from: Z */
    public static final LongPref f26222Z = new LongPref("rateUsDifferentIdentifiesCounter", 0L);

    /* renamed from: aa */
    public static final StringPref f26250aa = new StringPref("rateUsLastIdentifyNumber", (String) null);

    /* renamed from: ab */
    public static final LongPref f26251ab = new LongPref("rateUsLastIdentifyDates", 0L);

    /* renamed from: ac */
    public static final DatePref f26252ac = new DatePref("lastServerMessageShownTime");

    /* renamed from: ad */
    public static final DatePref f26253ad = new DatePref("showUpdrageNotificationFirstTimeDate");

    /* renamed from: ae */
    public static final DatePref f26254ae = new DatePref("lastMissedCallProcessedTimestamp", new Date());

    /* renamed from: af */
    public static final DatePref f26255af = new DatePref("lastNotAnsweredProcessedTimestamp", new Date());

    /* renamed from: ag */
    public static final BooleanPref f26256ag = new BooleanPref("hasMessageInCallLog", Boolean.TRUE);

    /* renamed from: ah */
    public static final DatePref f26257ah = new DatePref("installDate", null);

    /* renamed from: ai */
    public static final DatePref f26258ai = new DatePref("lastUpgradeDate", null);

    /* renamed from: aj */
    public static final LongPref f26259aj = new LongPref("lastRegisterOnServer", 0L);

    /* renamed from: ak */
    public static final EnumPref<AppRater.UserRating> f26260ak = new EnumPref<>("userRating", AppRater.UserRating.NOT_YET);

    /* renamed from: al */
    public static final BooleanPref f26261al = new BooleanPref("isAlreadyGetFavorites", Boolean.FALSE);

    /* renamed from: am */
    public static final IntegerPref f26262am = new IntegerPref("notificationChannelPrefix", 0);

    /* renamed from: an */
    public static final DatePref f26263an = new DatePref("lastTimeUserWasShownLoyaltyRipple", null);

    /* renamed from: ao */
    public static final StringPref f26264ao = new StringPref("normalNumbers");

    /* renamed from: ap */
    public static final StringPref f26265ap = new StringPref("areaCode");

    /* renamed from: aq */
    public static final StringPref f26266aq = new StringPref("email");

    /* renamed from: ar */
    public static final StringPref f26267ar = new StringPref("firstName");

    /* renamed from: as */
    public static final StringPref f26268as = new StringPref("lastName");

    /* renamed from: at */
    public static final StringPref f26269at = new StringPref("bio");

    /* renamed from: au */
    public static final StringPref f26270au = new StringPref("address");

    /* renamed from: av */
    public static final StringPref f26271av = new StringPref("userDefinition");

    /* renamed from: aw */
    public static final StringPref[] f26272aw = {new StringPref("userWebsite1", (String) null), new StringPref("userWebsite2", (String) null), new StringPref("userWebsite3", (String) null), new StringPref("userWebsite4", (String) null)};

    /* renamed from: ax */
    public static final StringPref[] f26273ax = {new StringPref("userEmail1", (String) null), new StringPref("userEmail2", (String) null), new StringPref("userEmail3", (String) null), new StringPref("userEmail4", (String) null)};

    /* renamed from: ay */
    public static final BooleanPref f26274ay = new BooleanPref("copyUserDeviceEmailsToOurData", Boolean.TRUE);

    /* renamed from: az */
    public static final DatePref f26275az = new DatePref("birthDate", null);

    /* renamed from: aA */
    public static final JSONDatePref f26224aA = new JSONDatePref("birthDateFormatted", null);

    /* renamed from: aB */
    public static final StringPref f26225aB = new StringPref("userYoutubeChannel", (String) null);

    /* renamed from: aC */
    public static final StringPref f26226aC = new StringPref("userDeletedEmails", (String) null);

    /* renamed from: aD */
    public static final StringPref f26227aD = new StringPref("userDeletedWebsites", (String) null);

    /* renamed from: aE */
    public static final ArrayPref f26228aE = new ArrayPref("speedDial");

    /* renamed from: aF */
    public static final StringPref f26229aF = new StringPref("verifiedPhoneWithDigits");

    /* renamed from: aG */
    public static final PairPref<String, String> f26230aG = new PairPref<>(new StringPref("twitterAccessToken"), new StringPref("twitterAccessTokenSecret"));

    /* renamed from: aH */
    public static final StringPref f26231aH = new StringPref("googlePlusAccountName");

    /* renamed from: aI */
    public static final DatePref f26232aI = new DatePref("googlePlusAccountIdTimeStamp", new Date());

    /* renamed from: aJ */
    public static final BooleanPref f26233aJ = new BooleanPref("googlePlusUseOldPermissions", Boolean.FALSE);

    /* renamed from: aK */
    public static final StringPref f26234aK = new StringPref("gmailAccountName");

    /* renamed from: aL */
    public static final BooleanPref f26235aL = new BooleanPref("callAppAsPremiumFlow", Boolean.TRUE);

    /* renamed from: aM */
    public static final DatePref f26236aM = new DatePref("callAppAsPremiumFlowStartTime", null);

    /* renamed from: aN */
    public static final BooleanPref f26237aN = new BooleanPref("shownPostTrialTimePremiumPopUp", Boolean.FALSE);

    /* renamed from: aO */
    public static final BooleanPref f26238aO = new BooleanPref("shown2DaysReminderPremiumPopUp", Boolean.FALSE);

    /* renamed from: aP */
    public static final CountryIsoPref f26239aP = new CountryIsoPref("countryIso");

    /* renamed from: aQ */
    public static final StringPref f26240aQ = new StringPref("unreliableCountryIso");

    /* renamed from: aR */
    public static final StringPref f26241aR = new StringPref("callAppId");

    /* renamed from: aS */
    public static final BooleanPref f26242aS = new BooleanPref("numberIsReliable", Boolean.FALSE);

    /* renamed from: aT */
    public static final BooleanPref f26243aT = new BooleanPref("numberVerified", Boolean.FALSE);

    /* renamed from: aU */
    public static final IntegerPref f26244aU = new IntegerPref("setupStage", 0);

    /* renamed from: aV */
    public static final StringPref f26245aV = new StringPref("activationCode");

    /* renamed from: aW */
    public static final BooleanPref f26246aW = new BooleanPref("setupCompleted", Boolean.FALSE);

    /* renamed from: aX */
    public static final StringPref f26247aX = new StringPref("registrationMethod");

    /* renamed from: aY */
    public static final BooleanPref f26248aY = new BooleanPref("userOnPayWallOnBoardingPayment", Boolean.FALSE);

    /* renamed from: aZ */
    public static final BooleanPref f26249aZ = new BooleanPref("shouldUpdateRemoteConfigDefualts", Boolean.TRUE);

    /* renamed from: ba */
    public static final BooleanPref f26303ba = new BooleanPref("shouldForceFetchRemoteConfig", Boolean.FALSE);

    /* renamed from: bb */
    public static final BooleanPref f26304bb = new BooleanPref("shouldShowWhatsNew", Boolean.TRUE);

    /* renamed from: bc */
    public static final EnumPref<AdUtils.ConsentStatus> f26305bc = new EnumPref<>("gdprConsentStatus", AdUtils.ConsentStatus.UNKNOWN);

    /* renamed from: bd */
    public static final IntegerPref f26306bd = new IntegerPref("tcf2ConsentShownCount", 0);

    /* renamed from: be */
    public static final DatePref f26307be = new DatePref("tcf2ConsentNextShow", null);

    /* renamed from: bf */
    public static final BooleanPref f26308bf = new BooleanPref("tcf2ConsentForce", Boolean.FALSE);

    /* renamed from: bg */
    public static final BooleanPref f26309bg = new BooleanPref("privacyConsentStatus", Boolean.FALSE);

    /* renamed from: bh */
    public static final BooleanPref f26310bh = new BooleanPref("dateFormatMonthFirst", null);

    /* renamed from: bi */
    public static final StringPref[] f26311bi = {new StringPref("quickSms1", 2131886715), new StringPref("quickSms2", 2131886716), new StringPref("quickSms3", 2131886717), new StringPref("quickSms4", 2131886718)};

    /* renamed from: bj */
    public static final BooleanPref[] f26312bj = {new BooleanPref("quickSms1Changes", Boolean.FALSE), new BooleanPref("quickSms2Changes", Boolean.FALSE), new BooleanPref("quickSms3Changes", Boolean.FALSE), new BooleanPref("quickSms4Changes", Boolean.FALSE)};

    /* renamed from: bk */
    public static final BooleanPref f26313bk = new BooleanPref("showCallAppOnIncoming", Boolean.TRUE);

    /* renamed from: bl */
    public static final BooleanPref f26314bl = new BooleanPref("showCallAppOnOutgoing", Boolean.TRUE);

    /* renamed from: bm */
    public static final BooleanPref f26315bm = new BooleanPref("fullScreenModeEnabled", Boolean.TRUE);

    /* renamed from: bn */
    public static final BooleanPref f26316bn = new BooleanPref("isFirstSyncFinished", Boolean.FALSE);

    /* renamed from: bo */
    public static final IntegerPref f26317bo = new IntegerPref("totalContactsToSync", 0);

    /* renamed from: bp */
    public static final IntegerPref f26318bp = new IntegerPref("indexOfIteratedContactsFirstSync", 0);

    /* renamed from: bq */
    public static final DatePref f26319bq = new DatePref("firstSyncStartTime");

    /* renamed from: br */
    public static final DatePref f26320br = new DatePref("firstSyncEndTime");

    /* renamed from: bs */
    public static final LongPref f26321bs = new LongPref("firstSyncTotalTimeInSecs");

    /* renamed from: bt */
    public static final IntegerPref f26322bt = new IntegerPref("batteryStartSync");

    /* renamed from: bu */
    public static final IntegerPref f26323bu = new IntegerPref("batteryEndSync");

    /* renamed from: bv */
    public static final DatePref f26324bv = new DatePref("fullSyncEndTime");

    /* renamed from: bw */
    public static final IntegerSetPref f26325bw = new IntegerSetPref("socialNetIdThatAlreadyClikedOnSocialProfileScreen");

    /* renamed from: bx */
    public static final StringPref f26326bx = new StringPref("menuLangauge", "system_locale");

    /* renamed from: by */
    public static final IntegerPref f26327by = new IntegerPref("numOfCallsSinceStartedRegistration", 0);

    /* renamed from: bz */
    public static final IntegerPref f26328bz = new IntegerPref("numOfBotherTheUserWithRegistration", 0);

    /* renamed from: bA */
    public static final EnumPref<Language> f26277bA = new EnumPref<>("t9Language", Language.NONE);

    /* renamed from: bB */
    public static final BooleanPref f26278bB = new BooleanPref("sawRegistrationReminderNotification", Boolean.FALSE);

    /* renamed from: bC */
    public static final IntegerPref f26279bC = new IntegerPref("abTestUserId");

    /* renamed from: bD */
    public static final BooleanPref f26280bD = new BooleanPref("shouldAskUserForExtraLanguage", null);

    /* renamed from: bE */
    public static final IntegerPref f26281bE = new IntegerPref("locationPermissionInSearchCounter", 4);

    /* renamed from: bF */
    public static final DatePref f26282bF = new DatePref("lastTimeSmsPermissionRequestWasShown", new Date());

    /* renamed from: bG */
    public static final IntegerPref f26283bG = new IntegerPref("smsPermissionDisplayedFromReminderCounter", 0);

    /* renamed from: bH */
    public static final IntegerPref f26284bH = new IntegerPref("smsPermissionCallAppPlusCounter", 0);

    /* renamed from: bI */
    public static final IntegerPref f26285bI = new IntegerPref("callappPlusOpenedCounter", 0);

    /* renamed from: bJ */
    public static final BooleanPref f26286bJ = new BooleanPref("privateCall", Boolean.FALSE);

    /* renamed from: bK */
    public static final BooleanPref f26287bK = new BooleanPref("internationalCall", Boolean.FALSE);

    /* renamed from: bL */
    public static final BooleanPref f26288bL = new BooleanPref("nonContactCall", Boolean.FALSE);

    /* renamed from: bM */
    public static final EnumPref<BlockManager.BlockMethod> f26289bM = new EnumPref<>("blockMethodType", BlockManager.BlockMethod.HANG_UP);

    /* renamed from: bN */
    public static final BooleanPref f26290bN = new BooleanPref("commonSpammers", Boolean.TRUE);

    /* renamed from: bO */
    public static final EnumPref<ContactDetailsOverlayView.InCallDuration> f26291bO = new EnumPref<>("inCallDuration", ContactDetailsOverlayView.InCallDuration.NEVER);

    /* renamed from: bP */
    public static final EnumPref<PostCallActivity.PostCallDuration> f26292bP = new EnumPref<>("postCallDuration", PostCallActivity.PostCallDuration.AFTER_5_SEC);

    /* renamed from: bQ */
    public static final EnumPref<PostCallActivity.PostCallDuration> f26293bQ = new EnumPref<>("clipboardAutoSearchDuration", PostCallActivity.PostCallDuration.AFTER_12_SEC);

    /* renamed from: bR */
    public static final EnumPref<SimManager.SimId> f26294bR = new EnumPref<>("simId", SimManager.SimId.ASK);

    /* renamed from: bS */
    public static final StringPref f26295bS = new StringPref("simIdColumnsName", (String) null);

    /* renamed from: bT */
    public static final StringPref f26296bT = new StringPref("phoneManagerClassName", (String) null);

    /* renamed from: bU */
    public static final StringPref f26297bU = new StringPref("voiceMailAsGlobal", (String) null);

    /* renamed from: bV */
    public static final IntegerPref f26298bV = new IntegerPref("callReminderAddedCounter", 0);

    /* renamed from: bW */
    public static final DatePref f26299bW = new DatePref("lastImProcessedTimestamp", new Date());

    /* renamed from: bX */
    public static final IntegerPref f26300bX = new IntegerPref("missedCallNotificationClickedCounter", 0);

    /* renamed from: bY */
    public static final BooleanPref f26301bY = new BooleanPref("hasSendEventUserAllowedUsNotificationAccess", Boolean.FALSE);

    /* renamed from: bZ */
    public static final LongPref f26302bZ = new LongPref("seenContactDetailsCounter", 0L);

    /* renamed from: ca */
    public static final BooleanPref f26356ca = new BooleanPref("userLongPressedCallFab", Boolean.FALSE);

    /* renamed from: cb */
    public static final IntegerPref f26357cb = new IntegerPref("userOpenDetailScreenCount", -1);

    /* renamed from: cc */
    public static final BooleanPref f26358cc = new BooleanPref("shownAutoStartPermissionPusher", Boolean.FALSE);

    /* renamed from: cd */
    public static final BooleanPref f26359cd = new BooleanPref("shownHuaweiProtectedAppsPusher", Boolean.FALSE);

    /* renamed from: ce */
    public static final BooleanPref f26360ce = new BooleanPref("showCallAppIMNotification", Boolean.TRUE);

    /* renamed from: cf */
    public static final BooleanPref f26361cf = new BooleanPref("showCallAppSpamAndBlockNotification", Boolean.TRUE);

    /* renamed from: cg */
    public static final BooleanPref f26362cg = new BooleanPref("isViberSenderNameOK", Boolean.TRUE);

    /* renamed from: ch */
    public static final BooleanPref f26363ch = new BooleanPref("isTelegramSenderNameOK", Boolean.TRUE);

    /* renamed from: ci */
    public static final BooleanPref f26364ci = new BooleanPref("isWearableNodeFoundAlreadyReported ", Boolean.FALSE);

    /* renamed from: cj */
    public static final LongPref f26365cj = new LongPref("whatsappUsageCounter", 0L);

    /* renamed from: ck */
    public static final LongPref f26366ck = new LongPref("whatsapp4BUsageCounter", 0L);

    /* renamed from: cl */
    public static final LongPref f26367cl = new LongPref("telegramUsageCounter", 0L);

    /* renamed from: cm */
    public static final LongPref f26368cm = new LongPref("viberUsageCounter", 0L);

    /* renamed from: cn */
    public static final LongPref f26369cn = new LongPref("googlePlusHangoutsUsageCounter", 0L);

    /* renamed from: co */
    public static final LongPref f26370co = new LongPref("weChatUsageCounter", 0L);

    /* renamed from: cp */
    public static final LongPref f26371cp = new LongPref("skypeUsageCounter", 0L);

    /* renamed from: cq */
    public static final LongPref f26372cq = new LongPref("messengerUsageCounter", 0L);

    /* renamed from: cr */
    public static final LongPref f26373cr = new LongPref("yahooUsageCounter", 0L);

    /* renamed from: cs */
    public static final LongPref f26374cs = new LongPref("emailUsageCounter", 0L);

    /* renamed from: ct */
    public static final LongPref f26375ct = new LongPref("smsUsageCounter", 0L);

    /* renamed from: cu */
    public static final LongPref f26376cu = new LongPref("facebookMessengerUsageCounter", 0L);

    /* renamed from: cv */
    public static final LongPref f26377cv = new LongPref("duoUsageCounter", 0L);

    /* renamed from: cw */
    public static final LongPref f26378cw = new LongPref("signalUsageCounter", 0L);

    /* renamed from: cx */
    public static final LongPref f26379cx = new LongPref("alloUsageCounter", 0L);

    /* renamed from: cy */
    public static final IntegerPref f26380cy = new IntegerPref("smsAdRuleCounter", 0);

    /* renamed from: cz */
    public static final IntegerPref f26381cz = new IntegerPref("adImpressionCounter", 0);

    /* renamed from: cA */
    public static final LongPref f26330cA = new LongPref("seenDifferentContactInCDCounter", 0L);

    /* renamed from: cB */
    public static final StringPref f26331cB = new StringPref("lastContactDetailsPhoneSeen", (String) null);

    /* renamed from: cC */
    public static final DatePref f26332cC = new DatePref("lastAccessRequestPopupSeenOnIdentifiedContactsLogTimestamp", null);

    /* renamed from: cD */
    public static final IntegerPref f26333cD = new IntegerPref("accessRequestPopupSeenOnIdentifiedContactsLogCount", 0);

    /* renamed from: cE */
    public static final BooleanPref f26334cE = new BooleanPref("bottomSheetPlusBtnHasEverPressed", Boolean.FALSE);

    /* renamed from: cF */
    public static final DatePref f26335cF = new DatePref("amountOfCallsTodayDate", new Date());

    /* renamed from: cG */
    public static final IntegerPref f26336cG = new IntegerPref("amountOfCallsToday", 0);

    /* renamed from: cH */
    public static final IntegerPref f26337cH = new IntegerPref("amountOfInterstitialSeenToday", 0);

    /* renamed from: cI */
    public static final BooleanPref f26338cI = new BooleanPref("missedInterstitialOnInterval", Boolean.FALSE);

    /* renamed from: cJ */
    public static final BooleanPref f26339cJ = new BooleanPref("isPremium", Boolean.FALSE);

    /* renamed from: cK */
    public static final BooleanPref f26340cK = new BooleanPref("hasFreeStoreSku", Boolean.FALSE);

    /* renamed from: cL */
    public static final BooleanPref f26341cL = new BooleanPref("hasFiveFreeStoreSku", Boolean.FALSE);

    /* renamed from: cM */
    public static final IntegerPref f26342cM = new IntegerPref("fiveSkusCounter", 0);

    /* renamed from: cN */
    public static final DatePref f26343cN = new DatePref("adsFreeGiftEndDate", null);

    /* renamed from: cO */
    public static final IntegerPref f26344cO = new IntegerPref("freeStoreItemCredit", 0);

    /* renamed from: cP */
    public static final BooleanPref f26345cP = new BooleanPref("allStoreFree", Boolean.FALSE);

    /* renamed from: cQ */
    public static final BooleanPref f26346cQ = new BooleanPref("needToShowfreeStoreItemCreditDialog", Boolean.TRUE);

    /* renamed from: cR */
    public static final BooleanPref f26347cR = new BooleanPref("needToShowFreeStoreItemCreditDialogInsideContactList", Boolean.FALSE);

    /* renamed from: cS */
    public static final EnumPref<DownloaderCardViewHandler.StoreItemType> f26348cS = new EnumPref<>("freeStoreDialogItemType", DownloaderCardViewHandler.StoreItemType.OTHER);

    /* renamed from: cT */
    public static final IntegerPref f26349cT = new IntegerPref("freeCallScreenItemCredit", 0);

    /* renamed from: cU */
    public static final IntegerPref f26350cU = new IntegerPref("freePersonalCallScreenItemCredit", 0);

    /* renamed from: cV */
    public static final IntegerPref f26351cV = new IntegerPref("freePersonalCoverItemCredit", 0);

    /* renamed from: cW */
    public static final ArrayPref f26352cW = new ArrayPref("storeItemAwardedAsGift");

    /* renamed from: cX */
    public static final BooleanPref f26353cX = new BooleanPref("awardFreeGiftAfterUpgrade", Boolean.FALSE);

    /* renamed from: cY */
    public static final DatePref f26354cY = new DatePref("gotChurnTrueDate", null);

    /* renamed from: cZ */
    public static final EnumPref<ContactsListActivity.ContentState> f26355cZ = new EnumPref<>("lastStateInContactList", ContactsListActivity.ContentState.UNSET);

    /* renamed from: da */
    public static final DatePref f26409da = new DatePref("lastSeenCallLogTimestamp", new Date());

    /* renamed from: db */
    public static final EnumPref<CallLogSortType> f26410db = new EnumPref<>("calllogSortType", CallLogSortType.SORTED_BY_DATE);

    /* renamed from: dc */
    public static final BooleanPref f26411dc = new BooleanPref("hasClickedBuyOnPremiumPopup", Boolean.FALSE);

    /* renamed from: dd */
    public static final IntegerPref f26412dd = new IntegerPref("buyPremiumPopupSeenCount", 0);

    /* renamed from: de */
    public static final BooleanPref f26413de = new BooleanPref("isMiuiDevice", null);

    /* renamed from: df */
    public static final IntegerPref f26414df = new IntegerPref("catalogVersion", 0);

    /* renamed from: dg */
    public static final StringPref f26415dg = new StringPref("theme", "LIGHT");

    /* renamed from: dh */
    public static final StringPref f26416dh = new StringPref("chosenTheme", "default_1");

    /* renamed from: di */
    public static final EnumPref<ThemeState> f26417di = new EnumPref<>("themeState", ThemeState.WHITE);

    /* renamed from: dj */
    public static final StringPref f26418dj = new StringPref("primaryColor", "#0288D1");

    /* renamed from: dk */
    public static final StringPref f26419dk = new StringPref("primaryColorLight", "#98e3f4");

    /* renamed from: dl */
    public static final StringPref f26420dl = new StringPref("primaryColorDark", "#016CA6");

    /* renamed from: dm */
    public static final StringPref f26421dm = new StringPref("darkPrimaryColor", "#5791aa");

    /* renamed from: dn */
    public static final StringPref f26422dn = new StringPref("darkPrimaryColorLight", "#72b0c1");

    /* renamed from: do */
    public static final StringPref f26423do = new StringPref("darkPrimaryColorDark", "#325061");

    /* renamed from: dp */
    public static final StringPref f26424dp = new StringPref("overlayTintColor", "#B3009EFF");

    /* renamed from: dq */
    public static final StringPref[] f26425dq = {new StringPref("overlayChosenCover_1", (String) null), new StringPref("overlayChosenCover_2", (String) null), new StringPref("overlayChosenCover_3", (String) null), new StringPref("overlayChosenCover_4", (String) null), new StringPref("overlayChosenCover_5", (String) null)};

    /* renamed from: dr */
    public static final BooleanPref f26426dr = new BooleanPref("overlayCover", Boolean.TRUE);

    /* renamed from: ds */
    public static final StringPref f26427ds = new StringPref("callScreenThemeUrl", (String) null);

    /* renamed from: dt */
    public static final BooleanPref f26428dt = new BooleanPref("personalCallScreenFirstTime", Boolean.TRUE);

    /* renamed from: du */
    public static final BooleanPref f26429du = new BooleanPref("isCallScreenSkuPurchased", Boolean.FALSE);

    /* renamed from: dv */
    public static final BooleanPref f26430dv = new BooleanPref("isPersonalCallScreenSkuPurchased", Boolean.FALSE);

    /* renamed from: dw */
    public static final BooleanPref f26431dw = new BooleanPref("isPersonalCallScreenCardClicked", Boolean.FALSE);

    /* renamed from: dx */
    public static final IntegerPref f26432dx = new IntegerPref("personalCallScreenCardShowedNumber", 0);

    /* renamed from: dy */
    public static final EnumPref<ButtonSet> f26433dy = new EnumPref<>("buttonSet", ButtonSet.SINGLE_DEFAULT);

    /* renamed from: dz */
    public static final BooleanPref f26434dz = new BooleanPref("shouldShowCallScreenThemeTooltip", Boolean.TRUE);

    /* renamed from: dA */
    public static final BooleanPref f26383dA = new BooleanPref("isKeypadBannerActive", Boolean.TRUE);

    /* renamed from: dB */
    public static final BooleanPref f26384dB = new BooleanPref("isPersonalCoverSkuPurchased", Boolean.FALSE);

    /* renamed from: dC */
    public static final BooleanPref f26385dC = new BooleanPref("personalCoverScreenFirstTime", Boolean.TRUE);

    /* renamed from: dD */
    public static final DatePref f26386dD = new DatePref("firstShownCallScreenVersion", new Date());

    /* renamed from: dE */
    public static final IntegerPref f26387dE = new IntegerPref("incomingCallsCounter", 0);

    /* renamed from: dF */
    public static final BooleanPref f26388dF = new BooleanPref("shouldDisplayCallScreenThemeFullScreenBanner", Boolean.TRUE);

    /* renamed from: dG */
    public static final StringPref f26389dG = new StringPref("superSkinListLightBackground", (String) null);

    /* renamed from: dH */
    public static final StringPref f26390dH = new StringPref("superSkinListDarkBackground", (String) null);

    /* renamed from: dI */
    public static final StringPref[] f26391dI = {new StringPref("superSkinLightTopBarBackground_1", (String) null), new StringPref("superSkinLightTopBarBackground_2", (String) null), new StringPref("superSkinLightTopBarBackground_3", (String) null), new StringPref("superSkinLightTopBarBackground_4", (String) null), new StringPref("superSkinLightTopBarBackground_5", (String) null)};

    /* renamed from: dJ */
    public static final StringPref[] f26392dJ = {new StringPref("superSkinDarkTopBarBackground_1", (String) null), new StringPref("superSkinDarkTopBarBackground_2", (String) null), new StringPref("superSkinDarkTopBarBackground_3", (String) null), new StringPref("superSkinDarkTopBarBackground_4", (String) null), new StringPref("superSkinDarkTopBarBackground_5", (String) null)};

    /* renamed from: dK */
    public static final StringPref f26393dK = new StringPref("superSkinCard", (String) null);

    /* renamed from: dL */
    public static final StringPref f26394dL = new StringPref("superSkinWizardImage", (String) null);

    /* renamed from: dM */
    public static final StringPref f26395dM = new StringPref("superSkinGif", (String) null);

    /* renamed from: dN */
    public static final StringPref f26396dN = new StringPref("chosenCover", (String) null);

    /* renamed from: dO */
    public static final StringPref f26397dO = new StringPref("chosenKeypad", (String) null);

    /* renamed from: dP */
    public static final StringPref f26398dP = new StringPref("chosenCustomKeypadImageUrl", (String) null);

    /* renamed from: dQ */
    public static final DatePref f26399dQ = new DatePref("chosenCustomKeypadImageUrlSignature", null);

    /* renamed from: dR */
    public static final DatePref f26400dR = new DatePref("chosenCustomCoverImageUrlSignature", null);

    /* renamed from: dS */
    public static final StringPref f26401dS = new StringPref("chosenKeypadImageUrl", (String) null);

    /* renamed from: dT */
    public static final StringPref[] f26402dT = {new StringPref("cover_1", (String) null), new StringPref("cover_2", (String) null), new StringPref("cover_3", (String) null), new StringPref("cover_4", (String) null), new StringPref("cover_5", (String) null)};

    /* renamed from: dU */
    public static final BooleanPref f26403dU = new BooleanPref("superSkinContactDetailsBackgroundImageEnabled", Boolean.TRUE);

    /* renamed from: dV */
    public static final BooleanPref f26404dV = new BooleanPref("superSkinMainScreenBackgroundImageEnabled", Boolean.TRUE);

    /* renamed from: dW */
    public static final BooleanPref f26405dW = new BooleanPref("superSkinMainScreenTopBarImageEnabled", Boolean.TRUE);

    /* renamed from: dX */
    public static final BooleanPref f26406dX = new BooleanPref("superSkinMainScreenAnimatedWizardEnabled", Boolean.TRUE);

    /* renamed from: dY */
    public static final BooleanPref f26407dY = new BooleanPref("superSkinAppMenuAnimatedWizardEnabled", Boolean.TRUE);

    /* renamed from: dZ */
    public static final BooleanPref f26408dZ = new BooleanPref("superSkinEnabled", Boolean.FALSE);

    /* renamed from: ea */
    public static final BooleanPref f26462ea = new BooleanPref("hasPurchasedSuperSkin", Boolean.FALSE);

    /* renamed from: eb */
    public static final BooleanPref f26463eb = new BooleanPref("forcePremium", Boolean.FALSE);

    /* renamed from: ec */
    public static final BooleanPref f26464ec = new BooleanPref("forceInterstitial", Boolean.FALSE);

    /* renamed from: ed */
    public static final BooleanPref f26465ed = new BooleanPref("customizeReportId", Boolean.FALSE);

    /* renamed from: ee */
    public static final IntegerPref f26466ee = new IntegerPref("showCoverHeaderFirstTimeAnimationCounter", 0);

    /* renamed from: ef */
    public static final IntegerPref f26467ef = new IntegerPref("showSuperSkinMoreInfoHeaderFirstTimeAnimationCounter", 0);

    /* renamed from: eg */
    public static final BooleanPref f26468eg = new BooleanPref("isMarketWidgetEnabled", Boolean.FALSE);

    /* renamed from: eh */
    public static final BooleanPref f26469eh = new BooleanPref("shouldShowMarketBadge", Boolean.FALSE);

    /* renamed from: ei */
    public static final IntegerPref f26470ei = new IntegerPref("identifiedContactsLogUnreadDataCount", 0);

    /* renamed from: ej */
    public static final DatePref f26471ej = new DatePref("callRecorderLastShownMessage", null);

    /* renamed from: ek */
    public static final IntegerPref f26472ek = new IntegerPref("identifiedSpammersUnreadDataCount", 0);

    /* renamed from: el */
    public static final BooleanPref f26473el = new BooleanPref("shouldFlagWhatsNewInSlideMenu", Boolean.TRUE);

    /* renamed from: em */
    public static final BooleanPref f26474em = new BooleanPref("wakeUpScreenInPostCall", Boolean.FALSE);

    /* renamed from: en */
    public static final BooleanPref f26475en = new BooleanPref("enableStoreDebugCatalog", Boolean.FALSE);

    /* renamed from: eo */
    public static final BooleanPref f26476eo = new BooleanPref("enableInvitesDebugCatalog", Boolean.FALSE);

    /* renamed from: ep */
    public static final BooleanPref f26477ep = new BooleanPref("showCallLogStickyBanner", Boolean.FALSE);

    /* renamed from: eq */
    public static final BooleanPref f26478eq = new BooleanPref("showCallLogDefaultDialerBanner", Boolean.FALSE);

    /* renamed from: er */
    public static final BooleanPref f26479er = new BooleanPref("showCallRecorderSticky", Boolean.FALSE);

    /* renamed from: es */
    public static final BooleanPref f26480es = new BooleanPref("firstTimeExperienceCallLogShowed", Boolean.FALSE);

    /* renamed from: et */
    public static final BooleanPref f26481et = new BooleanPref("firstTimeExperienceShowContactDetailsTooltip", Boolean.FALSE);

    /* renamed from: eu */
    public static final StringPref[] f26482eu = {new StringPref("contactData_name_1", (String) null), new StringPref("contactData_name_2", (String) null), new StringPref("contactData_name_3", (String) null)};

    /* renamed from: ev */
    public static final StringPref[] f26483ev = {new StringPref("contactData_phone_1", (String) null), new StringPref("contactData_phone_2", (String) null), new StringPref("contactData_phone_3", (String) null)};

    /* renamed from: ew */
    public static final LongPref[] f26484ew = {new LongPref("contactData_device_id_1", -1L), new LongPref("contactData_device_id_2", -1L), new LongPref("contactData_device_id_3", -1L)};

    /* renamed from: ex */
    public static final LongPref[] f26485ex = {new LongPref("contactData_date_1", -1L), new LongPref("contactData_date_2", -1L), new LongPref("contactData_date_3", -1L)};

    /* renamed from: ey */
    public static final IntegerPref[] f26486ey = {new IntegerPref("contactData_call_history_icon_1", -1), new IntegerPref("contactData_call_history_icon_2", -1), new IntegerPref("contactData_call_history_icon_3", -1)};

    /* renamed from: ez */
    public static final StringPref[] f26487ez = {new StringPref("contactData_profile_url_1", (String) null), new StringPref("contactData_profile_url_2", (String) null), new StringPref("contactData_profile_url_3", (String) null)};

    /* renamed from: eA */
    public static final IntegerPref f26436eA = new IntegerPref("promotionVersion", 0);

    /* renamed from: eB */
    public static final LongPref f26437eB = new LongPref("lastKnownLocationTimestamp", -1L);

    /* renamed from: eC */
    public static final StringPref f26438eC = new StringPref("lastKnownLocationParcel", (String) null);

    /* renamed from: eD */
    public static final LongPref f26439eD = new LongPref("thankfulDialogDate", -1L);

    /* renamed from: eE */
    public static final IntegerPref f26440eE = new IntegerPref("seenContactDetailsScreenCount", 0);

    /* renamed from: eF */
    public static final IntegerPref f26441eF = new IntegerPref("seenContactDetailsProfileRippleEffect", 0);

    /* renamed from: eG */
    public static final IntegerPref f26442eG = new IntegerPref("numManualRecordingInitiated", 0);

    /* renamed from: eH */
    public static final BooleanPref f26443eH = new BooleanPref("callRecorderManual", Boolean.TRUE);

    /* renamed from: eI */
    public static final BooleanPref f26444eI = new BooleanPref("callRecorderAuto", Boolean.FALSE);

    /* renamed from: eJ */
    public static final BooleanPref f26445eJ = new BooleanPref("callRecorderIncomingCallEnabled", Boolean.FALSE);

    /* renamed from: eK */
    public static final BooleanPref f26446eK = new BooleanPref("callRecorderOutgoingCallEnabled", Boolean.FALSE);

    /* renamed from: eL */
    public static final BooleanPref f26447eL = new BooleanPref("callRecorderAcceptTerms", Boolean.FALSE);

    /* renamed from: eM */
    public static final BooleanPref f26448eM = new BooleanPref("shouldDisplayCallRecordingUpdate", Boolean.TRUE);

    /* renamed from: eN */
    public static final IntegerPref f26449eN = new IntegerPref("callRecorderConfigurations", 1);

    static {
        f26450eO = new EnumPref<>("callRecorderMethod", Build.VERSION.SDK_INT >= 23 ? RecordConfiguration.METHOD.METHOD_NATIVE : RecordConfiguration.METHOD.METHOD_NON_NATIVE);
        f26451eP = new EnumPref<>("callRecorderAudioSource", RecordConfiguration.AUDIO_SOURCE.VOICE_RECOGNITION);
        f26452eQ = new EnumPref<>("callRecorderFileFormat", RecordConfiguration.FILE_FORMAT.AMR);
        f26453eR = new BooleanPref("forceInCommunicationMode", Boolean.valueOf(Build.VERSION.SDK_INT < 28));
        f26454eS = new IntegerPref("callRecorderMaxRecordsValue", 1);
        f26455eT = new IntegerPref("callRecorderIncreaseVolume", 3);
        f26456eU = new BooleanPref("callRecorderNormalizeSpeed", Boolean.FALSE);
        f26457eV = new BooleanPref("callRecorderIsOutgoingCreated", Boolean.FALSE);
        f26458eW = new BooleanPref("callRecorderIsIncomingCreated", Boolean.FALSE);
        f26459eX = new BooleanPref("callRecorderIsEnjoyDialogShowed", Boolean.FALSE);
        f26460eY = new BooleanPref("showAccessibilityServiceAfterUpgrade", Boolean.FALSE);
        f26461eZ = new BooleanPref("gaveAccessibilityOnce", Boolean.FALSE);
        f26515fa = new BooleanPref("gaveDefaultDialerOnce", Boolean.valueOf(PhoneManager.get().isDefaultSystemPhoneApp()));
        f26516fb = new IntegerPref("accessibilityPopupCallCounter", 0);
        f26517fc = new DatePref("accessibilityPopupLastShown", null);
        f26518fd = new DatePref("accessibilityPopupFirstShown", null);
        f26519fe = new BooleanPref("dontRemindAccessibility", Boolean.FALSE);
        f26520ff = new BooleanPref("callRecorderHintLayout", Boolean.TRUE);
        f26521fg = new BooleanPref("blockedSpamHintLayout", Boolean.TRUE);
        f26522fh = new BooleanPref("callAppPlusHintLayout", Boolean.TRUE);
        f26523fi = new BooleanPref("lowDeviceStorage", Boolean.FALSE);
        f26524fj = new StringPref("deeplinkSource");
        f26525fk = new StringPref("deeplinkMedium");
        f26526fl = new StringPref("deeplinkCampaign");
        f26527fm = new StringPref("deeplinkTerm");
        f26528fn = new LongSetPref("identifyContactResult");
        f26529fo = new LongPref("identifyContactLastCheck", -1L);
        f26530fp = new BooleanPref("identifyContactHintVisibility", Boolean.TRUE);
        f26531fq = new BooleanPref("identifyContactShownAfterInstall", Boolean.FALSE);
        f26532fr = new IntegerPref("adsClickCounter", 0);
        f26533fs = new BooleanPref("isFirstSuccessRecordAnalyticsSent", Boolean.FALSE);
        f26534ft = new BooleanPref("shouldSendUserCorrectedExplicitAnalytics", Boolean.TRUE);
        f26535fu = new BooleanPref("seenRecordDialogBefore", Boolean.FALSE);
        f26536fv = new BooleanPref("shouldCheckRunInBGPermissionForNewUsers", Boolean.TRUE);
        f26537fw = new IntegerPref("interstitialCounter", 0);
        f26538fx = new LongPref("lastContactObserverUpdatedTime", 0L);
        f26539fy = new LongPref("lastContactObserverDeletedTime", Long.valueOf(new Date().getTime()));
        f26540fz = new BooleanPref("isDefaultPhoneApp", Boolean.FALSE);
        f26489fA = new BooleanPref("hasPhoneRang", Boolean.FALSE);
        f26490fB = new IntegerPref("lastXLocationForFloatingWidgetView", 0);
        f26491fC = new IntegerPref("lastYLocationForFloatingWidgetView", 100);
        f26492fD = new BooleanPref("seenInCallFloatingWidgetView", Boolean.FALSE);
        f26493fE = new BooleanPref("answeringHorizontal", Boolean.valueOf(DeviceDetector.isSamsung()));
        f26494fF = new LongPref("lastTimeUpdateToDefaultPhoneAppPopupWasShown", -1L);
        f26495fG = new IntegerPref("showCallScreenEncouragementPopupShownCounter", 0);
        f26496fH = new IntegerPref("drawOnScreenPopupShownCounter", 0);
        f26497fI = new BooleanPref("wasGetSimStateBySlotIndexExceptionEverSent", Boolean.FALSE);
        f26498fJ = new StringPref("vkAccessToken", "");
        f26499fK = new StringPref("tokenAuth", "");
        f26500fL = new IntegerPref("tokenSource", -1);
        f26501fM = new BooleanPref("shouldShowIncognitoCallPopup", Boolean.TRUE);
        f26502fN = new BooleanPref("shouldShowIncognitoPopup", Boolean.TRUE);
        f26503fO = new BooleanPref("shouldshowIncognitoModeExplanationPopup", Boolean.TRUE);
        f26504fP = new BooleanPref("contactListIncognitoPusherShown", Boolean.FALSE);
        f26505fQ = new BooleanPref("hasMadeIncognitoCall", Boolean.FALSE);
        f26506fR = new DatePref("showIncognitoPusherStartDate", new Date());
        f26507fS = new DatePref("lastIncognitoCallLogCheckedTime", new Date());
        f26508fT = new StringPref("currentTutorialPage", (String) null);
        f26509fU = new StringPref("encodedTutorialPages", (String) null);
        f26510fV = new DatePref("firstSeenTutorialWidgetTime", null);
        f26511fW = new IntegerPref("lastXLocationForFloatingWidgetView", -1);
        f26512fX = new IntegerPref("lastYLocationForFloatingWidgetView", -1);
        f26513fY = new IntegerPref("welcomeTutorialWidgetStatus", 0);
        f26514fZ = new DatePref("userEnteredMarketPlaceOrAdFreePlanPageDate", null);
        f26568ga = new BooleanPref("noMediaFileCreatedForGlide", Boolean.FALSE);
        f26569gb = new LongArray("favoriteLocation");
        f26570gc = new BooleanPref("favoriteState", Boolean.FALSE);
        f26571gd = new BooleanPref("showNoteBanner", Boolean.TRUE);
        f26572ge = new IntegerPref("enterIntoMarketCounter", 0);
        f26573gf = new BooleanPref("neverShowPromotionBanner", Boolean.FALSE);
        f26574gg = new IntegerPref("openKeypadCounter", 0);
        f26575gh = new BooleanPref("isKeypadPromotionsWidgetActive", Boolean.TRUE);
        f26576gi = new LongArray("showKeypadBannerDaysArray");
        f26577gj = new BooleanPref("useDebugAdUnits", Boolean.FALSE);
        f26578gk = new BooleanPref("showRingingText", Boolean.FALSE);
        f26579gl = new BooleanPref("forceSetRemoteConfigDefaults", Boolean.FALSE);
        f26580gm = new BooleanPref("showCallLogStickBannerForFirst", Boolean.FALSE);
        f26581gn = new BooleanPref("userClickOnStickyBanner", Boolean.FALSE);
        f26582go = new BooleanPref("userClickOnDefaultPhoneStickyBanner", Boolean.FALSE);
        f26583gp = new DatePref("userLastDateOfStickyBanner", new Date());
        f26584gq = new DatePref("storeToolBarDate", new Date());
        f26585gr = new BooleanPref("callAppFirstTimeSms", Boolean.TRUE);
        f26586gs = new BooleanPref("callAppFirstTimeClipboard", Boolean.TRUE);
        f26587gt = new BooleanPref("callAppFirstTimeCall", Boolean.TRUE);
        f26588gu = new BooleanPref("callAppFirstTimeNotification", Boolean.TRUE);
        f26589gv = new StringPref("firstTimeExperienceCallAppPlus", "012345678");
        f26590gw = new BooleanPref("calAppFirstTimeExperience", Boolean.FALSE);
        f26591gx = new BooleanPref("installReferrerCalled", Boolean.FALSE);
        f26592gy = new BooleanPref("isShowRegistrationReminderServiceRegistered", Boolean.FALSE);
        f26593gz = new BooleanPref("isConnectionChangedServiceRegistered", Boolean.FALSE);
        f26542gA = new BooleanPref("isPowerConnectedServiceRegistered", Boolean.FALSE);
        f26543gB = new BooleanPref("iRequestSyncRegistered", Boolean.FALSE);
        f26544gC = new BooleanPref("enableAutomationTestFlow", Boolean.FALSE);
        f26545gD = new IntegerPref("analyticsContactConfirm", 0);
        f26546gE = new IntegerPref("analyticsSpammersReport", 0);
        f26547gF = new IntegerPref("analyticsProfilePhotoChecked", 0);
        f26548gG = new EnumPref<>("analyticsDatePicker", AnalyticsDatePickerManager.DatePicker.WEEK);
        f26549gH = new DatePref("showInsightFlagDate", null);
        f26550gI = new BooleanPref("needToShowInsightFlagAfterInstall", Boolean.TRUE);
        f26551gJ = new BooleanPref("needToShowInsightFirstTimeDialog", Boolean.TRUE);
        f26552gK = new BooleanPref("needToShowCommunityFirstTimeDialog", Boolean.TRUE);
        f26553gL = new BooleanPref("needToGetMasterGift", Boolean.TRUE);
        f26554gM = new BooleanPref("recorderTestFinished", null);
        f26555gN = new BooleanPref("recorderTestFirstTimeExperience", Boolean.FALSE);
        f26556gO = new BooleanPref("userClickedPVRIcon", Boolean.FALSE);
        f26557gP = new EnumPref<>("contributaionLevel", CommunityCard.CommunityContributionLevel.INIT);
        f26558gQ = new BooleanPref("firstTimeEnterWhiteColor", Boolean.TRUE);
        f26559gR = new IntegerPref("contributionAutomation", 0);
        f26560gS = new IntegerPref("howManyTimeUpdatePopUp", 0);
        f26561gT = new StringPref[]{new StringPref("driveModeBluetoothAddress1", (String) null), new StringPref("driveModeBluetoothAddress2", (String) null), new StringPref("driveModeBluetoothAddress3", (String) null), new StringPref("driveModeBluetoothAddress4", (String) null), new StringPref("driveModeBluetoothAddress5", (String) null), new StringPref("driveModeBluetoothAddress6", (String) null)};
        f26562gU = new BooleanPref("isInDriveMode", Boolean.FALSE);
        f26563gV = new BooleanPref("isInDriveModeIncoming", Boolean.FALSE);
        f26564gW = new BooleanPref("isInDriveModeOutgoing", Boolean.FALSE);
        f26565gX = new IntegerPref("showCarModeOutGoingPopUpCounter", 0);
        f26566gY = new IntegerPref("numberOfCallsDriveModeIncoming", 0);
        f26567gZ = new IntegerPref("driveModeBluetoothConnectionCounter", 0);
        f26621ha = new IntegerPref("driveModeBluetoothOverlayCounter", 0);
        f26622hb = new BooleanPref("contactLookupDataSearchWithDelimUpdated_v96", Boolean.FALSE);
        f26623hc = new BooleanPref("contactLookupDataDescriptionSearchWithDelimUpdated_v96", Boolean.FALSE);
        f26624hd = new StringPref("lastContactsWithDelimNotUpdatedRatioPref_v96", "1");
        f26625he = new LongPref("lastContactsWithDelimExtractedInfoNotUpdatedRatioPref_v96", 1L);
        f26626hf = new StringPref("lastContactsWithDelimDescriptionNotUpdatedRatioPref_v96", "1");
        f26627hg = new IntegerPref("animateAnalyticsCard", 0);
        f26628hh = new IntegerPref("animateAnalyticsCardWhenExpandThreeTimes", 0);
        f26629hi = new IntegerPref("firstTimePostCallCard", 0);
        f26630hj = new BooleanPref("neverClickOnPostCall", Boolean.TRUE);
        f26631hk = new IntegerPref("animateAnalyticsCardThreeTimes", 0);
        f26632hl = new EnumPref<>("userDefaultIm", ContactAction.UNKNOWN);
        f26633hm = new IntegerPref("notContactBusinessPostCallCard", 0);
        f26634hn = new IntegerPref("notContactPostCallCard", 0);
        f26635ho = new IntegerPref("showIncomingPhoneVerificationDialog", 0);
        f26636hp = new IntegerPref("postCallPhoneVerificationDialogCounter", 0);
        f26637hq = new BooleanPref("needToShowPostCallPhoneVerificationDialog", Boolean.TRUE);
        f26638hr = new StringPref("referAndEarnLinkCode", "");
        f26639hs = new IntegerPref("referAndEarnPoints", 0);
        f26640ht = new IntegerPref("referAndEarnShowPoints", 0);
        f26641hu = new BooleanPref("alwaysShowReferAndEarnCard", Boolean.FALSE);
        f26642hv = new IntegerPref("referAndEarnCardCounter", 0);
        f26643hw = new BooleanPref("ignoreGoogleMaps", Boolean.FALSE);
        f26644hx = new BooleanPref("isCDInsightsCardLastOpen", Boolean.TRUE);
        f26645hy = new EnumPref<>("whoViewedMyProfileNotificationTiming", WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.INSTANT);
        f26646hz = new BooleanPref("whoViewedMyProfileNotificationEnabled", Boolean.TRUE);
        f26595hA = new BooleanPref("privateMode", Boolean.FALSE);
        f26596hB = new IntegerPref("whoViewedMyProfileCounter", 0);
        f26597hC = new DatePref("whoViewedMyProfileDailyLastScheduled", null);
        f26598hD = new LongPref("lastSeenViewerProfile", 0L);
        f26599hE = new BooleanPref("whoViewedIgnoreRules", Boolean.FALSE);
        f26600hF = new BooleanPref("whoViewedShowGraphDebug", Boolean.FALSE);
        f26601hG = new StringPref("dropboxAccessToken", "");
        f26602hH = new StringPref("googleDriveSessionId", "");
        f26603hI = new BooleanPref("notUseCallMeAgain", Boolean.FALSE);
        f26604hJ = new DatePref("lastBackupDate", null);
        f26605hK = new EnumPref<>("backupVia", BackupViaType.UN_KNOWN);
        f26606hL = new IntegerPref("backupIntervalInDays", Integer.valueOf(BackupIntervalPeriod.MONTH.getDaysInterval()));
        f26607hM = new BooleanPref("backupContacts", Boolean.TRUE);
        f26608hN = new BooleanPref("backupCallLog", Boolean.TRUE);
        f26609hO = new BooleanPref("backupVideoRingTones", Boolean.FALSE);
        f26610hP = new BooleanPref("backupRecording", Boolean.FALSE);
        f26611hQ = new BooleanPref("hasBackupPlan", Boolean.FALSE);
        f26612hR = new BooleanPref("showBackupSetupAfterBuyPlan", Boolean.FALSE);
        f26613hS = new BooleanPref("completeBackupSettings", Boolean.FALSE);
        f26614hT = new IntegerPref("backupRetriesCount", 0);
        f26615hU = new BooleanPref("enableDeveloperBackupPlan", Boolean.FALSE);
        f26616hV = new BooleanPref("hasScheduleBackupJob", Boolean.FALSE);
        f26617hW = new ArrayPref("completeBackupOnce");
        f26618hX = new DatePref("lastBackupWorkerStartedDate", null);
        f26619hY = new DatePref("callRecordingDateOfStickyBanner", null);
        f26620hZ = new DatePref("callRecordingDateOfStickyBannerAfterRevoke", null);
        f26648ia = new DatePref("defaultDialerCalllogStickyBanner", null);
        f26649ib = new DatePref("defaultDialerCalllogStickyBannerAfterRevoke", null);
        f26650ic = new BooleanPref("userSawDefaultDialerSticky", Boolean.FALSE);
        f26651id = new BooleanPref("userSawCallRecorderSticky", Boolean.FALSE);
        f26652ie = new BooleanPref("callAppPlusStickyClicked", Boolean.FALSE);
    }
}
