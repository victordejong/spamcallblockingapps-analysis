package p193e.p194a.p1053m0;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.BaseColumns;
import android.telecom.Call;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.maps.zze;
import com.google.android.gms.internal.maps.zzt;
import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.UiSettings;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.protobuf.GeneratedMessageLite;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.api.services.callerid.p135v1.model.CallContext;
import com.truecaller.api.services.callerid.p135v1.model.PredefinedMessage;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext;
import com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonType;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.data.C3795R;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.FeatureType;
import com.truecaller.data.entity.MessageType;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.data.entity.SpamData;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.models.FormField;
import com.truecaller.incallui.callui.callergradient.GradientColors;
import com.truecaller.incallui.service.CallState;
import com.truecaller.insights.C4030R;
import com.truecaller.insights.binders.utils.DeliverySchemaRuleHelper;
import com.truecaller.insights.binders.utils.OrderStatus;
import com.truecaller.insights.commons.model.InsightsFilterType;
import com.truecaller.insights.commons.model.Transport;
import com.truecaller.insights.core.senderinfo.BlockedCategoryList;
import com.truecaller.insights.core.senderinfo.SenderBlockList;
import com.truecaller.insights.core.smartnotifications.smsparser.models.NotificationBanner;
import com.truecaller.insights.models.DomainOrigin;
import com.truecaller.insights.models.InsightsDomain;
import com.truecaller.insights.models.pdo.ExtendedPdo;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.models.smartcards.ActionStateEntity;
import com.truecaller.insights.models.smartnotifications.NotificationBannerMetaData;
import com.truecaller.insights.models.smartnotifications.SmartNotificationMetadata;
import com.truecaller.insights.source.ModelType;
import com.truecaller.insights.utils.DateFormat;
import e.f.a.n.q.d.k;
import e.f.a.r.c;
import e.f.a.r.f;
import e.m.f.a.j;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import n3.b.a.h;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1451f.p1452a.p1476r.AbstractC22585a;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1451f.p1452a.p1479s.C22610d;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1050l5.p1051a.C17654m3;
import p193e.p194a.p1080o.p1097b.AbstractC18700b;
import p193e.p194a.p1080o.p1097b.AbstractC18746o;
import p193e.p194a.p1080o.p1097b.AbstractC18756v;
import p193e.p194a.p1080o.p1097b.C18750p0;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18689r;
import p193e.p194a.p1080o.p1101n.C18787a;
import p193e.p194a.p1080o.p1102o.C18798k;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1129p5.AbstractC19247m0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1365y.p1381b.C21613l;
import p193e.p194a.p1365y.p1381b.C21619p;
import p193e.p194a.p1406z3.C21849a;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p1406z3.p1408h.C21867a;
import p193e.p194a.p1406z3.p1409i.AbstractC21873e;
import p193e.p194a.p1406z3.p1409i.AbstractC21877g;
import p193e.p194a.p1406z3.p1409i.C21869a;
import p193e.p194a.p1406z3.p1409i.C21871c;
import p193e.p194a.p1406z3.p1409i.C21872d;
import p193e.p194a.p1406z3.p1409i.C21876f;
import p193e.p194a.p292a4.AbstractC7460m;
import p193e.p194a.p292a4.C7453j;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p437c.p535f.p537k.C10095c;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10122m;
import p193e.p194a.p437c.p538g.p539a0.C10118i;
import p193e.p194a.p437c.p538g.p539a0.C10119j;
import p193e.p194a.p437c.p538g.p542d0.AbstractC10153e;
import p193e.p194a.p437c.p538g.p542d0.C10152d;
import p193e.p194a.p437c.p538g.p547z.C10250a;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import p193e.p194a.p437c.p552i.p565l.p566e.C10401a;
import p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f;
import p193e.p194a.p437c.p570j.AbstractC10442e;
import p193e.p194a.p437c.p570j.AbstractC10443f;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.AbstractC10518b;
import p193e.p194a.p437c.p580r.p582e.p583a.C10533c;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.C10582b;
import p193e.p194a.p437c.p580r.p589j.C10583b0;
import p193e.p194a.p437c.p580r.p589j.C10587c0;
import p193e.p194a.p437c.p580r.p589j.C10612m;
import p193e.p194a.p437c.p580r.p590k.C10643a;
import p193e.p194a.p437c.p580r.p590k.C10644b;
import p193e.p194a.p437c.p580r.p590k.C10645c;
import p193e.p194a.p437c.p580r.p590k.C10647e;
import p193e.p194a.p437c.p580r.p590k.C10648f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import p193e.p194a.p717f.p733y.C13794x;
import p193e.p194a.p717f.p734z.C13827k0;
import p193e.p194a.p837h0.p845x.AbstractC14877a;
import p193e.p194a.p997k3.AbstractC16458h;
import s1.f0.q;
import s1.f0.r;
import s1.f0.v;
import s1.s;
import s1.u.i;
import s1.u.t;
import s1.w.d;
import s1.z.c.l;
import u3.d0;
import u3.j0;
import w3.b.a.b;
import w3.b.a.p;
import w3.c.a.a.a.k.a;
/* renamed from: e.a.m0.a1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/a1.class */
public final class C17891a1 {

    /* renamed from: a */
    public static Uri f50888a = Uri.parse("content://com.truecaller");

    /* renamed from: e.a.m0.a1$a */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$a.class */
    public static final class C17892a extends AbstractC17893b {
        /* renamed from: a */
        public static Uri m15710a(String str) {
            return C17891a1.f50888a.buildUpon().appendEncodedPath("aggregated_contact_plain_text").appendQueryParameter("filter", str).build();
        }

        /* renamed from: b */
        public static Uri m15709b() {
            return Uri.withAppendedPath(C17891a1.f50888a, "aggregated_contact");
        }

        /* renamed from: c */
        public static Uri m15708c() {
            return C17891a1.f50888a.buildUpon().appendEncodedPath("aggregated_contact_filtered_on_raw").build();
        }

        /* renamed from: d */
        public static Uri m15707d() {
            return Uri.withAppendedPath(m15709b(), RemoteMessageConst.DATA);
        }
    }

    /* renamed from: e.a.m0.a1$b */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$b.class */
    public static abstract class AbstractC17893b implements AbstractC17895d, BaseColumns {
    }

    /* renamed from: e.a.m0.a1$c */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$c.class */
    public static class C17894c {

        /* renamed from: a */
        public static final String[] f50889a = {"recording_path", "history_event_id"};

        /* renamed from: a */
        public static Uri m15706a() {
            return Uri.withAppendedPath(C17891a1.f50888a, "call_recordings");
        }

        /* renamed from: b */
        public static Uri m15705b() {
            return C17891a1.f50888a.buildUpon().appendEncodedPath("call_recordings_with_history_event").build();
        }
    }

    /* renamed from: e.a.m0.a1$d */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$d.class */
    public interface AbstractC17895d {

        /* renamed from: b */
        public static final String[] f50890b = {"contact_name", "contact_transliterated_name", "contact_is_favorite", "contact_favorite_position", "contact_handle", "contact_alt_name", "contact_gender", "contact_about", "contact_image_url", "contact_job_title", "contact_company", "contact_access", "contact_common_connections", "contact_search_time", "contact_source", "contact_default_number", "contact_phonebook_id", "contact_phonebook_hash", "contact_phonebook_lookup", "contact_spam_score", "contact_spam_type", "contact_badges", "contact_im_id", "spam_categories"};

        /* renamed from: c */
        public static final String[] f50891c = {"contact_name", "contact_image_url", "contact_default_number", "contact_is_favorite", "contact_phonebook_id", "contact_source", "contact_spam_type"};
    }

    /* renamed from: e.a.m0.a1$e */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$e.class */
    public static class C17896e {

        /* renamed from: a */
        public static String[] f50892a = {"first_name", "last_name", "sorting_key_1", "sorting_key_2", "sorting_group_1", "sorting_group_2"};

        /* renamed from: a */
        public static Uri m15704a() {
            return Uri.withAppendedPath(C17891a1.f50888a, "contact_sorting_index");
        }

        /* renamed from: b */
        public static Uri m15703b() {
            return Uri.withAppendedPath(C17891a1.f50888a, "sorted_contacts_with_data");
        }
    }

    /* renamed from: e.a.m0.a1$f */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$f.class */
    public static final class C17897f {

        /* renamed from: a */
        public static final String[] f50893a = {"preferred_transport", "hidden_number", "load_events_mode", "hidden_number_prompt_state", "type", "muted", "sound_uri"};

        /* renamed from: a */
        public static Uri m15702a() {
            return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_conversations");
        }
    }

    /* renamed from: e.a.m0.a1$g */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$g.class */
    public interface AbstractC17898g {

        /* renamed from: d */
        public static final String[] f50894d = {"data_raw_contact_id", "data_type", "data_is_primary", "data_phonebook_id", "data1", "data2", "data3", "data4", "data5", "data6", "data7", "data8", "data9", "data10", "data11"};
    }

    /* renamed from: e.a.m0.a1$h */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$h.class */
    public static final class C17899h implements AbstractC17898g, BaseColumns {
        /* renamed from: a */
        public static Uri m15701a() {
            return Uri.withAppendedPath(C17891a1.f50888a, RemoteMessageConst.DATA);
        }
    }

    /* renamed from: e.a.m0.a1$i */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$i.class */
    public interface AbstractC17900i {

        /* renamed from: e */
        public static final String[] f50895e = {"event_id", "normalized_number", "raw_number", "number_type", "country_code", "cached_name", "type", "action", "call_log_id", "timestamp", VastIconXmlManager.DURATION, "subscription_id", "feature", "new", "is_read", "subscription_component_name", "filter_source", "ringing_duration"};
    }

    /* renamed from: e.a.m0.a1$j */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$j.class */
    public static final class C17901j implements AbstractC17900i, BaseColumns {
        /* renamed from: a */
        public static Uri m15700a(int i) {
            Uri.Builder appendEncodedPath = C17891a1.f50888a.buildUpon().appendEncodedPath("history_top_called_with_aggregated_contact");
            Uri.Builder builder = appendEncodedPath;
            if (i > 0) {
                builder = appendEncodedPath.appendQueryParameter("limit", String.valueOf(i));
            }
            return builder.build();
        }

        /* renamed from: b */
        public static Uri m15699b() {
            return Uri.withAppendedPath(C17891a1.f50888a, "history");
        }

        /* renamed from: c */
        public static Uri m15698c() {
            return Uri.withAppendedPath(C17891a1.f50888a, "history_with_aggregated_contact_number");
        }

        /* renamed from: d */
        public static Uri m15697d() {
            return Uri.withAppendedPath(C17891a1.f50888a, "history_with_aggregated_contact");
        }
    }

    /* renamed from: e.a.m0.a1$k */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$k.class */
    public static final class C17902k {
        /* renamed from: A */
        public static /* synthetic */ String m15696A(InsightsDomain.C4062f c4062f, String str, int i) {
            return m15555z(c4062f, (i & 1) != 0 ? c4062f.m35226j() : null);
        }

        /* renamed from: A0 */
        public static final boolean m15695A0(C10266c c10266c) {
            l.e(c10266c, "$this$isIM");
            return c10266c.f30437f == Transport.IM.getValue();
        }

        /* renamed from: A1 */
        public static final j0 m15694A1(String str) {
            return j0.a.c(d0.h, str);
        }

        /* renamed from: B */
        public static final String m15693B(String str) {
            l.e(str, "$this$getAvatarLetter");
            char[] charArray = str.toCharArray();
            l.d(charArray, "(this as java.lang.String).toCharArray()");
            Character m3840t0 = C25225a.m3840t0(charArray);
            String str2 = null;
            if (m3840t0 != null) {
                char charValue = m3840t0.charValue();
                str2 = null;
                if (Character.isLetter(charValue)) {
                    str2 = String.valueOf(charValue);
                }
            }
            return str2;
        }

        /* renamed from: B0 */
        public static final boolean m15692B0(String str) {
            boolean z;
            l.e(str, "path");
            try {
                Uri parse = Uri.parse(str);
                l.d(parse, "Uri.parse(path)");
                z = l.a(parse.getScheme(), "content");
            } catch (Exception e) {
                z = false;
            }
            return z;
        }

        /* renamed from: B1 */
        public static final Map<String, List<String>> m15691B1(List<BlockedCategoryList> list, ModelType modelType) {
            Object obj;
            List<String> senderList;
            s sVar;
            l.e(list, "$this$toSenderCategoryMap");
            l.e(modelType, "modelType");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (BlockedCategoryList blockedCategoryList : list) {
                if (blockedCategoryList.getCategory() != null && (senderList = blockedCategoryList.getSenderList()) != null) {
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(senderList, 10));
                    for (String str : senderList) {
                        if (linkedHashMap.containsKey(str)) {
                            List list2 = (List) linkedHashMap.get(str);
                            sVar = list2 != null ? Boolean.valueOf(list2.add(blockedCategoryList.getCategory())) : null;
                        } else {
                            linkedHashMap.put(str, i.d0(new String[]{blockedCategoryList.getCategory()}));
                            sVar = s.a;
                        }
                        arrayList.add(sVar);
                    }
                }
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(C25225a.m3942Y1(linkedHashMap.size()));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                Object key = entry.getKey();
                int ordinal = modelType.ordinal();
                if (ordinal == 0) {
                    obj = "ALL_PARSER";
                } else if (ordinal != 1) {
                    throw new s1.i();
                } else {
                    obj = "ALL_UPDATES";
                }
                linkedHashMap2.put(key, ((List) entry.getValue()).contains("ALL") ? C25225a.m3962T1(obj) : (List) entry.getValue());
            }
            return linkedHashMap2;
        }

        /* JADX WARN: Type inference failed for: r0v7, types: [double] */
        /* JADX WARN: Type inference failed for: r0v9, types: [double] */
        /* renamed from: C */
        public static final double m15690C(InsightsDomain.Bill bill) {
            l.e(bill, "$this$getBillAmount");
            Double f = q.f(bill.getDueAmt());
            return f != null ? f.doubleValue() : 0;
        }

        /* renamed from: C0 */
        public static final boolean m15689C0(InsightsFilterType insightsFilterType) {
            l.e(insightsFilterType, "$this$isNotBlackListed");
            return insightsFilterType != InsightsFilterType.FILTER_BLACKLISTED;
        }

