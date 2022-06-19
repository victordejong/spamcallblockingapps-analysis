package p193e.p194a.p1066n;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.SubscriptionInfo;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.SupportMessenger;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.data.BusinessAPIError;
import com.truecaller.bizmon.newBusiness.data.BusinessAPIErrorResponse;
import com.truecaller.calling.contacts_list.ContactsHolder;
import com.truecaller.calling.contacts_list.data.SortedContactsDao;
import com.truecaller.calling.contacts_list.data.SortedContactsRepository;
import com.truecaller.calling.dialer.call_log.data.CallLogItemType;
import com.truecaller.callrecording.service.TrueAccessibilityService;
import com.truecaller.common.account.Region;
import com.truecaller.common.background.DelayedServiceBroadcastReceiver;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import com.truecaller.common.tag.network.NameSuggestionRestModel;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.multisim.SimInfo;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.profile.data.dto.OpenHours;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import com.truecaller.profile.data.dto.businessV2.LocationDetail;
import e.m.a.g.e.e;
import e.m.d.y.n;
import e.m.e.g0.a;
import e.m.e.k;
import e.m.f.a.j;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Type;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
import java.util.UUID;
import p1727n3.p1744b0.p1745a.AbstractC25626y;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1002k4.AbstractC16508e;
import p193e.p194a.p1041l0.C17355j;
import p193e.p194a.p1041l0.p1042u.p1043d.C17374c;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1060m4.AbstractC18201b;
import p193e.p194a.p1080o.p1110q.AbstractC18888a;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19251o0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19496e;
import p193e.p194a.p1342w4.p1345t.p1346a.C21300e;
import p193e.p194a.p195a.p279r0.C7219j;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.AbstractC7602a;
import p193e.p194a.p294b.p295a.p296a.p304c.RunnableC7619a;
import p193e.p194a.p294b.p295a.p308b.View$OnFocusChangeListenerC7643c;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u;
import p193e.p194a.p294b.p295a.p324g.AbstractC7802b;
import p193e.p194a.p294b.p295a.p324g.C7804d;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p331b.p333b.C7860a;
import p193e.p194a.p294b.p331b.p334c.AbstractC7892p;
import p193e.p194a.p294b.p331b.p334c.p335u.AbstractC7903a;
import p193e.p194a.p294b.p331b.p334c.p335u.C7904b;
import p193e.p194a.p294b.p331b.p334c.p335u.C7905c;
import p193e.p194a.p294b.p357o.p363d.C8146a;
import p193e.p194a.p294b.p370p.C8206e;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p373a.View$OnClickListenerC8307f;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p394b.p396f.C8375b;
import p193e.p194a.p372b0.p406e.AbstractC8414a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p406e.p409r.C8439b;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p424n.AbstractC8525d;
import p193e.p194a.p372b0.p424n.AbstractC8531g;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p372b0.p426p.p428g.AbstractC8559a;
import p193e.p194a.p372b0.p426p.p428g.AbstractC8560b;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p372b0.p430q.AbstractC8584h0;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p673d0.p674a.AbstractC12438l;
import p193e.p194a.p673d0.p674a.AbstractC12464x;
import p193e.p194a.p677d3.AbstractC12582a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p683a.AbstractC12695c2;
import p193e.p194a.p703e3.AbstractC13350c;
import p193e.p194a.p703e3.AbstractC13351d;
import p193e.p194a.p703e3.p707h.AbstractC13364d;
import p193e.p194a.p703e3.p707h.C13365e;
import p193e.p194a.p703e3.p707h.C13377o;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p798g5.AbstractC14460a0;
import p193e.p194a.p804h.AbstractC14690g0;
import p193e.p194a.p804h.AbstractC14717p;
import p193e.p194a.p804h.C14741w;
import p193e.p194a.p804h.C14742x;
import p193e.p194a.p804h.p825d.AbstractC14651d;
import p193e.p194a.p851h5.AbstractC14961s;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p947k.p979o.AbstractC16246g;
import p193e.p194a.p982k0.p986k.AbstractC16327b;
import p193e.p194a.p982k0.p986k.AbstractC16328c;
import p193e.p194a.p982k0.p986k.C16329d;
import p193e.p194a.p982k0.p989n.p990a.C16364a;
import p193e.p194a.p997k3.C16448b;
import p193e.p194a.p997k3.C16449c;
import p193e.p194a.p997k3.p1000l.C16496d;
import p193e.p194a.p997k3.p1000l.C16502j;
import p193e.p194a.p997k3.p998j.C16462c;
import p193e.p194a.p997k3.p998j.C16463d;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.f0.v;
import s1.i;
import s1.l;
import s1.u.s;
import s1.u.t;
import s1.w.f;
import s1.z.c.l;
import u3.g0;
import u3.l0;
import w3.c.a.a.a.h;
import x3.a0;
import x3.b;
/* renamed from: e.a.n.g0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/g0.class */
public final class C18334g0 {

    /* renamed from: a */
    public static SharedPreferences f51791a;

    /* renamed from: A */
    public static final Intent m15279A(Context context, boolean z) {
        Intent intent;
        l.e(context, AnalyticsConstants.CONTEXT);
        if (z) {
            intent = TruecallerInit.m34553xa(context, "calls", "notificationBlockedCall");
            l.d(intent, "TruecallerInit.buildInte…OTIFICATION_BLOCKED_CALL)");
        } else {
            intent = C7219j.f23115l.m29967a(context, InboxTab.SPAM, "notificationBlockedCall");
        }
        return intent;
    }

    /* renamed from: A0 */
    public static final void m15278A0(EditText editText) {
        l.e(editText, ViewAction.VIEW);
        editText.setSelection(0);
        editText.setOnFocusChangeListener(View$OnFocusChangeListenerC7643c.f24015a);
    }

    /* renamed from: B */
    public static boolean m15277B(String str, boolean z) {
        return f51791a.getBoolean(str, z);
    }

    /* renamed from: B0 */
    public static void m15276B0(String str, String str2) {
        C22128a.m8585p0(f51791a, str, str2);
    }

    /* renamed from: C */
    public static final C7860a m15275C(OpenHours openHours) {
        l.e(openHours, "$this$closesAt");
        String closes = openHours.getCloses();
        return closes != null ? m15220k0(closes) : null;
    }

    /* renamed from: C0 */
    public static final boolean m15274C0(Contact contact) {
        return contact == null || (contact.getSource() & 13) == 0;
    }

    /* renamed from: D */
    public static /* synthetic */ List m15273D(SortedContactsDao sortedContactsDao, ContactsHolder.SortingMode sortingMode, SortedContactsDao.ContactFullness contactFullness, Integer num, ContactsHolder.PhonebookFilter phonebookFilter, int i, Object obj) {
        if ((i & 8) != 0) {
            phonebookFilter = null;
        }
        return sortedContactsDao.m35755a(sortingMode, contactFullness, null, phonebookFilter);
    }

    /* renamed from: D0 */
    public static final boolean m15272D0() {
        return Build.VERSION.SDK_INT <= 23;
    }

    /* renamed from: E */
    public static final String m15271E(int i) {
        return new DateFormatSymbols(Locale.getDefault()).getWeekdays()[i];
    }

    /* renamed from: E0 */
    public static /* synthetic */ void m15270E0(AbstractC7892p abstractC7892p, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        abstractC7892p.mo29149n8(i, z);
    }

    /* renamed from: F */
    public static final List m15269F(String str) {
        l.e(str, RemoteMessageConst.Notification.TAG);
        return s.a;
    }

    /* renamed from: F0 */
    public static final BusinessAPIErrorResponse m15268F0(l0 l0Var) {
        k kVar;
        Type type;
        l.e(l0Var, "$this$to422Error");
        Objects.requireNonNull(BusinessAPIErrorResponse.Companion);
        l.e(l0Var, "response");
        kVar = BusinessAPIErrorResponse.gson;
        Reader j = l0Var.j();
        type = BusinessAPIErrorResponse.type;
        a k = kVar.k(j);
        Object c = kVar.c(k, type);
        k.a(c, k);
        l.d(c, "gson.fromJson(response.charStream(), type)");
        return (BusinessAPIErrorResponse) c;
    }

    /* renamed from: G */
    public static final String m15267G(SimInfo simInfo, C8375b c8375b) {
        Object obj;
        l.e(simInfo, "simInfo");
        try {
            SubscriptionInfo activeSubscriptionInfoForSimSlotIndex = C19291g.m13547h0(c8375b.f25743a).getActiveSubscriptionInfoForSimSlotIndex(simInfo.f13983a);
            l.d(activeSubscriptionInfoForSimSlotIndex, "getActiveSubscriptionInf…tIndex(simInfo.slotIndex)");
            CharSequence displayName = activeSubscriptionInfoForSimSlotIndex.getDisplayName();
            obj = displayName != null ? displayName.toString() : null;
        } catch (Throwable th) {
            obj = C25225a.m3935a0(th);
        }
        if (obj instanceof l.a) {
            obj = null;
        }
        return (String) obj;
    }

    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* renamed from: G0 */
    public static final ContentValues m15266G0(HistoryEvent historyEvent) {
        s1.z.c.l.e(historyEvent, "$this$toContentValues");
        ContentValues contentValues = new ContentValues();
        contentValues.put("tc_id", historyEvent.getTcId());
        String str = historyEvent.f11535b;
        contentValues.put("normalized_number", str != null ? C17355j.m16196b(str) : null);
        String str2 = historyEvent.f11536c;
        contentValues.put("raw_number", str2 != null ? C17355j.m16196b(str2) : null);
        j.d dVar = historyEvent.f11549p;
        if (dVar == null) {
            dVar = j.d.l;
        }
        contentValues.put("number_type", dVar.name());
        contentValues.put("country_code", historyEvent.f11537d);
        contentValues.put("cached_name", historyEvent.f11538e);
        contentValues.put("type", Integer.valueOf(historyEvent.f11550q));
        contentValues.put("action", Integer.valueOf(historyEvent.f11551r));
        contentValues.put("filter_source", historyEvent.f11554u);
        contentValues.put("ringing_duration", Long.valueOf(historyEvent.f11543j));
        contentValues.put("call_log_id", historyEvent.f11540g);
        Long valueOf = Long.valueOf(historyEvent.f11541h);
        Long l = null;
        if (valueOf.longValue() >= 1) {
            l = valueOf;
        }
        contentValues.put("timestamp", Long.valueOf(l != null ? l.longValue() : System.currentTimeMillis()));
        contentValues.put(VastIconXmlManager.DURATION, Long.valueOf(historyEvent.f11542i));
        contentValues.put("subscription_id", historyEvent.f11544k);
        contentValues.put("feature", Integer.valueOf(historyEvent.f11545l));
        contentValues.put("new", Integer.valueOf(historyEvent.f11548o));
        contentValues.put("is_read", Integer.valueOf(historyEvent.f11546m));
        contentValues.put("subscription_component_name", historyEvent.f11552s);
        contentValues.put("tc_flag", Integer.valueOf(historyEvent.f11553t));
        contentValues.put("event_id", (String) h.c(historyEvent.f11534a, UUID.randomUUID().toString()));
        return contentValues;
    }

    /* renamed from: H */
    public static final <T> Integer m15265H(AbstractC7602a.AbstractC7604b<T> abstractC7604b) {
        Integer num;
        List<BusinessAPIError> errors;
        BusinessAPIError businessAPIError;
        s1.z.c.l.e(abstractC7604b, "$this$getErrorStringId");
        if (abstractC7604b instanceof AbstractC7602a.AbstractC7604b.C7605a) {
            num = Integer.valueOf(C3478R.string.profile_error_generic);
        } else if (abstractC7604b instanceof AbstractC7602a.AbstractC7604b.C7606b) {
            num = Integer.valueOf(C3478R.string.profile_error_generic);
        } else if (abstractC7604b instanceof AbstractC7602a.AbstractC7604b.C7607c) {
            num = Integer.valueOf(C3478R.string.profile_error_network);
        } else if (abstractC7604b instanceof AbstractC7602a.AbstractC7604b.C7609e) {
            num = Integer.valueOf(C3478R.string.profile_error_generic);
        } else if (abstractC7604b instanceof AbstractC7602a.AbstractC7604b.C7610f) {
            num = Integer.valueOf(C3478R.string.profile_error_generic);
        } else if (abstractC7604b instanceof AbstractC7602a.AbstractC7604b.C7608d) {
            num = Integer.valueOf(C3478R.string.profile_error_network);
        } else if (!(abstractC7604b instanceof AbstractC7602a.AbstractC7604b.C7611g)) {
            throw new i();
        } else {
            BusinessAPIErrorResponse businessAPIErrorResponse = ((AbstractC7602a.AbstractC7604b.C7611g) abstractC7604b).f23952b;
            Integer valueOf = (businessAPIErrorResponse == null || (errors = businessAPIErrorResponse.getErrors()) == null || (businessAPIError = (BusinessAPIError) s1.u.i.D(errors)) == null) ? null : Integer.valueOf(businessAPIError.getErrorType());
            num = Integer.valueOf((valueOf != null && valueOf.intValue() == 1) ? C3478R.string.profile_error_validation_invalidCharacter : (valueOf != null && valueOf.intValue() == 2) ? C3478R.string.profile_error_validation_invalidWord : C3478R.string.profile_error_generic);
        }
        return num;
    }

    /* renamed from: H0 */
    public static final C17374c m15264H0(Cursor cursor, C16449c c16449c, boolean z) {
        s1.z.c.l.e(cursor, "$this$toHistoryEventCursor");
        s1.z.c.l.e(c16449c, "extraInfoReader");
        return new C17374c(cursor, new C16463d(cursor, c16449c, C16502j.f46396b), new C16462c(cursor), z);
    }