        /* renamed from: C1 */
        public static final Map<String, List<String>> m15688C1(List<SenderBlockList> list) {
            List<String> senderList;
            s sVar;
            l.e(list, "$this$toSenderGrammarMap");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (SenderBlockList senderBlockList : list) {
                if (senderBlockList.getGrammar() != null && (senderList = senderBlockList.getSenderList()) != null) {
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(senderList, 10));
                    for (String str : senderList) {
                        if (linkedHashMap.containsKey(str)) {
                            List list2 = (List) linkedHashMap.get(str);
                            sVar = list2 != null ? Boolean.valueOf(list2.add(senderBlockList.getGrammar())) : null;
                        } else {
                            linkedHashMap.put(str, i.d0(new String[]{senderBlockList.getGrammar()}));
                            sVar = s.a;
                        }
                        arrayList.add(sVar);
                    }
                }
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(C25225a.m3942Y1(linkedHashMap.size()));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                linkedHashMap2.put(entry.getKey(), ((List) entry.getValue()).contains("ALL") ? C25225a.m3962T1("ALL") : (List) entry.getValue());
            }
            return linkedHashMap2;
        }

        /* renamed from: D */
        public static final C10612m m15687D(AbstractC10518b.C10520b c10520b) {
            l.e(c10520b, "$this$getBillIcon");
            String str = c10520b.f31321o;
            return (str.hashCode() == 1428640201 && str.equals("CreditCard")) ? new C10612m(C4030R.C4031drawable.ic_tcx_card_insights, 0, 0, 6) : new C10612m(C4030R.C4031drawable.ic_bill_infocard, 0, 0, 6);
        }

        /* renamed from: D0 */
        public static final boolean m15686D0(String str) {
            return !(str == null || r.p(str));
        }

        /* renamed from: D1 */
        public static final InsightsDomain.C4062f m15685D1(ExtendedPdo extendedPdo, Map<Long, ActionStateEntity> map, boolean z) {
            l.e(extendedPdo, "$this$toTravelDomainSchema");
            l.e(map, "actions");
            if (!l.a(extendedPdo.getD(), "Travel")) {
                StringBuilder m8728C = C22128a.m8728C("Cannot create TravelDomain from [");
                m8728C.append(extendedPdo.getD());
                m8728C.append("] pdo");
                throw new IllegalArgumentException(m8728C.toString());
            }
            String k = extendedPdo.getK();
            String p = extendedPdo.getP();
            String c = extendedPdo.getC();
            String o = extendedPdo.getO();
            String f = extendedPdo.getF();
            String g = extendedPdo.getG();
            String s = extendedPdo.getS();
            String val1 = extendedPdo.getVal1();
            String val2 = extendedPdo.getVal2();
            String val3 = extendedPdo.getVal3();
            String val4 = extendedPdo.getVal4();
            String val5 = extendedPdo.getVal5();
            b m26009V1 = C10480a.m26009V1(DateFormat.yyyy_MM_dd_HH_mm_ss, extendedPdo.getDatetime());
            w3.b.a.r m26001X1 = C10480a.m26001X1(DateFormat.H_mm, extendedPdo.getDffVal1());
            String dffVal3 = extendedPdo.getDffVal3();
            String dffVal4 = extendedPdo.getDffVal4();
            String dffVal5 = extendedPdo.getDffVal5();
            long messageID = extendedPdo.getMessageID();
            String address = extendedPdo.getAddress();
            String dffVal2 = extendedPdo.getDffVal2();
            b m26020S2 = C10480a.m26020S2(extendedPdo.getMsgDate());
            long conversationId = extendedPdo.getConversationId();
            ActionStateEntity actionStateEntity = map.get(Long.valueOf(extendedPdo.getMessageID()));
            return new InsightsDomain.C4062f(k, p, c, o, f, g, s, val1, val2, val3, val4, val5, m26009V1, m26001X1, dffVal3, dffVal4, dffVal5, messageID, address, dffVal2, m26020S2, conversationId, extendedPdo.getSpamCategory(), extendedPdo.isIM(), actionStateEntity != null ? C10480a.m26044M2(actionStateEntity) : null, null, z, extendedPdo.getMessage(), 33554432);
        }

        /* renamed from: E */
        public static final String m15684E(InsightsDomain.Bill bill) {
            l.e(bill, "$this$getBillType");
            return m15677G0(bill) ? "PrepaidExpiry" : m15680F0(bill) ? "PrepaidSuccess" : m15563w0(bill) ? "CreditCard" : "Bill";
        }

        /* renamed from: E0 */
        public static final boolean m15683E0(C13642g c13642g) {
            l.e(c13642g, "$this$isPremium");
            l.e(c13642g, "$this$hasBadge");
            return (c13642g.f39514d & 4) == 4;
        }

        /* renamed from: E1 */
        public static /* synthetic */ InsightsDomain.C4062f m15682E1(ExtendedPdo extendedPdo, Map map, boolean z, int i) {
            if ((i & 1) != 0) {
                map = t.a;
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return m15685D1(extendedPdo, map, z);
        }

        /* renamed from: F */
        public static /* synthetic */ boolean m15681F(AbstractC18746o abstractC18746o, String str, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return abstractC18746o.getBoolean(str, z);
        }

        /* renamed from: F0 */
        public static final boolean m15680F0(InsightsDomain.Bill bill) {
            l.e(bill, "$this$isPrepaidBillPayment");
            boolean z = false;
            if (l.a(bill.getBillCategory(), "prepaid_bill")) {
                z = false;
                if (m15690C(bill) > 0) {
                    z = true;
                }
            }
            return z;
        }

        /* renamed from: F1 */
        public static final C10648f m15679F1(AbstractC10518b.C10526g c10526g, Context context, String str, C8505a c8505a, boolean z, boolean z2, AbstractC10412f abstractC10412f) {
            C10647e c10647e;
            C10647e c10647e2;
            l.e(c10526g, "$this$toUpdateNotification");
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "messageText");
            l.e(c8505a, "addressProfile");
            l.e(abstractC10412f, "smartNotificationsHelper");
            SmartNotificationMetadata smartNotificationMetadata = new SmartNotificationMetadata(c10526g.f31408c, c10526g.f31407b, c10526g.f31409d, true, z2);
            if (z) {
                String string = context.getString(C4030R.string.MarkAsRead);
                l.d(string, "context.getString(R.string.MarkAsRead)");
                Locale locale = Locale.ENGLISH;
                l.d(locale, "Locale.ENGLISH");
                String upperCase = string.toUpperCase(locale);
                l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
                c10647e = new C10647e(upperCase, abstractC10412f.mo26192h(context, smartNotificationMetadata));
            } else {
                String string2 = context.getString(C4030R.string.ShowSMS);
                l.d(string2, "context.getString(R.string.ShowSMS)");
                Locale locale2 = Locale.ENGLISH;
                l.d(locale2, "Locale.ENGLISH");
                String upperCase2 = string2.toUpperCase(locale2);
                l.d(upperCase2, "(this as java.lang.String).toUpperCase(locale)");
                c10647e = new C10647e(upperCase2, abstractC10412f.mo26193g(context, smartNotificationMetadata));
            }
            if (!z) {
                String string3 = context.getString(C4030R.string.MarkAsRead);
                l.d(string3, "context.getString(R.string.MarkAsRead)");
                Locale locale3 = Locale.ENGLISH;
                l.d(locale3, "Locale.ENGLISH");
                String upperCase3 = string3.toUpperCase(locale3);
                l.d(upperCase3, "(this as java.lang.String).toUpperCase(locale)");
                c10647e2 = new C10647e(upperCase3, abstractC10412f.mo26190j(context));
            } else {
                c10647e2 = null;
            }
            String t = r.t(str, StringConstant.NEW_LINE, StringConstant.SPACE, false, 4);
            String str2 = c10526g.f31408c;
            String str3 = c8505a.f26291b;
            String str4 = str3;
            if (r.p(str3)) {
                str4 = c8505a.f26290a;
            }
            return new C10648f(str, t, str2, str4, c8505a.f26292c, C4030R.C4031drawable.ic_updates_notification, abstractC10412f.mo26195e(context, z, smartNotificationMetadata), abstractC10412f.mo26198b(context, smartNotificationMetadata), c10647e, c10647e2, smartNotificationMetadata);
        }

        /* renamed from: G */
        public static final List<C10583b0> m15678G(AbstractC10518b.C10524f c10524f, boolean z) {
            List list;
            l.e(c10524f, "$this$getContentTextColorMapping");
            String str = c10524f.f31373t;
            if (str != null) {
                list = C25225a.m3962T1(new C10583b0(0, str.length() + (z ? 2 : 0), c10524f.f31376w));
            } else {
                list = s1.u.s.a;
            }
            return list;
        }

        /* renamed from: G0 */
        public static final boolean m15677G0(InsightsDomain.Bill bill) {
            l.e(bill, "$this$isPrepaidExp");
            return l.a(bill.getBillCategory(), "recharge_expiry");
        }

        /* JADX WARN: Code restructure failed: missing block: B:53:0x0202, code lost:
            if (r0.length() == 0) goto L54;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00bc  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x010d  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0152  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x016c  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x017b  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x01ea  */
        /* renamed from: G1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.Object m15676G1(com.truecaller.insights.models.pdo.ExtendedPdo r18, p193e.p194a.p437c.p606w.p607o0.AbstractC10821g r19, com.truecaller.insights.models.smartcards.ActionStateEntity r20, s1.w.d<? super com.truecaller.insights.models.InsightsDomain> r21) {
            /*
                Method dump skipped, instructions count: 613
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15676G1(com.truecaller.insights.models.pdo.ExtendedPdo, e.a.c.w.o0.g, com.truecaller.insights.models.smartcards.ActionStateEntity, s1.w.d):java.lang.Object");
        }

        /* renamed from: H */
        public static Uri m15675H() {
            return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_participants");
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0087, code lost:
            if (r4 != false) goto L27;
         */
        /* renamed from: H0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final boolean m15674H0(com.truecaller.insights.models.InsightsDomain.C4062f r3) {
            /*
                r0 = r3
                java.lang.String r1 = "$this$isUrlTypeProper"
                s1.z.c.l.e(r0, r1)
                r0 = r3
                java.lang.String r0 = r0.getUrlType()
                int r0 = r0.length()
                r4 = r0
                r0 = 1
                r5 = r0
                r0 = r4
                if (r0 <= 0) goto L1a
                r0 = 1
                r4 = r0
                goto L1c
            L1a:
                r0 = 0
                r4 = r0
            L1c:
                r0 = r4
                if (r0 == 0) goto L8d
                e.q.f.a.g.b[] r0 = p193e.p1681q.p1701f.p1702a.p1713g.EnumC25258b.values()
                r6 = r0
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r1.<init>()
                r7 = r0
                r0 = 0
                r4 = r0
            L2f:
                r0 = r4
                r1 = 2
                if (r0 >= r1) goto L4f
                r0 = r6
                r1 = r4
                r0 = r0[r1]
                java.lang.String r0 = r0.f70665a
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L49
                r0 = r7
                r1 = r8
                boolean r0 = r0.add(r1)
            L49:
                int r4 = r4 + 1
                goto L2f
            L4f:
                r0 = r7
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto L5a
                goto L84
            L5a:
                r0 = r7
                java.util.Iterator r0 = r0.iterator()
                r8 = r0
            L61:
                r0 = r8
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L84
                r0 = r8
                java.lang.Object r0 = r0.next()
                java.lang.String r0 = (java.lang.String) r0
                r1 = r3
                java.lang.String r1 = r1.getUrlType()
                boolean r0 = s1.z.c.l.a(r0, r1)
                if (r0 == 0) goto L61
                r0 = 1
                r4 = r0
                goto L86
            L84:
                r0 = 0
                r4 = r0
            L86:
                r0 = r4
                if (r0 == 0) goto L8d
                goto L8f
            L8d:
                r0 = 0
                r5 = r0
            L8f:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15674H0(com.truecaller.insights.models.InsightsDomain$f):boolean");
        }

        /* renamed from: H1 */
        public static final AbstractC10122m m15673H1(AbstractC10153e.C10154a<C10118i> c10154a, String str) {
            l.e(c10154a, "<this>");
            l.e(str, "word");
            return new C10250a(str, c10154a);
        }

        /* renamed from: I */
        public static Uri m15672I() {
            return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_participants_with_contact_info");
        }

        /* renamed from: I0 */
        public static final boolean m15671I0(InsightsDomain.C4062f c4062f) {
            l.e(c4062f, "$this$isUrlTypeWebCheckIn");
            boolean z = true;
            if (!(c4062f.getUrlType().length() > 0) || !l.a(c4062f.getUrlType(), "webchckin")) {
                z = false;
            }
            return z;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0135  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0138  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0164  */
        /* renamed from: I1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object m15670I1(p193e.p194a.p437c.p526c.p528d.AbstractC9930p r7, java.util.List<com.truecaller.insights.models.categorizer.CategorizerWordProb> r8, java.util.List<com.truecaller.insights.models.states.InsightState> r9, s1.w.d<? super s1.s> r10) {
            /*
                Method dump skipped, instructions count: 371
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15670I1(e.a.c.c.d.p, java.util.List, java.util.List, s1.w.d):java.lang.Object");
        }

        /* renamed from: J */
        public static Uri m15669J() {
            return Uri.withAppendedPath(C17891a1.f50888a, "profile_view_events");
        }

        /* renamed from: J0 */
        public static final boolean m15668J0(Contact contact) {
            l.e(contact, "$this$isVerifiedBizOrPriority");
            return contact.m35568E0() || contact.m35490w0();
        }

        /* renamed from: K */
        public static Uri m15666K() {
            return Uri.withAppendedPath(C17891a1.f50888a, "screened_calls");
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x0075, code lost:
            if ((r3.f39528r && !r3.f39521k && !r3.f39531u && !m15557y0(r3)) != false) goto L30;
         */
        /* renamed from: K0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final boolean m15665K0(p193e.p194a.p717f.p718a.C13642g r3) {
            /*
                r0 = r3
                java.lang.String r1 = "$this$isVerifiedBizOrPriority"
                s1.z.c.l.e(r0, r1)
                r0 = r3
                java.lang.String r1 = "$this$isVerifiedBusinessByBadgePriority"
                s1.z.c.l.e(r0, r1)
                r0 = r3
                boolean r0 = m15662L0(r0)
                r4 = r0
                r0 = 0
                r5 = r0
                r0 = r4
                if (r0 != 0) goto L44
                r0 = r3
                boolean r0 = r0.f39530t
                if (r0 == 0) goto L3f
                r0 = r3
                boolean r0 = r0.f39521k
                if (r0 != 0) goto L3f
                r0 = r3
                boolean r0 = r0.f39531u
                if (r0 != 0) goto L3f
                r0 = r3
                boolean r0 = m15557y0(r0)
                if (r0 != 0) goto L3f
                r0 = r3
                boolean r0 = r0.f39528r
                if (r0 != 0) goto L3f
                goto L44
            L3f:
                r0 = 0
                r6 = r0
                goto L46
            L44:
                r0 = 1
                r6 = r0
            L46:
                r0 = r6
                if (r0 != 0) goto L78
                r0 = r3
                java.lang.String r1 = "$this$isPriorityUserByBadgePriority"
                s1.z.c.l.e(r0, r1)
                r0 = r3
                boolean r0 = r0.f39528r
                if (r0 == 0) goto L72
                r0 = r3
                boolean r0 = r0.f39521k
                if (r0 != 0) goto L72
                r0 = r3
                boolean r0 = r0.f39531u
                if (r0 != 0) goto L72
                r0 = r3
                boolean r0 = m15557y0(r0)
                if (r0 != 0) goto L72
                r0 = 1
                r6 = r0
                goto L74
            L72:
                r0 = 0
                r6 = r0
            L74:
                r0 = r6
                if (r0 == 0) goto L7a
            L78:
                r0 = 1
                r5 = r0
            L7a:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15665K0(e.a.f.a.g):boolean");
        }

        /* renamed from: K1 */
        public static C21853e m15664K1(Context context) {
            return (C21853e) ComponentCallbacks2C22222c.m8446e(context);
        }

        /* renamed from: L */
        public static Uri m15663L() {
            return Uri.withAppendedPath(C17891a1.f50888a, "t9_mapping");
        }

        /* renamed from: L0 */
        public static final boolean m15662L0(C13642g c13642g) {
            l.e(c13642g, "$this$isVerifiedBusinessWithSpamCount");
            return c13642g.f39530t && c13642g.f39521k;
        }

        /* renamed from: L1 */
        public static C21853e m15661L1(View view) {
            return (C21853e) ComponentCallbacks2C22222c.m8445f(view);
        }

        /* renamed from: M */
        public static Uri m15660M() {
            return Uri.withAppendedPath(C17891a1.f50888a, "topspammers");
        }

        /* renamed from: M0 */
        public static final Contact m15659M0(Contact contact, List<SpamCategoryModel> list) {
            SpamData spamData;
            SpamData spamData2;
            l.e(contact, "$this$join");
            l.e(list, "categories");
            if (!list.isEmpty()) {
                SpamData spamData3 = contact.f11529x;
                if (spamData != null) {
                    l.d(spamData, "it");
                    spamData2 = new SpamData(spamData, list);
                } else {
                    spamData2 = new SpamData(list);
                }
                contact.f11529x = spamData2;
            }
            return contact;
        }

        /* renamed from: M1 */
        public static C21853e m15658M1(Fragment fragment) {
            return (C21853e) ComponentCallbacks2C22222c.m8448c(fragment.getContext()).m8129g(fragment);
        }

        /* renamed from: N */
        public static int m15657N(Object obj) {
            if (obj instanceof String) {
                return 32;
            }
            if (obj instanceof Integer) {
                return 2;
            }
            if (obj instanceof Long) {
                return 4;
            }
            if (obj instanceof Float) {
                return 8;
            }
            if (obj instanceof Boolean) {
                return 16;
            }
            if (!(obj instanceof Set)) {
                throw new IllegalArgumentException("Unexpected data type.");
            }
            return 64;
        }

        /* renamed from: N0 */
        public static final Bitmap m15656N0(C21869a c21869a, Context context) {
            Object obj;
            l.e(c21869a, "$this$load");
            l.e(context, AnalyticsConstants.CONTEXT);
            C21853e c21853e = (C21853e) ComponentCallbacks2C22222c.m8446e(context);
            l.d(c21853e, "GlideApp.with(context)");
            f m8418X = m15594m(c21853e, c21869a, context).m8418X();
            l.d(m8418X, "GlideApp.with(context)\n …quest()\n        .submit()");
            try {
                obj = m8418X.get();
            } catch (Exception e) {
                if (!(e instanceof CancellationException) && !(e instanceof InterruptedException) && !(e instanceof ExecutionException) && !(e instanceof IOException) && !(e instanceof SecurityException)) {
                    throw e;
                }
                obj = null;
            }
            return (Bitmap) obj;
        }

        /* renamed from: N1 */
        public static C21853e m15655N1(n3.r.a.l lVar) {
            Objects.requireNonNull(lVar, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
            return (C21853e) ComponentCallbacks2C22222c.m8449b(lVar).f61718g.m8128h(lVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
            if (r3 != null) goto L18;
         */
        /* renamed from: O */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.String m15654O(p193e.p194a.p437c.p580r.AbstractC10518b.C10521c r3) {
            /*
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r4 = r0
                r0 = r3
                java.lang.String r0 = r0.f31325b
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L14
                goto L18
            L14:
                java.lang.String r0 = "Delivery update"
                r5 = r0
            L18:
                r0 = r4
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r3
                e.a.c.r.j.c0 r0 = m15648R(r0)
                r3 = r0
                r0 = r3
                if (r0 == 0) goto L53
                r0 = r3
                java.lang.String r0 = r0.f31581a
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L53
                r0 = r5
                boolean r0 = s1.f0.r.p(r0)
                r6 = r0
                r0 = 0
                r3 = r0
                r0 = r6
                if (r0 != 0) goto L3e
                goto L40
            L3e:
                r0 = 0
                r5 = r0
            L40:
                r0 = r5
                if (r0 == 0) goto L4c
                java.lang.String r0 = " • "
                r1 = r5
                java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8543z2(r0, r1)
                r3 = r0
            L4c:
                r0 = r3
                if (r0 == 0) goto L53
                goto L57
            L53:
                java.lang.String r0 = ""
                r3 = r0
            L57:
                r0 = r4
                r1 = r3
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                java.lang.String r0 = r0.toString()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15654O(e.a.c.r.b$c):java.lang.String");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: O0 */
        public static final C22234h<Drawable> m15653O0(ComponentCallbacks2C22236i componentCallbacks2C22236i, Uri uri, Integer num) {
            AbstractC22585a abstractC22585a;
            l.e(componentCallbacks2C22236i, "$this$loadAsAvatar");
            AbstractC22585a m15597l = m15597l(componentCallbacks2C22236i.mo8409p(uri), uri);
            l.e(m15597l, "$this$applyAvatarTransformations");
            if (num == null) {
                abstractC22585a = m15597l.mo8102f();
                l.d(abstractC22585a, "circleCrop()");
            } else {
                abstractC22585a = m15597l.mo8108F(new C21867a(num.intValue()), new k());
                l.d(abstractC22585a, "transform(FillAlphaTrans…(colorInt), CircleCrop())");
            }
            l.d(abstractC22585a, "load(uri).applyCacheSign…rmations(backgroundColor)");
            return (C22234h) abstractC22585a;
        }

        /* renamed from: P */
        public static /* synthetic */ AbstractC10443f m15652P(AbstractC10442e abstractC10442e, String str, Long l, float f, String str2, String str3, String str4, int i, Object obj) {
            if ((i & 32) != 0) {
                str4 = "Unknown";
            }
            return abstractC10442e.mo26131b(str, l, f, str2, null, str4);
        }

        /* renamed from: P0 */
        public static final Bitmap m15651P0(C21869a c21869a, int i, Context context) {
            Object obj;
            Bitmap bitmap;
            c<Bitmap> cVar;
            l.e(c21869a, "$this$loadOrFallback");
            l.e(context, AnalyticsConstants.CONTEXT);
            C21853e c21853e = (C21853e) ComponentCallbacks2C22222c.m8446e(context);
            l.d(c21853e, "GlideApp.with(context)");
            f m8418X = m15594m(c21853e, c21869a, context).m8418X();
            l.d(m8418X, "GlideApp.with(context)\n …quest()\n        .submit()");
            try {
                obj = m8418X.get();
            } catch (Exception e) {
                if (!(e instanceof CancellationException) && !(e instanceof InterruptedException) && !(e instanceof ExecutionException) && !(e instanceof IOException) && !(e instanceof SecurityException)) {
                    throw e;
                }
                obj = null;
            }
            Bitmap bitmap2 = (Bitmap) obj;
            AbstractC21877g abstractC21877g = c21869a.f60760d;
            l.e(abstractC21877g, "size");
            l.e(context, AnalyticsConstants.CONTEXT);
            if (bitmap2 != null) {
                bitmap = bitmap2;
            } else {
                C21852d<Bitmap> m8978f0 = ((C21853e) ComponentCallbacks2C22222c.m8446e(context)).mo8415f().m8973k0(Integer.valueOf(i)).m8978f0(AbstractC22364k.f62125b);
                l.d(m8978f0, "GlideApp.with(context)\n …y(DiskCacheStrategy.NONE)");
                l.e(m8978f0, "$this$submit");
                l.e(abstractC21877g, "size");
                l.e(context, AnalyticsConstants.CONTEXT);
                if (abstractC21877g instanceof C21876f) {
                    cVar = m8978f0.m8418X();
                    l.d(cVar, "submit()");
                } else if (abstractC21877g instanceof AbstractC21873e) {
                    AbstractC21873e abstractC21873e = (AbstractC21873e) abstractC21877g;
                    cVar = m8978f0.m8417Y(C19291g.m13645A(context, abstractC21873e.f60763a), C19291g.m13645A(context, abstractC21873e.f60764b));
                    l.d(cVar, "with(size) { submit(cont…ntext.dpToPx(heightDp)) }");
                } else if (abstractC21877g instanceof C21872d) {
                    C21872d c21872d = (C21872d) abstractC21877g;
                    cVar = m8978f0.m8417Y(c21872d.f60761a, c21872d.f60762b);
                    l.d(cVar, "submit(size.widthPx, size.heightPx)");
                } else if (!(abstractC21877g instanceof C21871c)) {
                    throw new s1.i();
                } else {
                    C21871c c21871c = (C21871c) abstractC21877g;
                    cVar = m8978f0.m8417Y(C19291g.m13645A(context, 0), C19291g.m13645A(context, 0));
                    l.d(cVar, "submit(context.dpToPx(si…xt.dpToPx(size.heightDp))");
                }
                bitmap = (Bitmap) cVar.get();
                if (bitmap == null) {
                    throw new Resources.NotFoundException(C22128a.m8611i2("Unable to load fallback drawable ", i));
                }
            }
            return bitmap;
        }

        /* renamed from: Q */
        public static final C10647e m15650Q(Context context, boolean z, AbstractC10412f abstractC10412f, SmartNotificationMetadata smartNotificationMetadata) {
            int i = C4030R.string.MarkAsRead;
            String string = context.getString(i);
            l.d(string, "context.getString(R.string.MarkAsRead)");
            Locale locale = Locale.ENGLISH;
            l.d(locale, "Locale.ENGLISH");
            String upperCase = string.toUpperCase(locale);
            l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(abstractC10412f, "smartNotificationsHelper");
            l.e(smartNotificationMetadata, "metadata");
            PendingIntent mo26192h = z ? abstractC10412f.mo26192h(context, smartNotificationMetadata) : abstractC10412f.mo26190j(context);
            String string2 = context.getString(i);
            new Bundle();
            C26450q.m1862g(string2);
            return new C10647e(upperCase, mo26192h);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(8:2|(2:4|(6:6|8|35|(2:10|(2:12|13)(2:14|15))(5:16|(5:18|(1:20)|21|22|(2:24|25)(1:26))|32|33|34)|27|30))|7|8|35|(0)(0)|27|30) */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x015f, code lost:
            r10 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0162, code lost:
            if (r10 == false) goto L33;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0079  */
        /* renamed from: Q0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.Object m15649Q0(android.app.Activity r7, p193e.p194a.p1188r3.AbstractC19909g r8, com.truecaller.dynamicfeaturesupport.DynamicFeature r9, boolean r10, s1.w.d<? super java.lang.Boolean> r11) {
            /*
                Method dump skipped, instructions count: 366
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15649Q0(android.app.Activity, e.a.r3.g, com.truecaller.dynamicfeaturesupport.DynamicFeature, boolean, s1.w.d):java.lang.Object");
        }

        /* renamed from: R */
        public static final C10587c0 m15648R(AbstractC10518b.C10521c c10521c) {
            l.e(c10521c, "model");
            String str = c10521c.f31324a;
            C10587c0 c10587c0 = null;
            if (str != null) {
                int i = C4030R.color.white;
                C10612m c10612m = c10521c.f31331h;
                Integer num = null;
                if (c10612m != null) {
                    num = Integer.valueOf(c10612m.f31637b);
                }
                c10587c0 = new C10587c0(str, Integer.valueOf(i), num);
            }
            return c10587c0;
        }

        /* renamed from: R0 */
        public static final AvatarXConfig m15647R0(C13827k0 c13827k0) {
            l.e(c13827k0, "$this$map");
            String str = c13827k0.f40087a;
            return new AvatarXConfig(str != null ? Uri.parse(str) : null, c13827k0.f40088b, c13827k0.f40089c, c13827k0.f40090d, c13827k0.f40091e, c13827k0.f40092f, c13827k0.f40093g, c13827k0.f40100n, c13827k0.f40094h, c13827k0.f40095i, c13827k0.f40096j, c13827k0.f40098l, c13827k0.f40099m, false, null, false, 57344);
        }

        /* renamed from: S */
        public static final C10647e m15646S(Context context, AbstractC10412f abstractC10412f, SmartNotificationMetadata smartNotificationMetadata) {
            String string = context.getString(C4030R.string.PayBill);
            l.d(string, "context.getString(R.string.PayBill)");
            Locale locale = Locale.ENGLISH;
            l.d(locale, "Locale.ENGLISH");
            String upperCase = string.toUpperCase(locale);
            l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
            return new C10647e(upperCase, abstractC10412f.mo26198b(context, smartNotificationMetadata));
        }

        /* renamed from: S0 */
        public static final int[] m15645S0(GradientColors gradientColors, Context context) {
            l.e(gradientColors, "$this$mapGradientColorResources");
            l.e(context, AnalyticsConstants.CONTEXT);
            int[] colorsResource = gradientColors.getColorsResource();
            ArrayList arrayList = new ArrayList(colorsResource.length);
            for (int i : colorsResource) {
                Object obj = C26467a.f74235a;
                arrayList.add(Integer.valueOf(C26467a.C26471d.m1787a(context, i)));
            }
            return i.R0(arrayList);
        }

        /* renamed from: T */
        public static String m15644T(String str) {
            String str2 = "��";
            if ("location".equals(str)) {
                str2 = "��";
            } else if ("image".equals(str)) {
                str2 = "��️";
            } else if (!"text".equals(str)) {
                if ("accept".equals(str)) {
                    str2 = "✔";
                } else if ("ok".equals(str)) {
                    str2 = "��";
                } else if ("reject".equals(str)) {
                    str2 = "❌";
                } else if ("call".equals(str)) {
                    str2 = "��";
                }
            }
            return str2;
        }

        /* renamed from: T0 */
        public static final CallContextMessage m15643T0(IncomingCallContext incomingCallContext) {
            l.e(incomingCallContext, "$this$mapToCallContext");
            return new CallContextMessage(incomingCallContext.getId(), incomingCallContext.getNumber(), incomingCallContext.getMessage(), null, null, null, false, 88);
        }

        /* renamed from: U */
        public static AbstractC14877a m15642U() {
            AbstractC14877a abstractC14877a;
            synchronized (C17902k.class) {
                try {
                    abstractC14877a = (AbstractC14877a) C8367d.m28633a(KnownEndpoints.FILTER, AbstractC14877a.class);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return abstractC14877a;
        }

        /* renamed from: U0 */
        public static /* synthetic */ void m15641U0(AbstractC10258h abstractC10258h, Context context, long j, long j2, String str, int i, int i2, Object obj) {
            if ((i2 & 16) != 0) {
                i = 1;
            }
            abstractC10258h.mo26519a(context, j, j2, str, i);
        }

        /* renamed from: V */
        public static final FeatureType m15640V(OnDemandMessageSource onDemandMessageSource) {
            l.e(onDemandMessageSource, "$this$getFeatureType");
            return onDemandMessageSource instanceof OnDemandMessageSource.MidCall ? FeatureType.MID_CALL : onDemandMessageSource instanceof OnDemandMessageSource.SecondCall ? ((OnDemandMessageSource.SecondCall) onDemandMessageSource).getType() == OnDemandMessageSource.SecondCall.Type.MissedCall ? FeatureType.CALL_BACK : FeatureType.SECOND_CALL : FeatureType.ON_DEMAND;
        }

        /* renamed from: V0 */
        public static final double m15639V0(Double d, Double d2) {
            Double d3;
            if (d == null) {
                d3 = null;
            } else {
                double doubleValue = d.doubleValue();
                if (d2 == null) {
                    throw new IllegalStateException("Cannot add null value");
                }
                d3 = Double.valueOf(d2.doubleValue() + doubleValue);
            }
            if (d3 != null) {
                return d3.doubleValue();
            }
            throw new IllegalStateException("Cannot add null value");
        }

        /* renamed from: W */
        public static Uri m15638W() {
            return C17891a1.f50888a.buildUpon().appendEncodedPath("wvm_incoming_with_raw_contact_data").build();
        }

        /* renamed from: W0 */
        public static final C17654m3.C17656b m15637W0(C17654m3.C17656b c17656b, Contact contact, Integer num) {
            l.e(c17656b, "$this$putSpamVersionIfExist");
            Integer m15605i0 = m15605i0(contact, num);
            if (m15605i0 != null) {
                Integer valueOf = Integer.valueOf(m15605i0.intValue());
                c17656b.validate(c17656b.fields()[8], valueOf);
                c17656b.f49842i = valueOf;
                c17656b.fieldSetFlags()[8] = true;
            }
            return c17656b;
        }

        /* renamed from: X */
        public static final List<String> m15636X(Contact contact) {
            l.e(contact, "$this$getNormalizedNumbers");
            List<Number> m35557M = contact.m35557M();
            l.d(m35557M, "numbers");
            ArrayList arrayList = new ArrayList();
            for (Number number : m35557M) {
                l.d(number, "it");
                String m35479e = number.m35479e();
                if (m35479e != null) {
                    arrayList.add(m35479e);
                }
            }
            return arrayList;
        }

        /* renamed from: X0 */
        public static Object m15635X0(DataInputStream dataInputStream, int i) throws IOException {
            if (i != 2) {
                if (i == 4) {
                    return Long.valueOf(dataInputStream.readLong());
                }
                if (i == 8) {
                    return Float.valueOf(dataInputStream.readFloat());
                }
                if (i == 16) {
                    return Boolean.valueOf(dataInputStream.readBoolean());
                }
                if (i != 32) {
                    if (i != 64) {
                        return null;
                    }
                    HashSet hashSet = new HashSet();
                    int readInt = dataInputStream.readInt();
                    for (int i2 = 0; i2 < readInt; i2++) {
                        hashSet.add(dataInputStream.readUTF());
                    }
                    return hashSet;
                }
                String readUTF = dataInputStream.readUTF();
                if (!"--several-chunks-of-the-string--".equals(readUTF)) {
                    return readUTF;
                }
                int readInt2 = dataInputStream.readInt();
                StringBuilder sb = new StringBuilder(32768 * readInt2);
                for (int i3 = 0; i3 < readInt2; i3++) {
                    sb.append(dataInputStream.readUTF());
                }
                return sb.toString();
            }
            return Integer.valueOf(dataInputStream.readInt());
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
            if (r3 != null) goto L16;
         */
        /* renamed from: Y */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.String m15634Y(p193e.p194a.p437c.p580r.AbstractC10518b.C10522d r3) {
            /*
                r0 = r3
                java.lang.String r0 = r0.f31340g
                r3 = r0
                r0 = r3
                if (r0 == 0) goto L33
                r0 = r3
                int r0 = r0.length()
                if (r0 <= 0) goto L15
                r0 = 1
                r4 = r0
                goto L17
            L15:
                r0 = 0
                r4 = r0
            L17:
                r0 = r4
                if (r0 == 0) goto L1e
                goto L20
            L1e:
                r0 = 0
                r3 = r0
            L20:
                r0 = r3
                if (r0 == 0) goto L33
                java.lang.String r0 = " • "
                r1 = r3
                java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8543z2(r0, r1)
                r3 = r0
                r0 = r3
                if (r0 == 0) goto L33
                goto L37
            L33:
                java.lang.String r0 = ""
                r3 = r0
            L37:
                r0 = r3
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15634Y(e.a.c.r.b$d):java.lang.String");
        }

        /* renamed from: Y0 */
        public static /* synthetic */ void m15633Y0(AbstractC13762c abstractC13762c, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = true;
            }
            abstractC13762c.mo21186u(z);
        }

        /* renamed from: Z */
        public static final String m15632Z(AbstractC10518b.C10522d c10522d) {
            String str;
            String str2 = c10522d.f31338e;
            if (str2 != null) {
                if (str2.length() > 0) {
                    str = c10522d.f31339f + " • " + c10522d.f31338e;
                    return str;
                }
            }
            str = c10522d.f31339f;
            return str;
        }

        /* renamed from: Z0 */
        public static final void m15631Z0(TextView textView, SpannableStringBuilder spannableStringBuilder) {
            Drawable mutate;
            String string = textView.getContext().getString(C3909R.string.flash_unicode);
            l.d(string, "context.getString(R.string.flash_unicode)");
            int H = v.H(spannableStringBuilder, string, 0, false, 6);
            if (H != -1) {
                Context context = textView.getContext();
                int i = C3909R.C3910drawable.ic_flash;
                Object obj = C26467a.f74235a;
                Drawable m1789b = C26467a.C26470c.m1789b(context, i);
                if (m1789b == null || (mutate = m1789b.mutate()) == null) {
                    return;
                }
                l.d(mutate, "ContextCompat.getDrawabl…lash)?.mutate() ?: return");
                int lineHeight = textView.getLineHeight();
                mutate.setBounds(0, 0, lineHeight, lineHeight);
                mutate.setColorFilter(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN);
                spannableStringBuilder.setSpan(new ImageSpan(mutate), H, H + 1, 33);
            }
        }

        /* renamed from: a */
        public static final void m15630a(C18798k c18798k, C18689r c18689r) {
            c18798k.f52817c.setTextColor(c18689r.f52539d);
            ConstraintLayout constraintLayout = c18798k.f52815a;
            l.d(constraintLayout, "root");
            Drawable background = constraintLayout.getBackground();
            Objects.requireNonNull(background, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable");
            Drawable findDrawableByLayerId = ((RippleDrawable) background).findDrawableByLayerId(C3771R.C3773id.rect_shape);
            Objects.requireNonNull(findDrawableByLayerId, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
            ((GradientDrawable) findDrawableByLayerId).setColor(c18689r.f52540e);
            c18798k.f52816b.setColorFilter(c18689r.f52541f, PorterDuff.Mode.MULTIPLY);
        }

        /* renamed from: a0 */
        public static final String m15629a0(Number number, AbstractC19223c0 abstractC19223c0) {
            String str;
            l.e(number, "$this$getNumberType");
            l.e(abstractC19223c0, "resourceProvider");
            j.d m35475i = number.m35475i();
            if (m35475i != null) {
                int ordinal = m35475i.ordinal();
                if (ordinal == 0) {
                    str = abstractC19223c0.mo13768b(C3795R.string.CallerIDLandlineNumberTitle, new Object[0]);
                    l.d(str, "resourceProvider.getStri…lerIDLandlineNumberTitle)");
                } else if (ordinal == 1) {
                    str = abstractC19223c0.mo13768b(C3795R.string.CallerIDCellphoneNumberTitle, new Object[0]);
                    l.d(str, "resourceProvider.getStri…erIDCellphoneNumberTitle)");
                }
                return str;
            }
            str = abstractC19223c0.mo13768b(C3795R.string.StrOther, new Object[0]);
            l.d(str, "resourceProvider.getString(R.string.StrOther)");
            return str;
        }

        /* renamed from: a1 */
        public static final h m15628a1(View view) {
            l.e(view, "$this$requireActivity");
            h context = view.getContext();
            h hVar = context;
            if (context instanceof h) {
                return context;
            }
            while (hVar instanceof ContextWrapper) {
                h baseContext = ((ContextWrapper) hVar).getBaseContext();
                hVar = baseContext;
                if (baseContext instanceof h) {
                    return baseContext;
                }
            }
            throw new IllegalStateException("Context does not come from an AppCompatActivity.");
        }

        /* renamed from: b */
        public static final AbstractC10153e.C10154a m15627b(C10152d c10152d, String str) {
            AbstractC10153e.C10154a m26652d = c10152d.m26652d(str);
            AbstractC10153e.C10154a c10154a = m26652d;
            if (m26652d == null) {
                c10152d.m26654b(str, new C10118i(null, null, null, null, null, null));
                c10154a = c10152d.m26652d(str);
                if (c10154a == null) {
                    throw new IllegalStateException("Newly inserted node cannot be null");
                }
            }
            return c10154a;
        }

        /* renamed from: b0 */
        public static final String m15626b0(Call call) {
            Uri handle;
            l.e(call, "$this$getPhoneNumber");
            Call.Details details = call.getDetails();
            return (details == null || (handle = details.getHandle()) == null) ? null : handle.getSchemeSpecificPart();
        }

        /* renamed from: b1 */
        public static final <T> Object m15625b1(s1.w.f fVar, s1.z.b.l<? super d<? super T>, ? extends Object> lVar, d<? super T> dVar) {
            return s1.a.a.a.v0.f.d.a4(fVar, new C18750p0(lVar, null), dVar);
        }

        /* renamed from: c */
        public static final CallState m15624c(C13794x c13794x) {
            int state = c13794x.f40005a.getState();
            return state != 1 ? state != 2 ? state != 3 ? state != 4 ? state != 8 ? state != 9 ? null : CallState.STATE_CONNECTING : CallState.STATE_SELECT_PHONE_ACCOUNT : CallState.STATE_ACTIVE : CallState.STATE_HOLDING : CallState.STATE_RINGING : CallState.STATE_DIALING;
        }

        /* renamed from: c0 */
        public static final String m15623c0(C13794x c13794x) {
            Uri handle;
            l.e(c13794x, "$this$getPhoneNumber");
            Call.Details details = c13794x.f40005a.getDetails();
            return (details == null || (handle = details.getHandle()) == null) ? null : handle.getSchemeSpecificPart();
        }

        /* renamed from: c1 */
        public static void m15622c1(DataOutputStream dataOutputStream, int i, Object obj) throws IOException {
            int i2;
            if (i == 2) {
                dataOutputStream.writeInt(((Integer) obj).intValue());
            } else if (i == 4) {
                dataOutputStream.writeLong(((Long) obj).longValue());
            } else if (i == 8) {
                dataOutputStream.writeFloat(((Float) obj).floatValue());
            } else if (i == 16) {
                dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            } else if (i == 32) {
                String str = (String) obj;
                int length = str.length();
                if (length / 65535 > 0) {
                    dataOutputStream.writeUTF("--several-chunks-of-the-string--");
                    dataOutputStream.writeInt((length / 32768) + 1);
                    ArrayList arrayList = new ArrayList();
                    int length2 = str.length();
                    int i3 = 0;
                    while (true) {
                        int i4 = i3;
                        if (length2 == 0) {
                            break;
                        }
                        if (length2 >= 32768) {
                            i2 = i4 + 32768;
                            length2 -= 32768;
                        } else {
                            i2 = str.length();
                            str.substring(i4, i2);
                            length2 = 0;
                        }
                        arrayList.add(str.substring(i4, i2));
                        i3 = i2;
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        dataOutputStream.writeUTF((String) it.next());
                    }
                } else {
                    dataOutputStream.writeUTF(str);
                }
            } else if (i == 64) {
                Set<String> set = (Set) obj;
                dataOutputStream.writeInt(set.size());
                for (String str2 : set) {
                    dataOutputStream.writeUTF(str2);
                }
            }
            dataOutputStream.flush();
        }

        /* renamed from: d */
        public static final void m15621d(SQLiteDatabase sQLiteDatabase, String str, List list, int i) {
            StringBuilder m8728C = C22128a.m8728C("\n            INSERT INTO msg_entities(\n                _id,\n                message_id,\n                type,\n                entity_type, \n                ");
            m8728C.append(i.O(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C0003a3.f4c, 31));
            m8728C.append("\n            )\n            SELECT \n                _id,\n                message_id,\n                type,\n                ");
            m8728C.append(i);
            m8728C.append(", \n                ");
            sQLiteDatabase.execSQL(C22128a.m8606k(m8728C, i.O(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C0003a3.f5d, 31), "\n            FROM msg_entities_temp\n            WHERE ", str, "\n        "));
        }

        /* renamed from: d0 */
        public static final C10647e m15620d0(AbstractC10567a abstractC10567a, Context context, AbstractC10412f abstractC10412f, SmartNotificationMetadata smartNotificationMetadata) {
            C10647e c10647e = null;
            if (abstractC10567a != null) {
                String mo25780b = abstractC10567a.mo25780b();
                PendingIntent mo26199a = abstractC10567a instanceof AbstractC10567a.C10574e ? abstractC10412f.mo26199a(context, smartNotificationMetadata, ((AbstractC10567a.C10574e) abstractC10567a).f31531d, C10480a.m25922n3(abstractC10567a.mo25780b(), null, 1)) : abstractC10567a instanceof AbstractC10567a.C10571b ? abstractC10412f.mo26191i(context, smartNotificationMetadata, ((AbstractC10567a.C10571b) abstractC10567a).f31521d, C10480a.m25922n3(abstractC10567a.mo25780b(), null, 1)) : null;
                c10647e = null;
                if (mo26199a != null) {
                    c10647e = new C10647e(mo25780b, mo26199a);
                }
            }
            return c10647e;
        }

        /* renamed from: d1 */
        public static final void m15619d1(EditText editText) {
            l.e(editText, "$this$setFlashInputFilter");
            editText.setFilters(new InputFilter[]{new C21613l(), new InputFilter.LengthFilter(80)});
        }

        /* renamed from: e */
        public static final void m15618e(Map map, Object obj, Object obj2) {
            if (map.put(obj, obj2) == null) {
                return;
            }
            throw new IllegalArgumentException(C22128a.m8547y2("Key ", obj, " is used multiple times"));
        }

        /* renamed from: e0 */
        public static final C10647e m15617e0(Context context, boolean z, boolean z2, AbstractC10412f abstractC10412f, SmartNotificationMetadata smartNotificationMetadata) {
            C10647e c10647e;
            if (z2) {
                c10647e = m15608h0(context, z, abstractC10412f, smartNotificationMetadata);
            } else {
                String string = context.getString(C4030R.string.WhatsThis);
                l.d(string, "context.getString(R.string.WhatsThis)");
                Locale locale = Locale.ENGLISH;
                c10647e = new C10647e(C22128a.m8586p(locale, "Locale.ENGLISH", string, locale, "(this as java.lang.String).toUpperCase(locale)"), abstractC10412f.mo26196d(context, z, smartNotificationMetadata));
            }
            return c10647e;
        }

        /* renamed from: e1 */
        public static final void m15616e1(GoogleMap googleMap, double d, double d2, boolean z) {
            l.e(googleMap, "$this$setupMap");
            try {
                googleMap.f6237a.clear();
                LatLng latLng = new LatLng(d, d2);
                MarkerOptions markerOptions = new MarkerOptions();
                markerOptions.a = latLng;
                int i = C3909R.C3910drawable.ic_flash_map_pin;
                try {
                    zze zzeVar = BitmapDescriptorFactory.f6248a;
                    Preconditions.m38897k(zzeVar, "IBitmapDescriptorFactory is not initialized");
                    markerOptions.d = new BitmapDescriptor(zzeVar.zza(i));
                    l.d(markerOptions, "MarkerOptions()\n        …awable.ic_flash_map_pin))");
                    try {
                        zzt m38695B = googleMap.f6237a.m38695B(markerOptions);
                        Marker marker = m38695B != null ? new Marker(m38695B) : null;
                        if (z) {
                            Objects.requireNonNull(marker);
                            try {
                                marker.f6253a.showInfoWindow();
                            } catch (RemoteException e) {
                                throw new RuntimeRemoteException(e);
                            }
                        }
                        try {
                            googleMap.f6237a.m38689n1(16.0f);
                            UiSettings m38708a = googleMap.m38708a();
                            l.d(m38708a, "uiSettings");
                            m38708a.m38699b(false);
                            try {
                                m38708a.f6244a.m38672l1(false);
                                m38708a.m38699b(false);
                                try {
                                    m38708a.f6244a.m38671q1(false);
                                    try {
                                        m38708a.f6244a.m38673f1(false);
                                        m38708a.m38700a(false);
                                        try {
                                            m38708a.f6244a.m38670s(false);
                                            try {
                                                googleMap.m38707b(new CameraUpdate(CameraUpdateFactory.m38709b().m38696X0(latLng)));
                                            } catch (RemoteException e2) {
                                                throw new RuntimeRemoteException(e2);
                                            }
                                        } catch (RemoteException e3) {
                                            throw new RuntimeRemoteException(e3);
                                        }
                                    } catch (RemoteException e4) {
                                        throw new RuntimeRemoteException(e4);
                                    }
                                } catch (RemoteException e5) {
                                    throw new RuntimeRemoteException(e5);
                                }
                            } catch (RemoteException e6) {
                                throw new RuntimeRemoteException(e6);
                            }
                        } catch (RemoteException e7) {
                            throw new RuntimeRemoteException(e7);
                        }
                    } catch (RemoteException e8) {
                        throw new RuntimeRemoteException(e8);
                    }
                } catch (RemoteException e9) {
                    throw new RuntimeRemoteException(e9);
                }
            } catch (RemoteException e10) {
                throw new RuntimeRemoteException(e10);
            }
        }

        /* renamed from: f */
        public static final CallContext m15615f(CallContextMessage callContextMessage) {
            CallContext.C2923b newBuilder = CallContext.newBuilder();
            String str = callContextMessage.f11496a;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setMessageId(str);
            MessageType messageType = callContextMessage.f11500e;
            if (messageType instanceof MessageType.Preset) {
                int i = ((MessageType.Preset) messageType).f11560b;
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setPredefinedMessage(i);
            } else if (messageType instanceof MessageType.Custom) {
                String str2 = callContextMessage.f11498c;
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setCustomMessage(str2);
            }
            CallContext build = newBuilder.build();
            l.d(build, "CallContext\n        .new…       }\n        .build()");
            return build;
        }

        /* renamed from: f0 */
        public static final String m15614f0(C8505a c8505a) {
            return r.p(c8505a.f26291b) ^ true ? c8505a.f26291b : c8505a.f26290a;
        }

        /* renamed from: f1 */
        public static final InsightsDomain.C4057a m15613f1(ExtendedPdo extendedPdo, boolean z) {
            l.e(extendedPdo, "$this$toBankDomainSchema");
            if (!l.a(extendedPdo.getD(), "Bank")) {
                StringBuilder m8728C = C22128a.m8728C("Cannot create BankDomain from [");
                m8728C.append(extendedPdo.getD());
                m8728C.append("] pdo");
                throw new IllegalArgumentException(m8728C.toString());
            }
            return new InsightsDomain.C4057a(extendedPdo.getK(), extendedPdo.getP(), extendedPdo.getC(), extendedPdo.getO(), extendedPdo.getF(), extendedPdo.getG(), extendedPdo.getS(), extendedPdo.getVal1(), extendedPdo.getVal2(), extendedPdo.getVal3(), extendedPdo.getVal4(), extendedPdo.getVal5(), C10480a.m26005W1(DateFormat.yyyy_MM_dd, extendedPdo.getDate()), extendedPdo.getDffVal1(), extendedPdo.getDffVal2(), extendedPdo.getDffVal3(), extendedPdo.getAddress(), C10480a.m26020S2(extendedPdo.getMsgDate()), extendedPdo.getConversationId(), extendedPdo.getSpamCategory(), extendedPdo.isIM(), null, extendedPdo.getMessageID(), null, z, extendedPdo.getMessage(), Constants.TEN_MB);
        }

        /* renamed from: g */
        public static final List m15612g(List list, PredefinedCallReasonType predefinedCallReasonType) {
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            int i = 0;
            for (Object obj : list) {
                if (i < 0) {
                    i.N0();
                    throw null;
                }
                PredefinedMessage predefinedMessage = (PredefinedMessage) obj;
                int id = predefinedMessage.getId();
                String message = predefinedMessage.getMessage();
                l.d(message, "predefinedMessage.message");
                arrayList.add(new C18787a(id, i, message, predefinedCallReasonType));
                i++;
            }
            return arrayList;
        }

        /* renamed from: g0 */
        public static final String m15611g0(Context context, C8505a c8505a, boolean z) {
            String str;
            if (z) {
                str = context.getString(C4030R.string.NotificationSenderTextMessage, m15614f0(c8505a));
                l.d(str, "context.getString(R.stri…etSender(addressProfile))");
            } else {
                str = context.getString(C4030R.string.NotificationSenderTextSMS, m15614f0(c8505a));
                l.d(str, "context.getString(R.stri…etSender(addressProfile))");
            }
            return str;
        }

        /* renamed from: g1 */
        public static InsightsDomain.C4057a m15610g1(ParsedDataObject parsedDataObject, boolean z, int i) {
            if ((i & 1) != 0) {
                z = false;
            }
            l.e(parsedDataObject, "$this$toBankDomainSchema");
            if (!l.a(parsedDataObject.getD(), "Bank")) {
                StringBuilder m8728C = C22128a.m8728C("Cannot create BankDomain from [");
                m8728C.append(parsedDataObject.getD());
                m8728C.append("] pdo");
                throw new IllegalArgumentException(m8728C.toString());
            }
            return new InsightsDomain.C4057a(parsedDataObject.getK(), parsedDataObject.getP(), parsedDataObject.getC(), parsedDataObject.getO(), parsedDataObject.getF(), parsedDataObject.getG(), parsedDataObject.getS(), parsedDataObject.getVal1(), parsedDataObject.getVal2(), parsedDataObject.getVal3(), parsedDataObject.getVal4(), parsedDataObject.getVal5(), C10480a.m26005W1(DateFormat.yyyy_MM_dd, parsedDataObject.getDate()), parsedDataObject.getDffVal1(), parsedDataObject.getDffVal2(), parsedDataObject.getDffVal3(), parsedDataObject.getAddress(), C10480a.m26020S2(parsedDataObject.getMsgDate()), 0L, parsedDataObject.getSpamCategory(), false, null, parsedDataObject.getMessageID(), null, z, null, 45350912);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final com.truecaller.api.services.callerid.p135v1.model.Phone m15609h(java.lang.String r4) {
            /*
                r0 = r4
                boolean r0 = s1.f0.r.p(r0)
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r5
                if (r0 == 0) goto Le
                goto L20
            Le:
                java.lang.String r0 = "[^\\d]"
                r1 = r4
                java.lang.String r2 = ""
                java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8733A2(r0, r1, r2)
                r4 = r0
                r0 = r4
                boolean r0 = s1.f0.r.p(r0)
                if (r0 == 0) goto L25
            L20:
                r0 = 0
                r4 = r0
                goto L2a
            L25:
                r0 = r4
                java.lang.Long r0 = s1.f0.q.j(r0)
                r4 = r0
            L2a:
                r0 = r4
                if (r0 == 0) goto L4e
                r0 = r4
                long r0 = r0.longValue()
                r7 = r0
                com.truecaller.api.services.callerid.v1.model.Phone$b r0 = com.truecaller.api.services.callerid.p135v1.model.Phone.newBuilder()
                r4 = r0
                r0 = r4
                r0.copyOnWrite()
                r0 = r4
                com.google.protobuf.GeneratedMessageLite r0 = r0.instance
                com.truecaller.api.services.callerid.v1.model.Phone r0 = (com.truecaller.api.services.callerid.p135v1.model.Phone) r0
                r1 = r7
                com.truecaller.api.services.callerid.p135v1.model.Phone.access$1000(r0, r1)
                r0 = r4
                com.google.protobuf.GeneratedMessageLite r0 = r0.build()
                com.truecaller.api.services.callerid.v1.model.Phone r0 = (com.truecaller.api.services.callerid.p135v1.model.Phone) r0
                r6 = r0
            L4e:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15609h(java.lang.String):com.truecaller.api.services.callerid.v1.model.Phone");
        }

        /* renamed from: h0 */
        public static final C10647e m15608h0(Context context, boolean z, AbstractC10412f abstractC10412f, SmartNotificationMetadata smartNotificationMetadata) {
            String string = context.getString(C4030R.string.ShowSMS);
            l.d(string, "context.getString(R.string.ShowSMS)");
            Locale locale = Locale.ENGLISH;
            l.d(locale, "Locale.ENGLISH");
            String upperCase = string.toUpperCase(locale);
            l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
            return new C10647e(upperCase, abstractC10412f.mo26195e(context, z, smartNotificationMetadata));
        }

        /* renamed from: h1 */
        public static final NotificationBannerMetaData m15607h1(NotificationBanner notificationBanner) {
            return notificationBanner.getDeeplink() != null ? new NotificationBannerMetaData(notificationBanner.getName(), notificationBanner.getCategory(), notificationBanner.getDeeplink()) : null;
        }

        /* renamed from: i */
        public static final Activity m15606i(Context context) {
            Activity activity;
            while (true) {
                l.e(context, "$this$activity");
                if (!(context instanceof Activity)) {
                    Context context2 = context;
                    if (!(context instanceof ContextWrapper)) {
                        context2 = null;
                    }
                    ContextWrapper contextWrapper = (ContextWrapper) context2;
                    activity = null;
                    if (contextWrapper == null) {
                        break;
                    }
                    Context baseContext = contextWrapper.getBaseContext();
                    activity = null;
                    if (baseContext == null) {
                        break;
                    }
                    context = baseContext;
                } else {
                    activity = (Activity) context;
                    break;
                }
            }
            return activity;
        }

        /* renamed from: i0 */
        public static final Integer m15605i0(Contact contact, Integer num) {
            Integer num2 = num;
            if (contact != null) {
                SpamData spamData = contact.f11529x;
                num2 = num;
                if (spamData != null) {
                    Integer spamVersion = spamData.getSpamVersion();
                    num2 = num;
                    if (spamVersion != null) {
                        num2 = spamVersion;
                    }
                }
            }
            return num2;
        }

        /* renamed from: i1 */
        public static final InsightsDomain.Bill m15604i1(ExtendedPdo extendedPdo, Map<Long, ActionStateEntity> map, boolean z) {
            String str;
            l.e(extendedPdo, "$this$toBillDomainSchema");
            l.e(map, "actions");
            if (!l.a(extendedPdo.getD(), "Bill")) {
                StringBuilder m8728C = C22128a.m8728C("Cannot create BillDomain from [");
                m8728C.append(extendedPdo.getD());
                m8728C.append("] pdo");
                throw new IllegalArgumentException(m8728C.toString());
            }
            String k = extendedPdo.getK();
            String c = extendedPdo.getC();
            String o = extendedPdo.getO();
            String f = extendedPdo.getF();
            String g = extendedPdo.getG();
            String s = extendedPdo.getS();
            String val1 = extendedPdo.getVal1();
            String val3 = extendedPdo.getVal3();
            String val4 = extendedPdo.getVal4();
            p m26005W1 = C10480a.m26005W1(DateFormat.yyyy_MM_dd, extendedPdo.getDate());
            b m26009V1 = C10480a.m26009V1(DateFormat.yyyy_MM_dd_HH_mm_ss, extendedPdo.getDatetime());
            String address = extendedPdo.getAddress();
            b bVar = new b(extendedPdo.getMsgDate().getTime());
            long messageID = extendedPdo.getMessageID();
            long conversationId = extendedPdo.getConversationId();
            ActionStateEntity actionStateEntity = map.get(Long.valueOf(extendedPdo.getMessageID()));
            if (actionStateEntity != null) {
                int state = actionStateEntity.getState();
                str = (state == 2 || state == 4) ? AnalyticsConstants.SUCCESS : "pending";
            } else {
                str = "pending";
            }
            ActionStateEntity actionStateEntity2 = map.get(Long.valueOf(extendedPdo.getMessageID()));
            return new InsightsDomain.Bill(k, c, o, f, g, s, val1, val3, val4, m26005W1, m26009V1, address, bVar, str, null, conversationId, extendedPdo.getSpamCategory(), extendedPdo.isIM(), extendedPdo.getDffVal5(), extendedPdo.getDffVal3(), extendedPdo.getDffVal1(), actionStateEntity2 != null ? C10480a.m26044M2(actionStateEntity2) : null, messageID, null, z, extendedPdo.getMessage(), 8404992, null);
        }

        /* renamed from: j */
        public static final void m15603j(EditText editText, s1.z.b.l<? super CharSequence, s> lVar) {
            l.e(editText, "$this$addOnTextChangedListener");
            l.e(lVar, "onTextChangedImpl");
            editText.addTextChangedListener(new C21619p(lVar));
        }

        /* renamed from: j0 */
        public static final String m15602j0(AbstractC10518b.C10520b c10520b, C8505a c8505a) {
            String str;
            String m8630e = r.p(c8505a.f26291b) ^ true ? C22128a.m8630e(new StringBuilder(), c8505a.f26291b, ' ') : "";
            String str2 = c10520b.f31321o;
            int hashCode = str2.hashCode();
            if (hashCode == -2077215262) {
                if (str2.equals("PrepaidExpiry")) {
                    if (!r.p(c10520b.f31311e)) {
                        StringBuilder m8696K = C22128a.m8696K(m8630e, "Plan expiring on ");
                        m8696K.append(c10520b.f31311e);
                        str = m8696K.toString();
                    } else {
                        str = C22128a.m8543z2(m8630e, "Plan expiring");
                    }
                }
                str = null;
            } else if (hashCode != -527098572) {
                if (hashCode == 1428640201 && str2.equals("CreditCard")) {
                    str = r.p(m8630e) ^ true ? C22128a.m8543z2(m8630e, "Bill") : "Credit Card Bill";
                }
                str = null;
            } else {
                if (str2.equals("PrepaidSuccess")) {
                    str = C22128a.m8543z2(m8630e, "Recharge successful");
                }
                str = null;
            }
            return str;
        }

        /* renamed from: j1 */
        public static /* synthetic */ InsightsDomain.Bill m15601j1(ExtendedPdo extendedPdo, Map map, boolean z, int i) {
            if ((i & 1) != 0) {
                map = t.a;
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return m15604i1(extendedPdo, map, z);
        }

        /* renamed from: k */
        public static final AbstractC7460m m15600k(AbstractC7460m abstractC7460m, AbstractC7460m abstractC7460m2) {
            l.e(abstractC7460m, "$this$and");
            l.e(abstractC7460m2, "other");
            return new C7453j(i.T(new AbstractC7460m[]{abstractC7460m, abstractC7460m2}));
        }

        /* renamed from: k0 */
        public static final String m15599k0(AbstractC10518b.C10524f c10524f) {
            String str;
            if (c10524f.f31361h != null) {
                StringBuilder m8728C = C22128a.m8728C(" • ");
                m8728C.append(c10524f.f31360g);
                m8728C.append(" - ");
                m8728C.append(c10524f.f31361h);
                str = m8728C.toString();
            } else {
                str = "";
            }
            return str;
        }

        /* renamed from: k1 */
        public static final CallContextMessage m15598k1(IncomingCallContext incomingCallContext) {
            l.e(incomingCallContext, "$this$toCallContextMessage");
            return new CallContextMessage(incomingCallContext.getId(), incomingCallContext.getNumber(), incomingCallContext.getMessage(), null, null, null, false, 88);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v12, types: [e.f.a.r.a] */
        /* renamed from: l */
        public static final <T extends AbstractC22585a<T>> T m15597l(T t, Uri uri) {
            l.e(t, "$this$applyCacheSignature");
            if (uri == null) {
                return t;
            }
            C21849a c21849a = C21849a.f60731b;
            l.e(uri, "target");
            String str = C21849a.f60730a.get(uri);
            C22610d c22610d = str != null ? new C22610d(str) : null;
            T t2 = t;
            if (c22610d != null) {
                t2 = t.mo8082z(c22610d);
                l.d(t2, "signature(signatureKey)");
            }
            return t2;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x009a  */
        /* renamed from: l0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.String m15596l0(p193e.p194a.p437c.p580r.AbstractC10518b.C10524f r5) {
            /*
                r0 = r5
                java.lang.String r0 = r0.f31357d
                int r0 = r0.length()
                r6 = r0
                r0 = 1
                r7 = r0
                r0 = r6
                if (r0 <= 0) goto L13
                r0 = 1
                r6 = r0
                goto L15
            L13:
                r0 = 0
                r6 = r0
            L15:
                r0 = r6
                if (r0 == 0) goto L57
                r0 = r5
                java.lang.String r0 = r0.f31358e
                int r0 = r0.length()
                if (r0 <= 0) goto L28
                r0 = 1
                r6 = r0
                goto L2a
            L28:
                r0 = 0
                r6 = r0
            L2a:
                r0 = r6
                if (r0 == 0) goto L57
                java.lang.String r0 = "• "
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
                r8 = r0
                r0 = r8
                r1 = r5
                java.lang.String r1 = r1.f31357d
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r5
                java.lang.String r1 = r1.f31358e
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r0 = r0.toString()
                r8 = r0
                goto L90
            L57:
                r0 = r5
                java.lang.String r0 = r0.f31373t
                r8 = r0
                r0 = r7
                r6 = r0
                r0 = r8
                if (r0 == 0) goto L70
                r0 = r8
                int r0 = r0.length()
                if (r0 != 0) goto L6e
                r0 = r7
                r6 = r0
                goto L70
            L6e:
                r0 = 0
                r6 = r0
            L70:
                r0 = r6
                if (r0 != 0) goto L8c
                java.lang.String r0 = "• "
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
                r8 = r0
                r0 = r8
                r1 = r5
                java.lang.String r1 = r1.f31373t
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r0 = r0.toString()
                r8 = r0
                goto L90
            L8c:
                java.lang.String r0 = ""
                r8 = r0
            L90:
                r0 = r8
                r9 = r0
                r0 = r5
                java.lang.String r0 = r0.f31361h
                if (r0 == 0) goto Lc3
                java.lang.String r0 = "•  "
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
                r9 = r0
                r0 = r9
                r1 = r5
                java.lang.String r1 = r1.f31360g
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = " - "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r5
                java.lang.String r1 = r1.f31361h
                r2 = 32
                r3 = r8
                java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8622g(r0, r1, r2, r3)
                r9 = r0
            Lc3:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15596l0(e.a.c.r.b$f):java.lang.String");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: l1 */
        public static final C10643a m15595l1(AbstractC10518b.C10519a c10519a, Context context, boolean z, boolean z2, boolean z3, C8505a c8505a, AbstractC10412f abstractC10412f, C10401a c10401a) {
            String str;
            l.e(c10519a, "$this$toCustomSmartNotifWithActions");
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(c8505a, "addressProfile");
            l.e(abstractC10412f, "smartNotificationsHelper");
            l.e(c10401a, "notificationBannerHelper");
            l.e(c10519a, "$this$toCustomSmartNotif");
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(c8505a, "addressProfile");
            l.e(c10401a, "notificationBannerHelper");
            String str2 = c10519a.f31293b;
            if (!r.p(c10519a.f31303l)) {
                StringBuilder m8728C = C22128a.m8728C(" • ");
                m8728C.append(c10519a.f31303l);
                str = m8728C.toString();
            } else {
                str = "";
            }
            int i = c10519a.f31301j;
            String str3 = c10519a.f31299h + c10519a.f31300i;
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str3, "span");
            int i2 = C4030R.attr.tcx_textPrimary;
            if (i != i2) {
                SpannableString spannableString = new SpannableString(str3);
                spannableString.setSpan(new ForegroundColorSpan(C17422k.m16105M(context, i)), 0, str3.length(), 33);
                str3 = spannableString;
            }
            StringBuilder m8728C2 = C22128a.m8728C("•  ");
            m8728C2.append(m15614f0(c8505a));
            m8728C2.append("  •  ");
            m8728C2.append(c10519a.f31293b);
            String sb = m8728C2.toString();
            C10612m c10612m = new C10612m(c10519a.f31294c, 0, 0, 6);
            String str4 = c10519a.f31299h + c10519a.f31300i;
            int i3 = c10519a.f31301j;
            C10644b c10644b = new C10644b(str2, str, str3, sb, c10612m, str4, i3 != i2 ? Integer.valueOf(i3) : null, null, m15611g0(context, c8505a, z2), new SmartNotificationMetadata("Bank", c10519a.f31292a, c10519a.f31306o, false, z2, 8, null), null, c10401a.m26223a("Bank"), null, 5248);
            C10647e m15650Q = m15650Q(context, z, abstractC10412f, c10644b.f31714j);
            C10647e m15617e0 = m15617e0(context, z, z3, abstractC10412f, c10644b.f31714j);
            C10647e m15608h0 = m15608h0(context, z, abstractC10412f, c10644b.f31714j);
            C10647e m15646S = m15646S(context, abstractC10412f, c10644b.f31714j);
            NotificationBanner notificationBanner = c10644b.f31716l;
            PendingIntent pendingIntent = null;
            if (notificationBanner != null) {
                NotificationBannerMetaData m15607h1 = m15607h1(notificationBanner);
                pendingIntent = null;
                if (m15607h1 != null) {
                    pendingIntent = abstractC10412f.mo26197c(context, m15607h1);
                }
            }
            return new C10643a(c10644b, new C10645c(m15650Q, m15617e0, m15608h0, m15646S, pendingIntent));
        }

        /* renamed from: m */
        public static final C22234h<Bitmap> m15594m(ComponentCallbacks2C22236i componentCallbacks2C22236i, C21869a c21869a, Context context) {
            Object obj;
            l.e(componentCallbacks2C22236i, "$this$buildGlideRequest");
            l.e(c21869a, "imageRequest");
            l.e(context, AnalyticsConstants.CONTEXT);
            C21852d<Bitmap> mo8415f = ((C21853e) componentCallbacks2C22236i).mo8415f();
            mo8415f.mo8423S(c21869a.f60759c);
            l.d(mo8415f, "asBitmap()\n        .load(imageRequest.uri)");
            l.e(mo8415f, "$this$applyBitmapOptions");
            l.e(c21869a, "imageRequest");
            l.e(context, AnalyticsConstants.CONTEXT);
            C22591h c22591h = new C22591h();
            if (c21869a.f60758b != -1 || c21869a.f60757a) {
                ArrayList arrayList = new ArrayList();
                if (c21869a.f60758b != -1) {
                    arrayList.add(new C21867a(c21869a.f60758b));
                }
                if (c21869a.f60757a) {
                    arrayList.add(new k());
                }
                Object[] array = arrayList.toArray(new AbstractC22271m[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                AbstractC22271m[] abstractC22271mArr = (AbstractC22271m[]) array;
                c22591h.mo8108F((AbstractC22271m[]) Arrays.copyOf(abstractC22271mArr, abstractC22271mArr.length));
            }
            m15597l(c22591h, c21869a.f60759c);
            C22234h<Bitmap> mo8106a = mo8415f.mo8106a(c22591h);
            AbstractC21877g abstractC21877g = c21869a.f60760d;
            l.e(mo8106a, "$this$override");
            l.e(abstractC21877g, "size");
            l.e(context, AnalyticsConstants.CONTEXT);
            if (abstractC21877g instanceof C21876f) {
                obj = mo8106a.mo8088t(Integer.MIN_VALUE, Integer.MIN_VALUE);
                l.d(obj, "override(Target.SIZE_ORI…AL, Target.SIZE_ORIGINAL)");
            } else if (abstractC21877g instanceof AbstractC21873e) {
                AbstractC21873e abstractC21873e = (AbstractC21873e) abstractC21877g;
                obj = mo8106a.mo8088t(C19291g.m13645A(context, abstractC21873e.f60763a), C19291g.m13645A(context, abstractC21873e.f60764b));
                l.d(obj, "override(context.dpToPx(…context.dpToPx(heightDp))");
            } else if (abstractC21877g instanceof C21872d) {
                C21872d c21872d = (C21872d) abstractC21877g;
                obj = mo8106a.mo8088t(c21872d.f60761a, c21872d.f60762b);
                l.d(obj, "override(size.widthPx, size.heightPx)");
            } else if (!(abstractC21877g instanceof C21871c)) {
                throw new s1.i();
            } else {
                C21871c c21871c = (C21871c) abstractC21877g;
                obj = mo8106a.mo8088t(C19291g.m13645A(context, 0), C19291g.m13645A(context, 0));
                l.d(obj, "override(context.dpToPx(…xt.dpToPx(size.heightDp))");
            }
            l.d(obj, "apply(imageRequest.asReq…ageRequest.size, context)");
            return (C22234h) obj;
        }

        /* renamed from: m0 */
        public static final String m15593m0(Number number, AbstractC19223c0 abstractC19223c0, AbstractC16458h abstractC16458h) {
            String str;
            l.e(number, "$this$getTypeStringForNumber");
            l.e(abstractC19223c0, "resourceProvider");
            l.e(abstractC16458h, "numberTypeLabelProvider");
            int h = a.h(((ContactDto.Contact.PhoneNumber) number.mRow).telType, ContactDto.Contact.PhoneNumber.EMPTY_TEL_TYPE);
            if (h == 0) {
                str = number.m35469p();
                if (str == null) {
                    str = "";
                }
            } else {
                int i = ContactDto.Contact.PhoneNumber.EMPTY_TEL_TYPE;
                if (h == i) {
                    str = m15629a0(number, abstractC19223c0);
                } else if (h == 1) {
                    str = abstractC19223c0.mo13768b(C3795R.string.CallerIDHomeNumberTitle, new Object[0]);
                    l.d(str, "resourceProvider.getStri….CallerIDHomeNumberTitle)");
                } else if (h == 2) {
                    str = abstractC19223c0.mo13768b(C3795R.string.CallerIDCellphoneNumberTitle, new Object[0]);
                    l.d(str, "resourceProvider.getStri…erIDCellphoneNumberTitle)");
                } else if (h == 3) {
                    str = abstractC19223c0.mo13768b(C3795R.string.CallerIDWorkNumberTitle, new Object[0]);
                    l.d(str, "resourceProvider.getStri….CallerIDWorkNumberTitle)");
                } else {
                    str = abstractC19223c0.mo13768b(abstractC16458h.mo17376a(a.h(((ContactDto.Contact.PhoneNumber) number.mRow).telType, i)), new Object[0]);
                    l.d(str, "resourceProvider.getStri…umberType(telTypeCompat))");
                }
            }
            return str;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x00c8, code lost:
            if (r35 != null) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x02a3, code lost:
            r0 = r22.getString(com.truecaller.insights.C4030R.string.PayBill);
            s1.z.c.l.d(r0, "context.getString(R.string.PayBill)");
            r0 = java.util.Locale.ENGLISH;
            r21 = p193e.p1432d.p1439c.p1440a.C22128a.m8586p(r0, "Locale.ENGLISH", r0, r0, "(this as java.lang.String).toUpperCase(locale)");
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x015f  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x017b  */
        /* renamed from: m1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final p193e.p194a.p437c.p580r.p590k.C10643a m15592m1(p193e.p194a.p437c.p580r.AbstractC10518b.C10520b r21, android.content.Context r22, java.lang.String r23, boolean r24, boolean r25, boolean r26, p193e.p194a.p372b0.p419m.p420a.C8505a r27, p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f r28, p193e.p194a.p437c.p552i.p565l.p566e.C10401a r29, p193e.p194a.p437c.p524b.AbstractC9691j r30, p193e.p194a.p437c.p570j.AbstractC10442e<? extends p193e.p194a.p437c.p570j.AbstractC10443f> r31) {
            /*
                Method dump skipped, instructions count: 895
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15592m1(e.a.c.r.b$b, android.content.Context, java.lang.String, boolean, boolean, boolean, e.a.b0.m.a.a, e.a.c.i.l.f.f, e.a.c.i.l.e.a, e.a.c.b.j, e.a.c.j.e):e.a.c.r.k.a");
        }

        /* renamed from: n0 */
        public static /* synthetic */ void m15590n0(AbstractC13762c abstractC13762c, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = true;
            }
            abstractC13762c.mo21229A(z);
        }

        /* renamed from: n1 */
        public static final C10643a m15589n1(AbstractC10518b.C10521c c10521c, Context context, boolean z, boolean z2, boolean z3, C8505a c8505a, AbstractC10412f abstractC10412f, C10401a c10401a) {
            String str;
            String str2;
            l.e(c10521c, "$this$toCustomSmartNotifWithActions");
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(c8505a, "addressProfile");
            l.e(abstractC10412f, "smartNotificationsHelper");
            l.e(c10401a, "notificationBannerHelper");
            l.e(c10521c, "$this$toCustomSmartNotif");
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(c8505a, "addressProfile");
            l.e(c10401a, "notificationBannerHelper");
            String str3 = c10521c.f31325b;
            if (str3 == null) {
                str3 = "Delivery update";
            }
            l.e(c10521c, "deliveryUiModel");
            l.e(c8505a, "addressProfile");
            String m8630e = r.p(c8505a.f26291b) ^ true ? C22128a.m8630e(new StringBuilder(), c8505a.f26291b, ' ') : "";
            if (r.p(m8630e)) {
                m8630e = null;
            }
            if (m8630e != null) {
                StringBuilder m8696K = C22128a.m8696K(m8630e, " • ");
                m8696K.append(m15654O(c10521c));
                str = m8696K.toString();
            } else {
                str = null;
            }
            if (str == null) {
                str = m15654O(c10521c);
            }
            C10612m c10612m = c10521c.f31331h;
            if (c10612m == null) {
                c10612m = new C10612m(C4030R.C4031drawable.ic_tcx_delivery, 0, 0, 6);
            }
            String m15611g0 = m15611g0(context, c8505a, z2);
            DeliverySchemaRuleHelper deliverySchemaRuleHelper = DeliverySchemaRuleHelper.f12478d;
            String m35286a = DeliverySchemaRuleHelper.m35286a(c10521c.f31324a);
            if (m35286a != null) {
                String m8543z2 = C22128a.m8543z2("Delivery_", m35286a);
                Locale locale = Locale.getDefault();
                l.d(locale, "Locale.getDefault()");
                Objects.requireNonNull(m8543z2, "null cannot be cast to non-null type java.lang.String");
                str2 = m8543z2.toLowerCase(locale);
                l.d(str2, "(this as java.lang.String).toLowerCase(locale)");
            } else {
                str2 = "Delivery";
            }
            C10644b c10644b = new C10644b(str3, "", str, "", c10612m, "", null, m15648R(c10521c), m15611g0, new SmartNotificationMetadata(str2, c10521c.f31330g, c10521c.f31332i, false, z2, 8, null), null, c10401a.m26223a("Delivery"), c10521c.f31325b != null ? "Delivery update" : "", 1024);
            AbstractC10567a abstractC10567a = c10521c.f31333j;
            C10647e m15620d0 = abstractC10567a != null ? m15620d0(abstractC10567a, context, abstractC10412f, c10644b.f31714j) : m15650Q(context, z, abstractC10412f, c10644b.f31714j);
            C10647e m15617e0 = m15617e0(context, z, z3, abstractC10412f, c10644b.f31714j);
            C10647e m15608h0 = m15608h0(context, z, abstractC10412f, c10644b.f31714j);
            C10647e m15646S = m15646S(context, abstractC10412f, c10644b.f31714j);
            NotificationBanner notificationBanner = c10644b.f31716l;
            PendingIntent pendingIntent = null;
            if (notificationBanner != null) {
                NotificationBannerMetaData m15607h1 = m15607h1(notificationBanner);
                pendingIntent = null;
                if (m15607h1 != null) {
                    pendingIntent = abstractC10412f.mo26197c(context, m15607h1);
                }
            }
            return new C10643a(c10644b, new C10645c(m15620d0, m15617e0, m15608h0, m15646S, pendingIntent));
        }

        /* renamed from: o */
        public static boolean m15588o(int i, int i2) {
            return (i & i2) == i2;
        }

        /* renamed from: o0 */
        public static final void m15587o0(SQLiteException sQLiteException) {
            l.e(sQLiteException, "$this$ignoreOrThrow");
            if (!(sQLiteException instanceof SQLiteDatabaseCorruptException) && !(sQLiteException instanceof SQLiteDiskIOException) && !(sQLiteException instanceof SQLiteFullException) && !(sQLiteException instanceof SQLiteCantOpenDatabaseException)) {
                throw sQLiteException;
            }
        }

        /* renamed from: o1 */
        public static final C10643a m15586o1(AbstractC10518b.C10522d c10522d, Context context, boolean z, boolean z2, boolean z3, C8505a c8505a, AbstractC10412f abstractC10412f, C10401a c10401a) {
            C10612m c10612m;
            NotificationBannerMetaData m15607h1;
            l.e(c10522d, "$this$toCustomSmartNotifWithActions");
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(c8505a, "addressProfile");
            l.e(abstractC10412f, "smartNotificationsHelper");
            l.e(c10401a, "notificationBannerHelper");
            l.e(c10522d, "$this$toCustomSmartNotif");
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(c8505a, "addressProfile");
            l.e(c10401a, "notificationBannerHelper");
            String m15632Z = m15632Z(c10522d);
            String m15634Y = m15634Y(c10522d);
            String m15632Z2 = m15632Z(c10522d);
            String m15634Y2 = m15634Y(c10522d);
            String str = c10522d.f31337d;
            int hashCode = str.hashCode();
            if (hashCode != 476588369) {
                if (hashCode == 1304593106 && str.equals("dose_due")) {
                    c10612m = new C10612m(C4030R.C4031drawable.ic_calendar_due, 0, 0, 6);
                }
                c10612m = new C10612m(C4030R.C4031drawable.ic_calendar_success, 0, 0, 6);
            } else {
                if (str.equals("cancelled")) {
                    int i = C4030R.C4031drawable.ic_calendar_cancel;
                    C10095c c10095c = C10095c.f30012d;
                    s1.k<Integer, Integer> kVar = C10095c.f30009a;
                    c10612m = new C10612m(i, ((Number) kVar.a).intValue(), ((Number) kVar.b).intValue());
                }
                c10612m = new C10612m(C4030R.C4031drawable.ic_calendar_success, 0, 0, 6);
            }
            String m15611g0 = m15611g0(context, c8505a, z2);
            C10644b c10644b = new C10644b(m15632Z, m15634Y, m15632Z2, m15634Y2, c10612m, "", null, null, m15611g0, new SmartNotificationMetadata(c10522d.f31336c + '_' + c10522d.f31337d, c10522d.f31335b, c10522d.f31347n, false, z2, 8, null), null, c10401a.m26223a("Event"), null, 5120);
            AbstractC10567a abstractC10567a = c10522d.f31348o;
            C10647e m15620d0 = abstractC10567a != null ? m15620d0(abstractC10567a, context, abstractC10412f, c10644b.f31714j) : m15650Q(context, z, abstractC10412f, c10644b.f31714j);
            C10647e m15617e0 = m15617e0(context, z, z3, abstractC10412f, c10644b.f31714j);
            C10647e m15608h0 = m15608h0(context, z, abstractC10412f, c10644b.f31714j);
            C10647e m15646S = m15646S(context, abstractC10412f, c10644b.f31714j);
            NotificationBanner notificationBanner = c10644b.f31716l;
            return new C10643a(c10644b, new C10645c(m15620d0, m15617e0, m15608h0, m15646S, (notificationBanner == null || (m15607h1 = m15607h1(notificationBanner)) == null) ? null : abstractC10412f.mo26197c(context, m15607h1)));
        }

        /* renamed from: p */
        public static final C10533c m15585p(e.q.a.d.c cVar) {
            l.e(cVar, "$this$convertToInsightsAccountModel");
            if (cVar instanceof C10533c) {
                return (C10533c) cVar;
            }
            String e = cVar.e();
            l.d(e, "this.address");
            String d = cVar.d();
            l.d(d, "this.accountType");
            String c = cVar.c();
            l.d(c, "this.accountNumber");
            C10533c c10533c = new C10533c(e, d, c);
            Date mo4126a = cVar.mo4126a();
            l.d(mo4126a, "this.createdAt");
            c10533c.m25798t(mo4126a);
            c10533c.f31441j = cVar.m();
            c10533c.f31438g = cVar.l();
            c10533c.f31442k = cVar.h();
            c10533c.f31439h = cVar.i();
            c10533c.f31440i = cVar.j();
            c10533c.f31437f = cVar.f();
            return c10533c;
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [double] */
        /* renamed from: p0 */
        public static final double m15584p0(Double d, double d2) {
            char c;
            if (d == null) {
                c = 0;
            } else {
                d.doubleValue();
                c = d.doubleValue() + d2;
            }
            return c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x014f, code lost:
            if (r21.f31373t == null) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0152, code lost:
            r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8558w('(');
            r0.append(r21.f31373t);
            r0.append(")  ");
            r0.append(r21.f31354a);
            r29 = r0.toString();
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0180, code lost:
            r29 = r21.f31354a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0186, code lost:
            r0 = m15599k0(r21);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0190, code lost:
            if (r21.f31373t == null) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0193, code lost:
            r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8558w('(');
            r0.append(r21.f31373t);
            r0.append(")  ");
            r0.append(r21.f31354a);
            r33 = r0.toString();
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x01c1, code lost:
            r33 = r21.f31354a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x01c7, code lost:
            r21 = new p193e.p194a.p437c.p580r.p590k.C10644b(r29, r0, r33, m15596l0(r21), new p193e.p194a.p437c.p580r.p589j.C10612m(r21.f31375v, 0, 0, 6), r21.f31357d, null, new p193e.p194a.p437c.p580r.p589j.C10587c0(r21.f31358e, null, null, 6), m15611g0(r22, r26, r24), new com.truecaller.insights.models.smartnotifications.SmartNotificationMetadata(m15696A(r21.f31378y, null, 1), r21.f31372s, r21.f31374u, false, r24, 8, null), m15678G(r21, true), r28.m26223a("Travel"), null, 4096);
         */
        /* JADX WARN: Removed duplicated region for block: B:51:0x043c  */
        /* renamed from: p1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final p193e.p194a.p437c.p580r.p590k.C10643a m15583p1(p193e.p194a.p437c.p580r.AbstractC10518b.C10524f r21, android.content.Context r22, boolean r23, boolean r24, boolean r25, p193e.p194a.p372b0.p419m.p420a.C8505a r26, p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10412f r27, p193e.p194a.p437c.p552i.p565l.p566e.C10401a r28) {
            /*
                Method dump skipped, instructions count: 1163
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15583p1(e.a.c.r.b$f, android.content.Context, boolean, boolean, boolean, e.a.b0.m.a.a, e.a.c.i.l.f.f, e.a.c.i.l.e.a):e.a.c.r.k.a");
        }

        /* renamed from: q */
        public static /* synthetic */ Object m15582q(AbstractC18756v abstractC18756v, String str, String str2, String str3, boolean z, FeatureType featureType, d dVar, int i, Object obj) {
            if ((i & 8) != 0) {
                z = false;
            }
            if ((i & 16) != 0) {
                featureType = FeatureType.UNDEFINED;
            }
            return abstractC18756v.mo14545b(str, str2, str3, z, featureType, dVar);
        }

        /* renamed from: q0 */
        public static final double m15581q0(Double d, Double d2) {
            Double d3;
            if (d == null) {
                d3 = null;
            } else {
                d3 = Double.valueOf(d2.doubleValue() * d.doubleValue());
            }
            if (d3 != null) {
                return d3.doubleValue();
            }
            throw new IllegalStateException("Cannot multiply null value");
        }

        /* renamed from: q1 */
        public static final InsightsDomain.C4058b m15580q1(ExtendedPdo extendedPdo, Map<Long, ActionStateEntity> map, boolean z) {
            Map map2;
            Map map3;
            Map map4;
            l.e(extendedPdo, "$this$toDeliveryDomainSchema");
            l.e(map, "actions");
            if (!l.a(extendedPdo.getD(), "Delivery")) {
                StringBuilder m8728C = C22128a.m8728C("Cannot create Delivery from [");
                m8728C.append(extendedPdo.getD());
                m8728C.append("] pdo");
                throw new IllegalArgumentException(m8728C.toString());
            }
            OrderStatus.C4038b c4038b = OrderStatus.Companion;
            String k = extendedPdo.getK();
            Objects.requireNonNull(c4038b);
            l.e(k, "type");
            map2 = OrderStatus.map;
            OrderStatus orderStatus = (OrderStatus) map2.get(k);
            DeliverySchemaRuleHelper.OrderSubStatus.C4035a c4035a = DeliverySchemaRuleHelper.OrderSubStatus.Companion;
            String p = extendedPdo.getP();
            Objects.requireNonNull(c4035a);
            l.e(p, "type");
            map3 = DeliverySchemaRuleHelper.OrderSubStatus.map;
            DeliverySchemaRuleHelper.OrderSubStatus orderSubStatus = (DeliverySchemaRuleHelper.OrderSubStatus) map3.get(p);
            String o = extendedPdo.getO();
            String f = extendedPdo.getF();
            String s = extendedPdo.getS();
            String val3 = extendedPdo.getVal3();
            String dffVal4 = extendedPdo.getDffVal4();
            String dffVal5 = extendedPdo.getDffVal5();
            String val1 = extendedPdo.getVal1();
            String val2 = extendedPdo.getVal2();
            DeliverySchemaRuleHelper.UrlTypes.C4036a c4036a = DeliverySchemaRuleHelper.UrlTypes.Companion;
            String c = extendedPdo.getC();
            Objects.requireNonNull(c4036a);
            l.e(c, "type");
            map4 = DeliverySchemaRuleHelper.UrlTypes.map;
            DeliverySchemaRuleHelper.UrlTypes urlTypes = (DeliverySchemaRuleHelper.UrlTypes) map4.get(c);
            ActionStateEntity actionStateEntity = map.get(Long.valueOf(extendedPdo.getMessageID()));
            C10582b m26044M2 = actionStateEntity != null ? C10480a.m26044M2(actionStateEntity) : null;
            return new InsightsDomain.C4058b(orderStatus, orderSubStatus, o, f, s, val3, dffVal4, urlTypes, dffVal5, C10480a.m26009V1(DateFormat.yyyy_MM_dd_HH_mm_ss, extendedPdo.getDatetime()), val1, val2, extendedPdo.getMessageID(), extendedPdo.getAddress(), C10480a.m26020S2(extendedPdo.getMsgDate()), extendedPdo.getConversationId(), extendedPdo.isIM(), m26044M2, DomainOrigin.SMS, z, extendedPdo.getMessage());
        }

        /* renamed from: r */
        public static /* synthetic */ CallContextMessage m15579r(AbstractC18700b abstractC18700b, String str, String str2, String str3, FeatureType featureType, MessageType messageType, String str4, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 8) != 0) {
                featureType = FeatureType.UNDEFINED;
            }
            if ((i & 16) != 0) {
                messageType = MessageType.Undefined.f11561b;
            }
            if ((i & 32) != 0) {
                str4 = null;
            }
            return abstractC18700b.mo14620b(str, str2, str3, featureType, messageType, str4);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x007e  */
        /* renamed from: r0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.Object m15578r0(s1.z.b.l<? super s1.w.d<? super s1.s>, ? extends java.lang.Object> r4, java.lang.String r5, p193e.p194a.p1129p5.AbstractC19247m0 r6, s1.w.d<? super s1.s> r7) {
            /*
                r0 = r7
                boolean r0 = r0 instanceof p193e.p194a.p292a4.C7434d
                if (r0 == 0) goto L2e
                r0 = r7
                e.a.a4.d r0 = (p193e.p194a.p292a4.C7434d) r0
                r8 = r0
                r0 = r8
                int r0 = r0.f23607e
                r9 = r0
                r0 = r9
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L2e
                r0 = r8
                r1 = r9
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f23607e = r1
                r0 = r8
                r7 = r0
                goto L37
            L2e:
                e.a.a4.d r0 = new e.a.a4.d
                r1 = r0
                r2 = r7
                r1.<init>(r2)
                r7 = r0
            L37:
                r0 = r7
                java.lang.Object r0 = r0.f23606d
                r8 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r10 = r0
                r0 = r7
                int r0 = r0.f23607e
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L7e
                r0 = r9
                r1 = 1
                if (r0 != r1) goto L73
                r0 = r7
                java.lang.Object r0 = r0.f23610h
                e.a.p5.l0 r0 = (p193e.p194a.p1129p5.AbstractC19244l0) r0
                r4 = r0
                r0 = r7
                java.lang.Object r0 = r0.f23609g
                e.a.p5.l0 r0 = (p193e.p194a.p1129p5.AbstractC19244l0) r0
                r5 = r0
                r0 = r7
                java.lang.Object r0 = r0.f23608f
                java.lang.String r0 = (java.lang.String) r0
                r5 = r0
                r0 = r8
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto Lb0
            L73:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L7e:
                r0 = r8
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r6
                r1 = r5
                e.a.p5.l0 r0 = r0.mo13749a(r1)
                r6 = r0
                r0 = r7
                r1 = r5
                r0.f23608f = r1
                r0 = r7
                r1 = r6
                r0.f23609g = r1
                r0 = r7
                r1 = r6
                r0.f23610h = r1
                r0 = r7
                r1 = 1
                r0.f23607e = r1
                r0 = r4
                r1 = r7
                java.lang.Object r0 = r0.d(r1)
                r1 = r10
                if (r0 != r1) goto Lae
                r0 = r10
                return r0
            Lae:
                r0 = r6
                r4 = r0
            Lb0:
                r0 = r4
                r0.stop()
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15578r0(s1.z.b.l, java.lang.String, e.a.p5.m0, s1.w.d):java.lang.Object");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: r1 */
        public static final InsightsDomain m15577r1(ExtendedPdo extendedPdo, Map<Long, ActionStateEntity> map, boolean z) {
            InsightsDomain.C4058b c4058b;
            l.e(extendedPdo, "$this$toDomainSchema");
            l.e(map, "actions");
            String d = extendedPdo.getD();
            switch (d.hashCode()) {
                case -1781830854:
                    if (d.equals("Travel")) {
                        c4058b = m15685D1(extendedPdo, map, z);
                        break;
                    }
                    c4058b = null;
                    break;
                case 78603:
                    if (d.equals("OTP")) {
                        c4058b = m15553z1(extendedPdo);
                        break;
                    }
                    c4058b = null;
                    break;
                case 2062940:
                    if (d.equals("Bank")) {
                        c4058b = m15613f1(extendedPdo, z);
                        break;
                    }
                    c4058b = null;
                    break;
                case 2070567:
                    if (d.equals("Bill")) {
                        c4058b = m15604i1(extendedPdo, map, z);
                        break;
                    }
                    c4058b = null;
                    break;
                case 67338874:
                    if (d.equals("Event")) {
                        c4058b = m15571t1(extendedPdo, z);
                        break;
                    }
                    c4058b = null;
                    break;
                case 75456272:
                    if (d.equals("Notif")) {
                        c4058b = m15556y1(extendedPdo, z);
                        break;
                    }
                    c4058b = null;
                    break;
                case 888111124:
                    if (d.equals("Delivery")) {
                        c4058b = m15580q1(extendedPdo, map, z);
                        break;
                    }
                    c4058b = null;
                    break;
                default:
                    c4058b = null;
                    break;
            }
            return c4058b;
        }

        /* renamed from: s */
        public static final double m15576s(Double d, Double d2) {
            Double valueOf = Double.valueOf(d.doubleValue() / d2.doubleValue());
            if (valueOf != null) {
                return valueOf.doubleValue();
            }
            throw new IllegalStateException("Cannot divide null value");
        }

        /* renamed from: s0 */
        public static final void m15575s0(s1.z.b.a<s> aVar, String str, AbstractC19247m0 abstractC19247m0) {
            l.e(aVar, "$this$invoke");
            l.e(str, AnalyticsConstants.NAME);
            l.e(abstractC19247m0, "traceUtil");
            AbstractC19244l0 mo13749a = abstractC19247m0.mo13749a(str);
            aVar.invoke();
            mo13749a.stop();
        }

        /* renamed from: s1 */
        public static /* synthetic */ InsightsDomain m15574s1(ExtendedPdo extendedPdo, Map map, boolean z, int i) {
            Map map2 = (i & 1) != 0 ? t.a : null;
            if ((i & 2) != 0) {
                z = false;
            }
            return m15577r1(extendedPdo, map2, z);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0074  */
        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* renamed from: t */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final <T> java.lang.Object m15573t(s1.z.b.l<? super s1.w.d<? super T>, ? extends java.lang.Object> r10, s1.w.d<? super s1.k<? extends T, java.lang.Long>> r11) {
            /*
                Method dump skipped, instructions count: 204
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15573t(s1.z.b.l, s1.w.d):java.lang.Object");
        }

        /* renamed from: t0 */
        public static final boolean m15572t0(InsightsFilterType insightsFilterType) {
            l.e(insightsFilterType, "$this$isBlackListed");
            return !m15689C0(insightsFilterType);
        }

        /* renamed from: t1 */
        public static final InsightsDomain.C4059c m15571t1(ExtendedPdo extendedPdo, boolean z) {
            l.e(extendedPdo, "$this$toEventDomainSchema");
            if (!l.a(extendedPdo.getD(), "Event")) {
                StringBuilder m8728C = C22128a.m8728C("Cannot create Event from [");
                m8728C.append(extendedPdo.getD());
                m8728C.append("] pdo");
                throw new IllegalArgumentException(m8728C.toString());
            }
            return new InsightsDomain.C4059c(extendedPdo.getK(), extendedPdo.getP(), extendedPdo.getC(), extendedPdo.getO(), extendedPdo.getG(), extendedPdo.getS(), C10480a.m26009V1(DateFormat.yyyy_MM_dd_HH_mm_ss, extendedPdo.getDatetime()), extendedPdo.getVal3(), extendedPdo.getDffVal5(), extendedPdo.getMessageID(), extendedPdo.getAddress(), C10480a.m26020S2(extendedPdo.getMsgDate()), extendedPdo.getConversationId(), extendedPdo.isIM(), null, null, z, extendedPdo.getMessage(), 49152);
        }

        /* renamed from: u */
        public static int m15570u(String str) {
            if (str == null) {
                return 0;
            }
            boolean z = true;
            switch (str.hashCode()) {
                case -1994383672:
                    if (str.equals("verified")) {
                        z = false;
                        break;
                    }
                    break;
                case -1165461084:
                    if (str.equals(RemoteMessageConst.Notification.PRIORITY)) {
                        z = true;
                        break;
                    }
                    break;
                case -1146830912:
                    if (str.equals("business")) {
                        z = true;
                        break;
                    }
                    break;
                case -318452137:
                    if (str.equals("premium")) {
                        z = true;
                        break;
                    }
                    break;
                case -259263657:
                    if (str.equals("verified_business")) {
                        z = true;
                        break;
                    }
                    break;
                case 3062094:
                    if (str.equals("cred")) {
                        z = true;
                        break;
                    }
                    break;
                case 3178592:
                    if (str.equals("gold")) {
                        z = true;
                        break;
                    }
                    break;
                case 3599307:
                    if (str.equals("user")) {
                        z = true;
                        break;
                    }
                    break;
                case 392032945:
                    if (str.equals("known_sender")) {
                        z = true;
                        break;
                    }
                    break;
                case 1260797137:
                    if (str.equals("ambassador")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    return 2;
                case true:
                    return 16;
                case true:
                    return 64;
                case true:
                    return 4;
                case true:
                    return 128;
                case true:
                    return 256;
                case true:
                    return 32;
                case true:
                    return 1;
                case true:
                    return 512;
                case true:
                    return 8;
                default:
                    return 0;
            }
        }

        /* renamed from: u0 */
        public static final boolean m15569u0(Contact contact) {
            Boolean bool;
            String m35498s;
            String obj;
            if (contact == null || (m35498s = contact.m35498s()) == null || (obj = v.g0(m35498s).toString()) == null) {
                bool = null;
            } else {
                boolean z = false;
                int i = 0;
                while (true) {
                    if (i >= obj.length()) {
                        z = true;
                        break;
                    } else if (!((ArrayList) i.m0(i.m0(i.m0(i.m0(i.k0(new s1.d0.c('0', '9'), ','), '*'), '#'), ';'), '+')).contains(Character.valueOf(obj.charAt(i)))) {
                        break;
                    } else {
                        i++;
                    }
                }
                bool = Boolean.valueOf(z);
            }
            return C12864a2.m22540r(bool);
        }

        /* renamed from: u1 */
        public static final List<Double> m15568u1(C10119j c10119j) {
            l.e(c10119j, "<this>");
            return i.T(new Double[]{Double.valueOf(c10119j.f30044a), Double.valueOf(c10119j.f30045b), Double.valueOf(c10119j.f30046c), Double.valueOf(c10119j.f30047d), Double.valueOf(c10119j.f30048e), Double.valueOf(c10119j.f30049f), Double.valueOf(c10119j.f30050g), Double.valueOf(c10119j.f30051h), Double.valueOf(c10119j.f30052i), Double.valueOf(c10119j.f30053j)});
        }

        /* renamed from: v */
        public static int m15567v(Collection<String> collection) {
            int i = 0;
            int i2 = 0;
            if (collection != null) {
                Iterator<String> it = collection.iterator();
                while (true) {
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    i2 |= m15570u(it.next());
                }
            }
            return i;
        }

        /* renamed from: v0 */
        public static final boolean m15566v0(C13794x c13794x) {
            l.e(c13794x, "$this$isConference");
            Call.Details details = c13794x.f40005a.getDetails();
            return details != null ? details.hasProperty(1) : false;
        }

        /* renamed from: v1 */
        public static final Map<String, j0> m15565v1(FormField formField) {
            l.e(formField, "$this$toMap");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("X-Amz-Algorithm", m15694A1(formField.getAlgorithm()));
            linkedHashMap.put("Policy", m15694A1(formField.getPolicy()));
            linkedHashMap.put("X-Amz-Signature", m15694A1(formField.getSignature()));
            linkedHashMap.put(AnalyticsConstants.KEY, m15694A1(formField.getKey()));
            linkedHashMap.put("acl", m15694A1(formField.getAccess()));
            linkedHashMap.put("X-Amz-Date", m15694A1(formField.getDate()));
            linkedHashMap.put("bucket", m15694A1(formField.getBucket()));
            linkedHashMap.put("X-Amz-Credential", m15694A1(formField.getCredential()));
            return linkedHashMap;
        }

        /* renamed from: w */
        public static final String m15564w(AbstractC10518b.C10520b c10520b, String str) {
            l.e(c10520b, "$this$getAnalyticCategory");
            return m15561x(c10520b.f31321o, str);
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0024, code lost:
            if (s1.z.c.l.a(r5.getBillCategory(), "payment_notif") != false) goto L6;
         */
        /* renamed from: w0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final boolean m15563w0(com.truecaller.insights.models.InsightsDomain.Bill r5) {
            /*
                r0 = r5
                java.lang.String r1 = "$this$isCreditCardBill"
                s1.z.c.l.e(r0, r1)
                r0 = r5
                java.lang.String r0 = r0.getBillCategory()
                java.lang.String r1 = "payment_due"
                boolean r0 = s1.z.c.l.a(r0, r1)
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 != 0) goto L27
                r0 = r7
                r6 = r0
                r0 = r5
                java.lang.String r0 = r0.getBillCategory()
                java.lang.String r1 = "payment_notif"
                boolean r0 = s1.z.c.l.a(r0, r1)
                if (r0 == 0) goto L72
            L27:
                r0 = r7
                r6 = r0
                r0 = r5
                double r0 = m15690C(r0)
                r1 = 0
                double r1 = (double) r1
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L72
                r0 = r5
                java.lang.String r1 = "$this$isTypeBillDue"
                s1.z.c.l.e(r0, r1)
                r0 = r7
                r6 = r0
                r0 = 3
                java.lang.String[] r0 = new java.lang.String[r0]
                r1 = r0
                r2 = 0
                java.lang.String r3 = ""
                r1[r2] = r3
                r1 = r0
                r2 = 1
                java.lang.String r3 = "due"
                r1[r2] = r3
                r1 = r0
                r2 = 2
                java.lang.String r3 = "overdue"
                r1[r2] = r3
                java.util.List r0 = s1.u.i.T(r0)
                r1 = r5
                java.lang.String r1 = r1.getType()
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L72
                r0 = r7
                r6 = r0
                r0 = r5
                java.lang.String r0 = r0.getDueInsType()
                java.lang.String r1 = "creditcard"
                boolean r0 = s1.z.c.l.a(r0, r1)
                if (r0 == 0) goto L72
                r0 = 1
                r6 = r0
            L72:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15563w0(com.truecaller.insights.models.InsightsDomain$Bill):boolean");
        }

        /* renamed from: w1 */
        public static final C10119j m15562w1(List<Double> list) {
            l.e(list, "<this>");
            return new C10119j(list.get(0).doubleValue(), list.get(1).doubleValue(), list.get(2).doubleValue(), list.get(3).doubleValue(), list.get(4).doubleValue(), list.get(5).doubleValue(), list.get(6).doubleValue(), list.get(7).doubleValue(), list.get(8).doubleValue(), list.get(9).doubleValue());
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
        /* renamed from: x */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.String m15561x(java.lang.String r3, java.lang.String r4) {
            /*
                r0 = r3
                java.lang.String r1 = "type"
                s1.z.c.l.e(r0, r1)
                r0 = r3
                int r0 = r0.hashCode()
                r5 = r0
                r0 = r5
                r1 = -2077215262(0xffffffff843035e2, float:-2.0713442E-36)
                if (r0 == r1) goto L46
                r0 = r5
                r1 = -527098572(0xffffffffe0951d34, float:-8.595841E19)
                if (r0 == r1) goto L35
                r0 = r5
                r1 = 1428640201(0x552751c9, float:1.14981067E13)
                if (r0 == r1) goto L24
                goto L57
            L24:
                r0 = r3
                java.lang.String r1 = "CreditCard"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L57
                java.lang.String r0 = "creditcard_bill"
                r4 = r0
                goto L62
            L35:
                r0 = r3
                java.lang.String r1 = "PrepaidSuccess"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L57
                java.lang.String r0 = "prepaid_success"
                r4 = r0
                goto L62
            L46:
                r0 = r3
                java.lang.String r1 = "PrepaidExpiry"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L57
                java.lang.String r0 = "prepaid_expiry"
                r4 = r0
                goto L62
            L57:
                r0 = r4
                if (r0 == 0) goto L5e
                goto L62
            L5e:
                java.lang.String r0 = "Bill"
                r4 = r0
            L62:
                r0 = r4
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17891a1.C17902k.m15561x(java.lang.String, java.lang.String):java.lang.String");
        }

        /* renamed from: x0 */
        public static final boolean m15560x0(InsightsDomain.C4061e c4061e) {
            l.e(c4061e, "$this$isDeliveryOtp");
            return l.a(c4061e.m35237b(), "delivery");
        }

        /* renamed from: x1 */
        public static final List<String> m15559x1(List<? extends Number> list) {
            l.e(list, "$this$toNormalizedNumbers");
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (Number number : list) {
                arrayList.add(number.m35479e());
            }
            return arrayList;
        }

        /* renamed from: y0 */
        public static final boolean m15557y0(C13642g c13642g) {
            l.e(c13642g, "$this$isGold");
            l.e(c13642g, "$this$hasBadge");
            return (c13642g.f39514d & 32) == 32;
        }

        /* renamed from: y1 */
        public static final InsightsDomain.C4060d m15556y1(ExtendedPdo extendedPdo, boolean z) {
            l.e(extendedPdo, "$this$toNotifDomainSchema");
            if (!(!l.a(extendedPdo.getD(), "Notif"))) {
                return new InsightsDomain.C4060d(extendedPdo.getK(), extendedPdo.getMessageID(), extendedPdo.getAddress(), C10480a.m26020S2(extendedPdo.getMsgDate()), extendedPdo.getConversationId(), extendedPdo.isIM(), null, null, z, extendedPdo.getMessage(), 192);
            }
            StringBuilder m8728C = C22128a.m8728C("Cannot create Update from [");
            m8728C.append(extendedPdo.getD());
            m8728C.append("] pdo");
            throw new IllegalArgumentException(m8728C.toString());
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: z */
        public static final String m15555z(InsightsDomain.C4062f c4062f, String str) {
            String str2;
            l.e(c4062f, "$this$getAnalyticsCategory");
            l.e(str, "category");
            switch (str.hashCode()) {
                case -1271823248:
                    if (str.equals("flight")) {
                        str2 = "Travel_flight";
                        break;
                    }
                    str2 = "Travel_alert";
                    break;
                case 97920:
                    if (str.equals("bus")) {
                        str2 = "Travel_bus";
                        break;
                    }
                    str2 = "Travel_alert";
                    break;
                case 92899676:
                    if (str.equals("alert")) {
                        str2 = m15555z(c4062f, c4062f.m35225k());
                        break;
                    }
                    str2 = "Travel_alert";
                    break;
                case 110621192:
                    if (str.equals("train")) {
                        str2 = "Travel_train";
                        break;
                    }
                    str2 = "Travel_alert";
                    break;
                default:
                    str2 = "Travel_alert";
                    break;
            }
            return str2;
        }

        /* renamed from: z0 */
        public static final boolean m15554z0(C13642g c13642g) {
            l.e(c13642g, "$this$isGoldWithSpam");
            return m15557y0(c13642g) && c13642g.f39521k && !c13642g.f39534x.m35812b() && !c13642g.f39534x.m35813a() && !c13642g.f39534x.m35811c();
        }

        /* renamed from: z1 */
        public static final InsightsDomain.C4061e m15553z1(ExtendedPdo extendedPdo) {
            l.e(extendedPdo, "$this$toOtpDomainSchema");
            boolean z = true;
            if (!l.a(extendedPdo.getD(), "OTP")) {
                StringBuilder m8728C = C22128a.m8728C("Cannot create OtpDomain from [");
                m8728C.append(extendedPdo.getD());
                m8728C.append("] pdo");
                throw new IllegalArgumentException(m8728C.toString());
            }
            String val1 = extendedPdo.getVal1();
            long messageID = extendedPdo.getMessageID();
            long conversationId = extendedPdo.getConversationId();
            String k = extendedPdo.getK();
            b m26020S2 = C10480a.m26020S2(extendedPdo.getMsgDate());
            if (extendedPdo.getTransport() != Transport.IM) {
                z = false;
            }
            return new InsightsDomain.C4061e(messageID, conversationId, val1, m26020S2, k, z, extendedPdo.getAddress(), null, DomainOrigin.SMS, false, extendedPdo.getMessage());
        }
    }

    /* renamed from: e.a.m0.a1$l */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$l.class */
    public interface AbstractC17903l {

        /* renamed from: a */
        public static final String[] f50896a = {"contact_premium_level", "contact_premium_scope"};
    }

    /* renamed from: e.a.m0.a1$m */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$m.class */
    public static final class C17904m implements AbstractC17895d, BaseColumns {
        /* renamed from: a */
        public static Uri m15552a() {
            return Uri.withAppendedPath(C17891a1.f50888a, "raw_contact");
        }

        /* renamed from: b */
        public static Uri m15551b() {
            return Uri.withAppendedPath(m15552a(), RemoteMessageConst.DATA);
        }
    }

    /* renamed from: e.a.m0.a1$n */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/a1$n.class */
    public static final class C17905n {

        /* renamed from: a */
        public static final String[] f50897a = {"actions_dismissed", "marked_unread", "pinned_date", "archived_date"};

        /* renamed from: a */
        public static Uri m15550a() {
            return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_thread_stats");
        }
    }

    /* renamed from: a */
    public static Uri m15711a() {
        return f50888a;
    }
}