    /* renamed from: I */
    public static /* synthetic */ SortedContactsRepository.AbstractC3619b m15263I(SortedContactsDao sortedContactsDao, ContactsHolder.SortingMode sortingMode, ContactsHolder.PhonebookFilter phonebookFilter, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            z2 = false;
        }
        return sortedContactsDao.m35754b(sortingMode, phonebookFilter, z, z2);
    }

    /* renamed from: I0 */
    public static C17374c m15262I0(Cursor cursor, C16449c c16449c, boolean z, int i) {
        C16448b c16448b = (i & 1) != 0 ? new C16448b(new C16449c.C16450a(t.a)) : null;
        if ((i & 2) != 0) {
            z = false;
        }
        return m15264H0(cursor, c16448b, z);
    }

    /* renamed from: J */
    public static long m15261J(String str, long j) {
        return f51791a.getLong(str, j);
    }

    /* renamed from: J0 */
    public static final Contact m15260J0(Contact contact, HistoryEvent historyEvent, AbstractC19223c0 abstractC19223c0, AbstractC8584h0 abstractC8584h0) {
        s1.z.c.l.e(historyEvent, "historyEvent");
        s1.z.c.l.e(abstractC19223c0, "resourceProvider");
        s1.z.c.l.e(abstractC8584h0, "specialNumberResolver");
        Contact contact2 = contact != null ? contact : new Contact();
        String m35566G = contact2.m35566G();
        if (m35566G == null || m35566G.length() == 0) {
            String mo13768b = C8574c0.m28353f(historyEvent.f11536c) ? abstractC19223c0.mo13768b(2131886802, new Object[0]) : abstractC8584h0.mo28290d(historyEvent.f11536c, historyEvent.f11535b) ? abstractC19223c0.mo13768b(C2752R.string.text_voicemail, new Object[0]) : abstractC8584h0.mo28292b(historyEvent.f11536c) ? abstractC8584h0.mo28291c() : null;
            if (mo13768b == null) {
                mo13768b = historyEvent.f11536c;
            }
            contact2.m35546S0(mo13768b);
        }
        return contact2;
    }

    /* renamed from: K */
    public static final Uri m15259K() {
        StringBuilder m8728C = C22128a.m8728C("truecaller://");
        m8728C.append(System.currentTimeMillis());
        return Uri.parse(m8728C.toString());
    }

    /* renamed from: K0 */
    public static final String m15258K0(String str) {
        s1.z.c.l.e(str, "$this$withoutPlus");
        String str2 = str;
        if (r.y(str, "+", false, 2)) {
            str2 = str.substring(1);
            s1.z.c.l.d(str2, "(this as java.lang.String).substring(startIndex)");
        }
        return str2;
    }

    /* renamed from: L */
    public static /* synthetic */ String m15257L(AbstractC14651d abstractC14651d, Number number, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return abstractC14651d.m19825a(number, z);
    }

    /* renamed from: L0 */
    public static /* synthetic */ s1.k m15256L0(AbstractC8571b abstractC8571b, long j, String str, boolean z, int i, s1.z.b.l lVar, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            i = 2;
        }
        return abstractC8571b.mo28367d(j, str, z, i, lVar);
    }

    /* renamed from: M */
    public static final C7860a m15255M(OpenHours openHours) {
        s1.z.c.l.e(openHours, "$this$opensAt");
        String opens = openHours.getOpens();
        return opens != null ? m15220k0(opens) : null;
    }

    /* renamed from: N */
    public static final String m15254N(Region region) {
        String str;
        s1.z.c.l.e(region, "$this$privacyPolicyUrl");
        int ordinal = region.ordinal();
        if (ordinal == 0) {
            str = "https://privacy.truecaller.com/privacy-policy-eu";
        } else if (ordinal == 1) {
            str = "https://www.truecaller.com/california-privacy-policy";
        } else if (ordinal == 2) {
            str = "https://www.truecaller.com/south-africa-privacy-policy";
        } else if (ordinal == 3) {
            str = "https://www.truecaller.com/brazil-privacy-policy";
        } else if (ordinal != 4) {
            throw new i();
        } else {
            str = "https://privacy.truecaller.com/privacy-policy";
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
        if (r0.length() == 0) goto L17;
     */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m15253O(p193e.p194a.p294b.p357o.p360c.p362b.C8144b r3) {
        /*
            r0 = r3
            java.lang.String r1 = "$this$getResolvedName"
            s1.z.c.l.e(r0, r1)
            r0 = r3
            java.lang.String r0 = r0.f25228d
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L23
            r0 = r4
            int r0 = r0.length()
            if (r0 != 0) goto L1e
            goto L23
        L1e:
            r0 = 0
            r6 = r0
            goto L25
        L23:
            r0 = 1
            r6 = r0
        L25:
            java.lang.String r0 = ""
            r4 = r0
            r0 = r6
            if (r0 != 0) goto L40
            r0 = r3
            java.lang.String r0 = r0.f25228d
            r7 = r0
            r0 = r4
            r3 = r0
            r0 = r7
            if (r0 == 0) goto L75
            r0 = r7
            r3 = r0
        L3d:
            goto L75
        L40:
            r0 = r3
            java.lang.String r0 = r0.f25229e
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L57
            r0 = r5
            r6 = r0
            r0 = r7
            int r0 = r0.length()
            if (r0 != 0) goto L59
        L57:
            r0 = 1
            r6 = r0
        L59:
            r0 = r6
            if (r0 != 0) goto L70
            r0 = r3
            java.lang.String r0 = r0.f25229e
            r7 = r0
            r0 = r4
            r3 = r0
            r0 = r7
            if (r0 == 0) goto L75
            r0 = r7
            r3 = r0
            goto L3d
        L70:
            r0 = r3
            java.lang.String r0 = r0.f25226b
            r3 = r0
        L75:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18334g0.m15253O(e.a.b.o.c.b.b):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0084 A[Catch: Exception -> 0x0139, TRY_LEAVE, TryCatch #0 {Exception -> 0x0139, blocks: (B:12:0x0048, B:17:0x0060, B:22:0x0078, B:24:0x0084, B:26:0x008d, B:27:0x0098, B:30:0x00a3, B:41:0x00d0, B:42:0x00e0, B:43:0x00ee, B:44:0x00fc, B:46:0x010a, B:48:0x0113, B:50:0x011d, B:51:0x012c), top: B:66:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a3 A[Catch: Exception -> 0x0139, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0139, blocks: (B:12:0x0048, B:17:0x0060, B:22:0x0078, B:24:0x0084, B:26:0x008d, B:27:0x0098, B:30:0x00a3, B:41:0x00d0, B:42:0x00e0, B:43:0x00ee, B:44:0x00fc, B:46:0x010a, B:48:0x0113, B:50:0x011d, B:51:0x012c), top: B:66:0x0040 }] */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m15252P(s1.z.b.l<? super s1.w.d<? super x3.a0<T>>, ? extends java.lang.Object> r5, s1.w.d<? super p193e.p194a.p294b.p295a.p296a.p301b.p303d.AbstractC7602a<T>> r6) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18334g0.m15252P(s1.z.b.l, s1.w.d):java.lang.Object");
    }

    /* renamed from: Q */
    public static String m15251Q(String str) {
        return f51791a.getString(str, "");
    }

    /* renamed from: R */
    public static String m15250R(String str, String str2) {
        return f51791a.getString(str, str2);
    }

    /* renamed from: S */
    public static AbstractC8560b m15249S() {
        return (AbstractC8560b) C8367d.m28633a(KnownEndpoints.TAGGING, AbstractC8560b.class);
    }

    /* renamed from: T */
    public static final AbstractC8371e m15248T(g0 g0Var) {
        s1.z.c.l.e(g0Var, "$this$targetDomain");
        return (AbstractC8371e) g0Var.d(AbstractC8371e.class);
    }

    /* renamed from: U */
    public static final String m15247U(Region region) {
        String str;
        s1.z.c.l.e(region, "$this$termsOfServiceUrl");
        int ordinal = region.ordinal();
        if (ordinal == 0) {
            str = "https://www.truecaller.com/terms-of-service#eu";
        } else if (ordinal != 1 && ordinal != 2 && ordinal != 3 && ordinal != 4) {
            throw new i();
        } else {
            str = "https://www.truecaller.com/terms-of-service#row";
        }
        return str;
    }

    /* renamed from: V */
    public static final boolean m15246V(int i, int i2, Intent intent, s1.z.b.l<? super Integer, s1.s> lVar) {
        boolean z;
        if (i == 1001) {
            Integer num = null;
            if (!(i2 == -1)) {
                intent = null;
            }
            Integer valueOf = intent != null ? Integer.valueOf(intent.getIntExtra("speed_dial_key", 0)) : null;
            s1.d0.i iVar = new s1.d0.i(2, 9);
            boolean z2 = false;
            if (valueOf != null) {
                z2 = false;
                if (iVar.d(valueOf.intValue())) {
                    z2 = true;
                }
            }
            if (z2) {
                num = valueOf;
            }
            z = true;
            if (num != null) {
                int intValue = num.intValue();
                z = true;
                if (lVar != null) {
                    s1.s sVar = (s1.s) lVar.d(Integer.valueOf(intValue));
                    z = true;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: W */
    public static final boolean m15245W(AbstractC14717p abstractC14717p, C21300e c21300e, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        s1.z.c.l.e(abstractC14717p, "$this$highlightIfMatched");
        s1.z.c.l.e(c21300e, "searchMatcher");
        s1.z.c.l.e(str, "pattern");
        s1.z.c.l.e(str2, "originalValue");
        s1.z.c.l.e(str3, "formattedValue");
        return m15226h0(c21300e, str, str2, str3, z, z2, z3, new C14742x(abstractC14717p));
    }

    /* renamed from: X */
    public static final boolean m15244X(AbstractC14690g0 abstractC14690g0, C21300e c21300e, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        s1.z.c.l.e(abstractC14690g0, "$this$highlightIfMatched");
        s1.z.c.l.e(c21300e, "searchMatcher");
        s1.z.c.l.e(str, "pattern");
        s1.z.c.l.e(str2, "originalValue");
        s1.z.c.l.e(str3, "formattedValue");
        return m15226h0(c21300e, str, str2, str3, z, z2, z3, new C14741w(abstractC14690g0));
    }

    /* renamed from: Y */
    public static final CharSequence m15243Y(CharSequence charSequence, int i, int i2, int i3) {
        s1.z.c.l.e(charSequence, "$this$highlightSafe");
        SpannableStringBuilder spannableStringBuilder = charSequence;
        if (charSequence.length() != 0) {
            spannableStringBuilder = charSequence;
            if (charSequence.length() >= i3) {
                if (i2 >= i3) {
                    spannableStringBuilder = charSequence;
                } else {
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(charSequence);
                    spannableStringBuilder2.setSpan(new ForegroundColorSpan(i), i2, i3, 33);
                    spannableStringBuilder = spannableStringBuilder2;
                }
            }
        }
        return spannableStringBuilder;
    }

    /* renamed from: Z */
    public static final boolean m15242Z(Context context) {
        s1.z.c.l.e(context, "$this$isAccessibilityServiceEnabled");
        ComponentName componentName = new ComponentName(context, TrueAccessibilityService.class);
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_accessibility_services");
        if (string != null) {
            TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(':');
            simpleStringSplitter.setString(string);
            while (simpleStringSplitter.hasNext()) {
                String next = simpleStringSplitter.next();
                s1.z.c.l.d(next, "colonSplitter.next()");
                ComponentName unflattenFromString = ComponentName.unflattenFromString(next);
                if (unflattenFromString != null && s1.z.c.l.a(unflattenFromString, componentName)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: a */
    public static final AbstractC13350c m15241a(Context context) {
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.call_alert.CallAlertSupportProvider");
        return ((AbstractC13351d) applicationContext).mo21885E();
    }

    /* renamed from: a0 */
    public static final boolean m15240a0(HistoryEvent historyEvent) {
        s1.z.c.l.e(historyEvent, "$this$isCallHidden");
        return C8574c0.m28353f(historyEvent.f11536c) && !CallLogItemType.Companion.m35749a(historyEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
        if (r4 != null) goto L14;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.truecaller.common.network.KnownDomain m15239b(java.lang.String r4) {
        /*
            s1.g r0 = p193e.p194a.p372b0.p406e.C8424e.f26104a
            java.lang.Object r0 = r0.getValue()
            java.util.List r0 = (java.util.List) r0
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L11:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L32
            r0 = r5
            java.lang.Object r0 = r0.next()
            r6 = r0
            r0 = r6
            java.lang.String r0 = (java.lang.String) r0
            r1 = r4
            r2 = 1
            boolean r0 = s1.f0.r.n(r0, r1, r2)
            if (r0 == 0) goto L11
            r0 = r6
            r4 = r0
            goto L34
        L32:
            r0 = 0
            r4 = r0
        L34:
            r0 = r4
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L46
            com.truecaller.common.network.KnownDomain r0 = com.truecaller.common.network.KnownDomain.DOMAIN_REGION_1
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L46
            goto L4a
        L46:
            com.truecaller.common.network.KnownDomain r0 = com.truecaller.common.network.KnownDomain.DOMAIN_OTHER_REGIONS
            r4 = r0
        L4a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18334g0.m15239b(java.lang.String):com.truecaller.common.network.KnownDomain");
    }

    /* renamed from: b0 */
    public static final boolean m15238b0(AbstractC13497p abstractC13497p) {
        s1.z.c.l.e(abstractC13497p, "$this$isMultiSimReady");
        return abstractC13497p.mo21736p() && abstractC13497p.mo21723t();
    }

    /* renamed from: c */
    public static final String m15237c(int i) {
        String str;
        if (i != 0) {
            if (i == 1) {
                str = "Migrated";
            } else if (i != 2) {
                AssertionUtil.OnlyInDebug.fail(C22128a.m8611i2("Source unknown: ", i));
            } else {
                str = "Edited";
            }
            return str;
        }
        str = "Created";
        return str;
    }

    /* renamed from: c0 */
    public static final boolean m15236c0(Contact contact) {
        return (contact == null || contact.getId() == null) ? false : true;
    }

    /* renamed from: d */
    public static final boolean m15235d(CharSequence charSequence) {
        return !(charSequence == null || r.p(charSequence));
    }

    /* renamed from: d0 */
    public static final boolean m15234d0(List<com.truecaller.profile.data.dto.businessV2.OpenHours> list) {
        s1.z.c.l.e(list, "$this$isSameTime");
        TreeSet treeSet = new TreeSet();
        TreeSet treeSet2 = new TreeSet();
        for (com.truecaller.profile.data.dto.businessV2.OpenHours openHours : list) {
            treeSet.add(openHours.getOpens());
            treeSet2.add(openHours.getCloses());
        }
        boolean z = true;
        if (treeSet.size() != 1 || treeSet2.size() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public static final void m15233e(AbstractC12438l abstractC12438l, AbstractC12464x abstractC12464x, s1.z.b.l lVar, s1.z.b.a aVar) {
        if (abstractC12464x == null) {
            aVar.invoke();
        }
        if (abstractC12464x instanceof AbstractC12464x.C12466b) {
            lVar.d(abstractC12464x);
        } else if (abstractC12464x instanceof AbstractC12464x.C12467c) {
            abstractC12438l.mo23063D5((AbstractC12464x.C12467c) abstractC12464x);
            aVar.invoke();
        } else if (!(abstractC12464x instanceof AbstractC12464x.C12465a)) {
        } else {
            AbstractC12464x.C12465a c12465a = (AbstractC12464x.C12465a) abstractC12464x;
            abstractC12438l.mo23053N5(c12465a.f36411a, c12465a.f36412b);
            aVar.invoke();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
        if ((r0 == null || r0.length() == 0) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008a, code lost:
        if ((r0 == null || r0.length() == 0) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008d, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0093, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x009b, code lost:
        if (r8 != false) goto L34;
     */
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m15232e0(com.truecaller.multisim.SimInfo r3, p193e.p194a.p372b0.p394b.p396f.C8375b r4, boolean r5) {
        /*
            r0 = r3
            java.lang.String r1 = "$this$isValid"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            java.lang.String r1 = "simInfoProvider"
            s1.z.c.l.e(r0, r1)
            r0 = r3
            java.lang.String r0 = r0.f13991i
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L2c
            r0 = r6
            int r0 = r0.length()
            if (r0 != 0) goto L26
            goto L2c
        L26:
            r0 = 0
            r8 = r0
            goto L2f
        L2c:
            r0 = 1
            r8 = r0
        L2f:
            r0 = r8
            if (r0 == 0) goto L9e
            r0 = r3
            java.lang.String r0 = r0.f13987e
            int r0 = r0.length()
            r1 = 4
            if (r0 >= r1) goto L9e
            r0 = r5
            if (r0 == 0) goto L6a
            r0 = r3
            r1 = r4
            java.lang.String r0 = m15267G(r0, r1)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L5f
            r0 = r3
            int r0 = r0.length()
            if (r0 != 0) goto L59
            goto L5f
        L59:
            r0 = 0
            r8 = r0
            goto L62
        L5f:
            r0 = 1
            r8 = r0
        L62:
            r0 = r8
            if (r0 != 0) goto L93
            goto L8d
        L6a:
            r0 = r3
            java.lang.String r0 = r0.f13986d
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L85
            r0 = r3
            int r0 = r0.length()
            if (r0 != 0) goto L7f
            goto L85
        L7f:
            r0 = 0
            r8 = r0
            goto L88
        L85:
            r0 = 1
            r8 = r0
        L88:
            r0 = r8
            if (r0 != 0) goto L93
        L8d:
            r0 = 1
            r8 = r0
            goto L96
        L93:
            r0 = 0
            r8 = r0
        L96:
            r0 = r7
            r5 = r0
            r0 = r8
            if (r0 == 0) goto La0
        L9e:
            r0 = 1
            r5 = r0
        La0:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18334g0.m15232e0(com.truecaller.multisim.SimInfo, e.a.b0.b.f.b, boolean):boolean");
    }

    /* renamed from: f */
    public static final void m15231f(StringBuilder sb, String str, boolean z) {
        s1.z.c.l.e(sb, "$this$appendIfNotEmpty");
        if (!(str == null || str.length() == 0)) {
            String str2 = str;
            if (z) {
                str2 = C22128a.m8543z2(", ", str);
            }
            sb.append(str2);
        }
    }

    /* renamed from: f0 */
    public static final void m15230f0(C8551c c8551c, ImageView imageView) {
        s1.z.c.l.e(c8551c, "$this$loadImageResource");
        s1.z.c.l.e(imageView, "imageView");
        C17891a1.C17902k.m15664K1(imageView.getContext()).m8964B(c8551c.f26354e).m8427O(imageView);
    }

    /* renamed from: g */
    public static /* synthetic */ void m15229g(StringBuilder sb, String str, boolean z, int i) {
        if ((i & 2) != 0) {
            z = true;
        }
        m15231f(sb, str, z);
    }

    /* renamed from: g0 */
    public static final void m15228g0(RecyclerView recyclerView, AbstractC25626y abstractC25626y, int i) {
        s1.z.c.l.e(recyclerView, "$this$moveSnapTo");
        s1.z.c.l.e(abstractC25626y, "snapHelper");
        recyclerView.scrollToPosition(i);
        recyclerView.post(new RunnableC7619a(recyclerView, i, abstractC25626y));
    }

    /* renamed from: h */
    public static String m15227h(AbstractApplicationC8442a.C8443a c8443a) {
        Objects.requireNonNull(c8443a);
        String mo10422p = AbstractApplicationC8442a.m28551L().mo10422p();
        Objects.requireNonNull(mo10422p, "Cannot return null from a non-@Nullable @Provides method");
        return mo10422p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:240:0x0862, code lost:
        r0 = r0[r27].f59661d;
        r7.f59665a = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0874, code lost:
        if (r28 == false) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0877, code lost:
        r7.f59665a = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x087f, code lost:
        r0 = r0[r31].f59661d + r23;
        r7.f59666b = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x089c, code lost:
        if (r0 <= r0[r31].f59662e) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x089f, code lost:
        r7.f59666b = r0[r31].f59662e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x08ab, code lost:
        r18 = 0;
        r17 = 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:183:0x063c  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x08bc A[LOOP:13: B:186:0x066f->B:250:0x08bc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0937  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0946  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x05fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:313:0x08b6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0305  */
    /* renamed from: h0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m15226h0(p193e.p194a.p1342w4.p1345t.p1346a.C21300e r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, boolean r11, boolean r12, boolean r13, s1.z.b.l<? super s1.k<java.lang.Integer, java.lang.Integer>, java.lang.Boolean> r14) {
        /*
            Method dump skipped, instructions count: 2412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18334g0.m15226h0(e.a.w4.t.a.e, java.lang.String, java.lang.String, java.lang.String, boolean, boolean, boolean, s1.z.b.l):boolean");
    }

    /* renamed from: i */
    public static int m15225i(AbstractApplicationC8442a.C8443a c8443a) {
        Objects.requireNonNull(c8443a);
        return AbstractApplicationC8442a.m28551L().mo28555H();
    }

    /* renamed from: i0 */
    public static final void m15224i0(Context context) {
        s1.z.c.l.e(context, "$this$openAccessibilitySettings");
        context.startActivity(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        d.w2(h1.a, (f) null, (j0) null, new C16364a(context, null), 3, (Object) null);
    }

    /* renamed from: j */
    public static String m15223j(AbstractApplicationC8442a.C8443a c8443a) {
        Objects.requireNonNull(c8443a);
        String mo28554I = AbstractApplicationC8442a.m28551L().mo28554I();
        Objects.requireNonNull(mo28554I, "Cannot return null from a non-@Nullable @Provides method");
        return mo28554I;
    }

    /* renamed from: j0 */
    public static final void m15222j0(Fragment fragment, int i, String str, boolean z) {
        s1.z.c.l.e(fragment, "fragment");
        n3.r.a.l activity = fragment.getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "fragment.activity ?: return");
            e.a.h.c.a aVar = new e.a.h.c.a();
            aVar.setStyle(0, 0);
            Bundle bundle = new Bundle();
            bundle.putInt("speed_dial_key", i);
            bundle.putString("speed_dial_value", str);
            bundle.putBoolean("show_options", z);
            aVar.setArguments(bundle);
            aVar.setTargetFragment(fragment, 1001);
            AbstractC12695c2.m22740QA(aVar, activity, null, 2, null);
        }
    }

    /* renamed from: k */
    public static final void m15221k(TextView textView, boolean z) {
        s1.z.c.l.e(textView, "$this$applyBold");
        if (z) {
            textView.setTypeface(textView.getTypeface(), 1);
        } else {
            textView.setTypeface(Typeface.create(textView.getTypeface(), 0), 0);
        }
    }

    /* renamed from: k0 */
    public static final C7860a m15220k0(String str) {
        List U = v.U(str, new String[]{StringConstant.COLON}, false, 0, 6);
        if (U.size() != 2) {
            return null;
        }
        try {
            if (!(((CharSequence) s1.u.i.B(U)).length() > 0)) {
                return null;
            }
            int parseInt = Integer.parseInt((String) s1.u.i.B(U));
            boolean z = false;
            if (((CharSequence) s1.u.i.Q(U)).length() > 0) {
                z = true;
            }
            if (!z) {
                return null;
            }
            return new C7860a(parseInt, Integer.parseInt((String) s1.u.i.Q(U)));
        } catch (NumberFormatException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return null;
        }
    }

    /* renamed from: l */
    public static final AbstractC7802b m15219l(Context context) {
        s1.z.c.l.e(context, "$this$buildBusinessProfileComponent");
        AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
        s1.z.c.l.d(m28551L, "ApplicationBase.getAppBase()");
        AbstractC8412c m28549N = m28551L.m28549N();
        s1.z.c.l.d(m28549N, "appBase.commonGraph");
        AbstractC19496e m28552K = m28551L.m28552K();
        s1.z.c.l.d(m28552K, "appBase.analyticsComponent");
        AbstractC19251o0 m28541V = m28551L.m28541V();
        Object m3820x0 = C25225a.m3820x0(context.getApplicationContext(), AbstractC16508e.class);
        s1.z.c.l.d(m3820x0, "EntryPointAccessors.from…kerComponent::class.java)");
        AbstractC16508e abstractC16508e = (AbstractC16508e) m3820x0;
        Object m3820x02 = C25225a.m3820x0(context.getApplicationContext(), AbstractC18201b.class);
        s1.z.c.l.d(m3820x02, "EntryPointAccessors.from…ileComponent::class.java)");
        AbstractC18201b abstractC18201b = (AbstractC18201b) m3820x02;
        AbstractC14460a0 abstractC14460a0 = (AbstractC14460a0) C22128a.m8726C1(AbstractC14460a0.class, "EntryPointAccessors.from…gerComponent::class.java)");
        Objects.requireNonNull(m28541V);
        Object m3820x03 = C25225a.m3820x0(AbstractApplicationC8442a.m28551L(), AbstractC12582a.class);
        s1.z.c.l.d(m3820x03, "EntryPointAccessors.from…ardComponent::class.java)");
        AbstractC12582a abstractC12582a = (AbstractC12582a) m3820x03;
        AbstractC14961s abstractC14961s = (AbstractC14961s) C22128a.m8726C1(AbstractC14961s.class, "EntryPointAccessors.from…onsComponent::class.java)");
        C7804d c7804d = new C7804d();
        C25225a.m3846s(m28549N, AbstractC8412c.class);
        C25225a.m3846s(m28541V, AbstractC19251o0.class);
        C25225a.m3846s(m28552K, AbstractC19496e.class);
        C25225a.m3846s(abstractC12582a, AbstractC12582a.class);
        C25225a.m3846s(abstractC16508e, AbstractC16508e.class);
        C25225a.m3846s(abstractC14460a0, AbstractC14460a0.class);
        C25225a.m3846s(abstractC14961s, AbstractC14961s.class);
        C25225a.m3846s(abstractC18201b, AbstractC18201b.class);
        C7805e c7805e = new C7805e(c7804d, m28549N, m28541V, m28552K, abstractC12582a, abstractC16508e, abstractC14460a0, abstractC14961s, abstractC18201b, null);
        s1.z.c.l.d(c7805e, "DaggerBusinessProfileCom…mponent)\n        .build()");
        return c7805e;
    }

    /* renamed from: l0 */
    public static AbstractC8438a m15218l0(Context context) {
        int i = AbstractC8414a.f26093a;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        SharedPreferences sharedPreferences = context.getSharedPreferences("account", 0);
        s1.z.c.l.d(sharedPreferences, "sharedPreferences");
        C8439b c8439b = new C8439b(sharedPreferences);
        c8439b.m13467n3(context);
        return c8439b;
    }

    /* renamed from: m */
    public static final AbstractC7903a m15217m(Context context) {
        s1.z.c.l.e(context, "$this$buildBusinessProfileComponent");
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        AbstractApplicationC8442a abstractApplicationC8442a = (AbstractApplicationC8442a) applicationContext;
        AbstractC8412c m28549N = abstractApplicationC8442a.m28549N();
        s1.z.c.l.d(m28549N, "applicationBase.commonGraph");
        AbstractC19496e m28552K = abstractApplicationC8442a.m28552K();
        s1.z.c.l.d(m28552K, "applicationBase.analyticsComponent");
        AbstractC19251o0 m28541V = abstractApplicationC8442a.m28541V();
        Objects.requireNonNull(m28541V);
        Object m3820x0 = C25225a.m3820x0(AbstractApplicationC8442a.m28551L(), AbstractC12582a.class);
        s1.z.c.l.d(m3820x0, "EntryPointAccessors.from…ardComponent::class.java)");
        AbstractC12582a abstractC12582a = (AbstractC12582a) m3820x0;
        AbstractC14460a0 abstractC14460a0 = (AbstractC14460a0) C22128a.m8726C1(AbstractC14460a0.class, "EntryPointAccessors.from…gerComponent::class.java)");
        C7904b c7904b = new C7904b();
        C25225a.m3846s(m28549N, AbstractC8412c.class);
        C25225a.m3846s(m28541V, AbstractC19251o0.class);
        C25225a.m3846s(m28552K, AbstractC19496e.class);
        C25225a.m3846s(abstractC12582a, AbstractC12582a.class);
        C25225a.m3846s(abstractC14460a0, AbstractC14460a0.class);
        C7905c c7905c = new C7905c(c7904b, m28549N, m28541V, m28552K, abstractC12582a, abstractC14460a0, null);
        s1.z.c.l.d(c7905c, "DaggerCreateBusinessProf…tance())\n        .build()");
        return c7905c;
    }

    /* renamed from: m0 */
    public static k m15216m0(C8146a c8146a) {
        Objects.requireNonNull(c8146a);
        e.m.e.l lVar = new e.m.e.l();
        lVar.b(Uri.class, new C8206e());
        k a = lVar.a();
        s1.z.c.l.d(a, "GsonBuilder()\n        .r…izer())\n        .create()");
        return a;
    }

    /* renamed from: n */
    public static final void m15215n(Activity activity, Contact contact, String str, String str2, String str3) {
        Object obj;
        s1.z.c.l.e(activity, "activity");
        s1.z.c.l.e(str, "fallBackNumber");
        s1.z.c.l.e(str2, "callType");
        s1.z.c.l.e(str3, "analyticsContext");
        Application application = activity.getApplication();
        Objects.requireNonNull(application, "null cannot be cast to non-null type com.truecaller.TrueApp");
        AbstractC19462a abstractC19462a = ((TrueApp) application).f9587d;
        s1.z.c.l.d(abstractC19462a, "(activity.application as TrueApp).analytics");
        List<C16496d> m14110c = C19103t.m14110c(activity, contact != null ? contact.m35548R() : null, null);
        ArrayList m8670S = C22128a.m8670S(m14110c, "ContactUtil.getExternalA…ty, contact?.phonebookId)");
        Iterator it = ((ArrayList) m14110c).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            String str4 = ((C16496d) next).f46385d;
            s1.z.c.l.d(str4, "it.packageName");
            if (v.B(str4, SupportMessenger.WHATSAPP, false, 2)) {
                m8670S.add(next);
            }
        }
        Iterator it2 = m8670S.iterator();
        while (true) {
            obj = null;
            if (!it2.hasNext()) {
                break;
            }
            Object next2 = it2.next();
            Intent intent = ((C16496d) next2).f46384c;
            s1.z.c.l.d(intent, "it.actionIntent");
            String type = intent.getType();
            if (C12864a2.m22540r(type != null ? Boolean.valueOf(v.z(type, str2, true)) : null)) {
                obj = next2;
                break;
            }
        }
        C16496d c16496d = (C16496d) obj;
        if (c16496d == null) {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://api.whatsapp.com/send?phone=" + str)));
            ViewActionEvent.WhatsAppSubAction whatsAppSubAction = ViewActionEvent.WhatsAppSubAction.APP_OPEN;
            s1.z.c.l.e(whatsAppSubAction, "subAction");
            String value = whatsAppSubAction.getValue();
            s1.z.c.l.e("WhatsApp", "action");
            n.B0(new ViewActionEvent("WhatsApp", value, "callLog"), abstractC19462a);
            return;
        }
        activity.startActivity(c16496d.f46384c);
        if (s1.z.c.l.a(str2, "call")) {
            ViewActionEvent.WhatsAppSubAction whatsAppSubAction2 = ViewActionEvent.WhatsAppSubAction.AUDIO;
            s1.z.c.l.e(whatsAppSubAction2, "subAction");
            String value2 = whatsAppSubAction2.getValue();
            s1.z.c.l.e("WhatsApp", "action");
            n.B0(new ViewActionEvent("WhatsApp", value2, "callLog"), abstractC19462a);
            return;
        }
        ViewActionEvent.WhatsAppSubAction whatsAppSubAction3 = ViewActionEvent.WhatsAppSubAction.VIDEO;
        s1.z.c.l.e(whatsAppSubAction3, "subAction");
        String value3 = whatsAppSubAction3.getValue();
        s1.z.c.l.e("WhatsApp", "action");
        n.B0(new ViewActionEvent("WhatsApp", value3, "callLog"), abstractC19462a);
    }

    /* renamed from: n0 */
    public static void m15214n0(String str) {
        f51791a.edit().remove(str).apply();
    }

    /* renamed from: o */
    public static final boolean m15213o(int i, int i2, String str, String str2, long j, long j2) {
        boolean z = true;
        if ((i == i2 || (i == 3 && i2 == 1)) && h.f(C17355j.m16196b(str), C17355j.m16196b(str2))) {
            if (Math.abs(j - j2) > 10000) {
                z = false;
            }
            return z;
        }
        return false;
    }

    /* renamed from: o0 */
    public static final TooltipDirection m15212o0(TooltipDirection tooltipDirection, View view) {
        s1.z.c.l.e(tooltipDirection, "$this$resolveDirection");
        s1.z.c.l.e(view, ViewAction.VIEW);
        boolean z = true;
        if (view.getLayoutDirection() != 1) {
            z = false;
        }
        int ordinal = tooltipDirection.ordinal();
        if (ordinal == 0) {
            tooltipDirection = z ? TooltipDirection.RIGHT : TooltipDirection.LEFT;
        } else if (ordinal == 2) {
            tooltipDirection = z ? TooltipDirection.LEFT : TooltipDirection.RIGHT;
        } else if (ordinal == 6) {
            tooltipDirection = z ? TooltipDirection.TOP_LEFT : TooltipDirection.TOP_RIGHT;
        } else if (ordinal == 9) {
            tooltipDirection = z ? TooltipDirection.TOP_FAR_LEFT : TooltipDirection.TOP_FAR_RIGHT;
        } else if (ordinal == 12) {
            tooltipDirection = z ? TooltipDirection.BOTTOM_LEFT : TooltipDirection.BOTTOM_RIGHT;
        } else if (ordinal == 15) {
            tooltipDirection = z ? TooltipDirection.BOTTOM_RIGHT : TooltipDirection.BOTTOM_LEFT;
        }
        return tooltipDirection;
    }

    /* renamed from: p */
    public static final void m15211p(FragmentManager fragmentManager, e eVar) {
        s1.z.c.l.e(fragmentManager, "$this$commitAllowingStateLoss");
        s1.z.c.l.e(eVar, "bottomSheetDialogFragment");
        C26907a c26907a = new C26907a(fragmentManager);
        c26907a.mo1122k(0, eVar, eVar.getClass().getSimpleName(), 1);
        c26907a.mo1126g();
    }

    /* renamed from: p0 */
    public static final <T> a0<T> m15210p0(b<T> bVar) {
        a0<T> a0Var;
        s1.z.c.l.e(bVar, "$this$safeExecute");
        try {
            a0Var = bVar.execute();
        } catch (IOException e) {
            a0Var = null;
        }
        return a0Var;
    }

    /* renamed from: q */
    public static final AbstractC8412c m15209q(Context context) {
        AbstractApplicationC8442a applicationContext = context != null ? context.getApplicationContext() : null;
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        AbstractC8412c m28549N = applicationContext.m28549N();
        s1.z.c.l.d(m28549N, "(this?.applicationContex…licationBase).commonGraph");
        return m28549N;
    }

    /* renamed from: q0 */
    public static /* synthetic */ Object m15208q0(AbstractC8531g abstractC8531g, AbstractC8525d abstractC8525d, boolean z, Long l, Map map, boolean z2, s1.w.d dVar, int i, Object obj) {
        if ((i & 1) != 0) {
            abstractC8525d = AbstractC8525d.C8528c.f26320a;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        Map map2 = (i & 8) != 0 ? null : map;
        if ((i & 16) != 0) {
            z2 = false;
        }
        return abstractC8531g.mo15425b(abstractC8525d, z, null, map2, z2, dVar);
    }

    /* renamed from: r */
    public static final AbstractC8412c m15207r(Fragment fragment) {
        s1.z.c.l.e(fragment, "$this$commonGraph");
        return m15209q(fragment.getContext());
    }

    /* renamed from: r0 */
    public static final List<Long> m15206r0(List<Long> list) {
        s1.z.c.l.e(list, "$this$scaleToVisibleValues");
        ArrayList arrayList = new ArrayList();
        long J0 = s1.u.i.J0(list);
        for (Number number : list) {
            long longValue = number.longValue();
            if ((((float) longValue) * 100.0f) / ((float) J0) < 1.0f) {
                arrayList.add(Long.valueOf(J0 / 100));
            } else {
                arrayList.add(Long.valueOf(longValue));
            }
        }
        return arrayList;
    }

    /* renamed from: s */
    public static final AbstractC13364d m15205s(Context context) {
        AbstractC13364d abstractC13364d;
        s1.z.c.l.e(context, "$this$createCallAlertComponent");
        C13365e c13365e = C13365e.f38802b;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        AbstractC13364d abstractC13364d2 = C13365e.f38801a;
        if (abstractC13364d2 != null) {
            abstractC13364d = abstractC13364d2;
        } else {
            synchronized (c13365e) {
                AbstractC13364d abstractC13364d3 = C13365e.f38801a;
                if (abstractC13364d3 != null) {
                    abstractC13364d = abstractC13364d3;
                } else {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        throw new NullPointerException("null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
                    }
                    AbstractC8412c m28549N = ((AbstractApplicationC8442a) applicationContext).m28549N();
                    s1.z.c.l.d(m28549N, "(applicationContext as A…licationBase).commonGraph");
                    int i = AbstractC12582a.f36717a;
                    Object m3820x0 = C25225a.m3820x0(AbstractApplicationC8442a.m28551L(), AbstractC12582a.class);
                    s1.z.c.l.d(m3820x0, "EntryPointAccessors.from…ardComponent::class.java)");
                    AbstractC12582a abstractC12582a = (AbstractC12582a) m3820x0;
                    AbstractC19251o0 m28541V = ((AbstractApplicationC8442a) applicationContext).m28541V();
                    AbstractC19496e m28552K = ((AbstractApplicationC8442a) applicationContext).m28552K();
                    s1.z.c.l.d(m28552K, "applicationContext.analyticsComponent");
                    Objects.requireNonNull(m28541V);
                    int i2 = AbstractC16246g.f45781c;
                    s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
                    Object m3820x02 = C25225a.m3820x0(context.getApplicationContext(), AbstractC16246g.class);
                    s1.z.c.l.d(m3820x02, "EntryPointAccessors.from…rIdComponent::class.java)");
                    AbstractC16246g abstractC16246g = (AbstractC16246g) m3820x02;
                    AbstractC18888a abstractC18888a = (AbstractC18888a) C25225a.m3812z0(C25225a.m4019F0(applicationContext.getApplicationContext()), AbstractC18888a.class);
                    Objects.requireNonNull(abstractC18888a);
                    C25225a.m3846s(m28549N, AbstractC8412c.class);
                    C25225a.m3846s(m28541V, AbstractC19251o0.class);
                    C25225a.m3846s(m28552K, AbstractC19496e.class);
                    C25225a.m3846s(abstractC12582a, AbstractC12582a.class);
                    C25225a.m3846s(abstractC18888a, AbstractC18888a.class);
                    C25225a.m3846s(abstractC16246g, AbstractC16246g.class);
                    abstractC13364d = new C13377o(m28549N, m28541V, m28552K, abstractC12582a, abstractC18888a, abstractC16246g, null);
                    C13365e.f38801a = abstractC13364d;
                    s1.z.c.l.d(abstractC13364d, "component");
                }
            }
        }
        return abstractC13364d;
    }

    /* renamed from: s0 */
    public static void m15204s0(Context context, Class<? extends AbstractServiceC26431i> cls, int i, long j, Bundle bundle, int i2) {
        ComponentName componentName = new ComponentName(context.getApplicationContext(), cls);
        int i3 = DelayedServiceBroadcastReceiver.f10905a;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(componentName, "componentName");
        Intent putExtra = new Intent(context, DelayedServiceBroadcastReceiver.class).putExtra("component_name", componentName).putExtra("job_id", i);
        s1.z.c.l.d(putExtra, "Intent(context, DelayedS…xtra(EXTRA_JOB_ID, jobId)");
        putExtra.putExtra("payload", bundle);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, i2, putExtra, 201326592);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        if (alarmManager == null) {
            return;
        }
        alarmManager.set(2, elapsedRealtime + j, broadcast);
    }

    /* renamed from: t */
    public static final AbstractC16327b m15203t(Context context) {
        AbstractC16327b abstractC16327b;
        s1.z.c.l.e(context, "$this$createCallRecordingComponent");
        s1.z.c.l.e(context, "$this$createComponent");
        C16329d c16329d = C16329d.f45954b;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        AbstractC16327b abstractC16327b2 = C16329d.f45953a;
        if (abstractC16327b2 != null) {
            abstractC16327b = abstractC16327b2;
        } else {
            synchronized (c16329d) {
                AbstractC16327b abstractC16327b3 = C16329d.f45953a;
                if (abstractC16327b3 != null) {
                    abstractC16327b = abstractC16327b3;
                } else {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        throw new NullPointerException("null cannot be cast to non-null type com.truecaller.callrecording.di.CallRecordingModuleComponentProvider");
                    }
                    abstractC16327b = ((AbstractC16328c) applicationContext).mo17530g();
                    C16329d.f45953a = abstractC16327b;
                }
            }
        }
        return abstractC16327b;
    }

    /* renamed from: t0 */
    public static b<l0> m15202t0(List<NameSuggestionRestModel.NameSuggestion> list) {
        return ((AbstractC8559a) C8367d.m28633a(KnownEndpoints.CONTACT, AbstractC8559a.class)).m28390a(list);
    }

    /* renamed from: u */
    public static final void m15201u(Activity activity) {
        s1.z.c.l.e(activity, "$this$disableTouch");
        activity.getWindow().setFlags(16, 16);
    }

    /* renamed from: u0 */
    public static final void m15200u0(Activity activity) {
        s1.z.c.l.e(activity, "$this$setBizmonTheme");
        C15314a c15314a = C15314a.f43582g;
        AbstractC15317d m18938a = C15314a.m18938a();
        if ((m18938a instanceof AbstractC15317d.C15321d) || (m18938a instanceof AbstractC15317d.C15319b)) {
            activity.setTheme(C3478R.style.ThemeX_Dark_Bizmon);
        } else if (!(m18938a instanceof AbstractC15317d.C15320c) && !(m18938a instanceof AbstractC15317d.C15318a)) {
            activity.setTheme(C3478R.style.ThemeX_Light_Bizmon);
        } else {
            activity.setTheme(C3478R.style.ThemeX_Light_Bizmon);
        }
    }

    /* renamed from: v */
    public static /* synthetic */ void m15199v(AbstractC7748u abstractC7748u, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        abstractC7748u.mo29324B7(z);
    }

    /* renamed from: v0 */
    public static void m15198v0(String str, boolean z) {
        C22128a.m8577r0(f51791a, str, z);
    }

    /* renamed from: w */
    public static final void m15197w(Activity activity) {
        s1.z.c.l.e(activity, "$this$enableTouch");
        activity.getWindow().clearFlags(16);
    }

    /* renamed from: w0 */
    public static final void m15196w0(View view, long j, s1.z.b.l<? super View, s1.s> lVar) {
        s1.z.c.l.e(view, "$this$setDebouncingOnClickListener");
        s1.z.c.l.e(lVar, "doClick");
        view.setOnClickListener(new View$OnClickListenerC8307f(j, lVar));
    }

    /* renamed from: x */
    public static /* synthetic */ Object m15195x(AbstractC7419a abstractC7419a, String str, String str2, boolean z, s1.w.d dVar, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return abstractC7419a.mo29665a(str, null, z, dVar);
    }

    /* renamed from: x0 */
    public static void m15194x0(String str, int i) {
        f51791a.edit().putLong(str, i).apply();
    }

    /* renamed from: y */
    public static final String m15193y(BusinessProfile businessProfile) {
        String str;
        LocationDetail locationDetail;
        s1.z.c.l.e(businessProfile, "$this$formattedAddress");
        List<LocationDetail> locationDetails = businessProfile.getLocationDetails();
        if (locationDetails == null || (locationDetail = (LocationDetail) s1.u.i.D(locationDetails)) == null) {
            str = null;
        } else {
            StringBuilder sb = new StringBuilder();
            String addressLine1 = locationDetail.getAddressLine1();
            if (!(addressLine1 == null || addressLine1.length() == 0)) {
                sb.append(locationDetail.getAddressLine1());
                m15229g(sb, locationDetail.getLandmark(), false, 2);
                m15229g(sb, locationDetail.getAddressLine2(), false, 2);
            } else {
                m15231f(sb, locationDetail.getStreet(), false);
                m15229g(sb, locationDetail.getLandmark(), false, 2);
            }
            m15229g(sb, locationDetail.getCity(), false, 2);
            m15229g(sb, locationDetail.getState(), false, 2);
            m15229g(sb, locationDetail.getZipCode(), false, 2);
            str = sb.toString();
        }
        return str;
    }

    /* renamed from: y0 */
    public static void m15192y0(String str, long j) {
        C22128a.m8589o0(f51791a, str, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f0  */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.truecaller.account.network.SimDto m15191z(com.truecaller.account.network.SimDto.C2774a r9, com.truecaller.multisim.SimInfo r10, p193e.p194a.p372b0.p430q.AbstractC8621z r11, p193e.p194a.p372b0.p394b.p396f.C8375b r12, boolean r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18334g0.m15191z(com.truecaller.account.network.SimDto$a, com.truecaller.multisim.SimInfo, e.a.b0.q.z, e.a.b0.b.f.b, boolean, boolean):com.truecaller.account.network.SimDto");
    }

    /* renamed from: z0 */
    public static /* synthetic */ void m15190z0(AbstractC7748u abstractC7748u, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        abstractC7748u.mo29316p3(z);
    }
}
