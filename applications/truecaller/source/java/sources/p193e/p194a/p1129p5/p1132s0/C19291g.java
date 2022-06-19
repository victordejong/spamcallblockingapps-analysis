package p193e.p194a.p1129p5.p1132s0;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteException;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.VectorDrawable;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.Html;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.CharacterStyle;
import android.text.style.ImageSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.fragment.app.Fragment;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.amazon.device.ads.DtbConstants;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.actions.SearchIntents;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.account.network.TokenErrorResponseDto;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.profile.data.dto.MediaCallerIDs;
import com.truecaller.stats.C4513R;
import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import com.truecaller.videocallerid.p187ui.preview.PreviewActivity;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerContext;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.VoipUserBadge;
import com.truecaller.voip.manager.rtm.RtmChannelAttributeState;
import com.truecaller.voip.p192ui.incoming.audioroutepicker.AudioRouteViewItem;
import com.truecaller.voip.user.PeerHistoryPeerStatus;
import com.truecaller.voip.util.VoipEventType;
import com.truecaller.whoviewedme.ProfileViewSource;
import com.truecaller.wizard.AccessContactsActivity;
import com.truecaller.wizard.C4861R;
import com.truecaller.wizard.WizardVerificationMode;
import com.truecaller.wizard.framework.WizardCompletionType;
import com.truecaller.wizard.verification.analytics.CallAction;
import com.truecaller.yearincalling.model.Detail;
import com.truecaller.yearincalling.model.StatsUiModel;
import e.a.r.z.d0.e;
import e.m.d.y.n;
import e.m.e.k;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1755d.p1756a.C25691a;
import p1727n3.p1807k.p1808a.C26413b;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1079n5.AbstractC18492b;
import p193e.p194a.p1079n5.AbstractC18493c;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1131r0.C19263a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1135v0.AbstractC19331a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1164r.p1170c.DialogInterface$OnClickListenerC19743n;
import p193e.p194a.p1164r.p1176r.C19764a;
import p193e.p194a.p1164r.p1185z.AbstractC19807o;
import p193e.p194a.p1164r.p1185z.AbstractC19810y;
import p193e.p194a.p1164r.p1185z.C19801h;
import p193e.p194a.p1164r.p1185z.DialogInterface$OnClickListenerC19808p;
import p193e.p194a.p1164r.p1185z.DialogInterface$OnDismissListenerC19809q;
import p193e.p194a.p1164r.p1185z.p1186d0.AbstractC19798d;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p628c.AbstractC11302l;
import p193e.p194a.p619d.p628c.p629a.AbstractC11198o;
import p193e.p194a.p619d.p628c.p629a.C11179b;
import p193e.p194a.p619d.p628c.p629a.C11180c;
import p193e.p194a.p619d.p628c.p629a.C11181d;
import p193e.p194a.p619d.p628c.p629a.C11182e;
import p193e.p194a.p619d.p628c.p629a.C11189i;
import p193e.p194a.p619d.p628c.p629a.C11190j;
import p193e.p194a.p619d.p628c.p629a.C11191k;
import p193e.p194a.p619d.p628c.p629a.C11192l;
import p193e.p194a.p619d.p628c.p629a.C11193m;
import p193e.p194a.p619d.p637c0.AbstractC11376b;
import p193e.p194a.p619d.p637c0.AbstractC11387c0;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import p193e.p194a.p619d.p637c0.C11362a;
import p193e.p194a.p619d.p637c0.C11365a0;
import p193e.p194a.p619d.p637c0.C11379b0;
import p193e.p194a.p619d.p637c0.C11391d;
import p193e.p194a.p619d.p637c0.C11406f1;
import p193e.p194a.p619d.p637c0.C11427l;
import p193e.p194a.p619d.p637c0.C11510x;
import p193e.p194a.p619d.p637c0.C11552y;
import p193e.p194a.p619d.p637c0.C11568z;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p643d.p650c.C11694a;
import p193e.p194a.p619d.p651p.AbstractC11744a;
import p193e.p194a.p619d.p655t.AbstractC11796a;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p663x.p665r.AbstractC12284n;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import p193e.p194a.p619d.p663x.p665r.C12282l;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p947k.p969c.AbstractC15964c2;
import p193e.p194a.p947k.p969c.AbstractC15980e1;
import p193e.p194a.p947k.p969c.AbstractC16015i1;
import p193e.p194a.p947k.p969c.C15993h1;
import p193e.p194a.p947k.p973n.C16152a;
import q3.a.i0;
import q3.a.j0;
import q3.a.w2.d0;
import q3.a.w2.h;
import q3.a.w2.q;
import q3.a.w2.z;
import q3.a.x2.d1;
import q3.a.x2.f;
import q3.a.x2.i1;
import s1.f0.r;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import u3.l0;
import x3.a0;
/* renamed from: e.a.p5.s0.g */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/g.class */
public final class C19291g {
    /* renamed from: A */
    public static final int m13645A(Context context, int i) {
        l.e(context, "$this$dpToPx");
        return m13494z(context, i);
    }

    /* renamed from: A1 */
    public static void m13643A1(AbstractC15980e1 abstractC15980e1, Context context, PreviewModes previewModes, OnboardingData onboardingData, String str, OutgoingVideoDetails outgoingVideoDetails, int i, Object obj) {
        if ((i & 8) != 0) {
            str = null;
        }
        if ((i & 16) != 0) {
            outgoingVideoDetails = null;
        }
        Objects.requireNonNull((C15993h1) abstractC15980e1);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(previewModes, "previewModes");
        PreviewActivity.C4734b c4734b = PreviewActivity.f16024o;
        String name = previewModes.name();
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(name, "screenModes");
        context.startActivity(c4734b.m34456a(context, name, onboardingData, str, outgoingVideoDetails));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [e.a.d.x.r.n] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* renamed from: B0 */
    public static /* synthetic */ Object m13641B0(AbstractC12284n abstractC12284n, long j, d dVar, int i, Object obj) {
        ?? r6 = j;
        if ((i & 1) != 0) {
            r6 = TimeUnit.MINUTES.toMillis(1L);
        }
        return abstractC12284n.mo23325b(r6, dVar);
    }

    /* renamed from: B1 */
    public static final g m13640B1(Context context, s1.z.b.l<? super Boolean, s> lVar) {
        l.e(context, "$this$showRegionCDialog");
        l.e(lVar, "isRegionCListener");
        g m3652q = m13533m(context, lVar).m3652q();
        l.d(m3652q, "buildRegionCDialog(isRegionCListener).show()");
        return m3652q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: C */
    public static final <K, V> Map<K, V> m13639C(Map<K, ? extends V> map) {
        l.e(map, "$this$filterNullValues");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            if (entry.getValue() != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(C25225a.m3942Y1(linkedHashMap.size()));
        Iterator<T> it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            linkedHashMap2.put(entry2.getKey(), entry2.getValue());
        }
        return linkedHashMap2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [e.a.d.x.r.n] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* renamed from: C0 */
    public static /* synthetic */ Object m13638C0(AbstractC12284n abstractC12284n, long j, d dVar, int i, Object obj) {
        ?? r6 = j;
        if ((i & 1) != 0) {
            r6 = TimeUnit.MINUTES.toMillis(1L);
        }
        return abstractC12284n.mo23321f(r6, dVar);
    }

    /* renamed from: C1 */
    public static final void m13637C1(TextView textView, String str) {
        l.e(textView, "$this$showTextOrHide");
        int i = 0;
        if (str == null || str.length() == 0) {
            i = 8;
        }
        textView.setVisibility(i);
        textView.setText(str);
    }

    /* renamed from: D */
    public static final Spanned m13636D(String str) {
        Spanned m43246d0 = MediaSessionCompat.m43246d0(str, 0);
        l.d(m43246d0, "HtmlCompat.fromHtml(this…at.FROM_HTML_MODE_LEGACY)");
        return m43246d0;
    }

    /* renamed from: D0 */
    public static final Long m13635D0(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        Long l;
        l.e(sQLiteDatabase, "$this$longForQuery");
        l.e(str, SearchIntents.EXTRA_QUERY);
        try {
            l = Long.valueOf(DatabaseUtils.longForQuery(sQLiteDatabase, str, strArr));
        } catch (SQLiteDoneException e) {
            l = null;
        }
        return l;
    }

    /* renamed from: D1 */
    public static final void m13634D1(AbstractC19807o abstractC19807o, Context context, boolean z, a<s> aVar, a<s> aVar2) {
        String str;
        l.e(abstractC19807o, "$this$showVerificationMessageDialog");
        l.e(context, AnalyticsConstants.CONTEXT);
        if (abstractC19807o instanceof AbstractC19807o.j) {
            Resources resources = context.getResources();
            int i = C4861R.plurals.VerificationError_limitExceededHours;
            int i2 = ((AbstractC19807o.j) abstractC19807o).e;
            str = resources.getQuantityString(i, i2, Integer.valueOf(i2));
            l.d(str, "context.resources.getQua…eededHours, hours, hours)");
        } else {
            str = context.getString(abstractC19807o.f54856b);
            l.d(str, "context.getString(res)");
        }
        g$a g_a = new g$a(context);
        g_a.f70854a.f156f = str;
        g_a.m3660i(abstractC19807o.f54858d, null);
        if (z) {
            g_a.m3662g(C4861R.string.wizard_verification_action_contact_support, new DialogInterface$OnClickListenerC19808p(abstractC19807o, str, z, aVar));
        }
        g_a.m3652q().setOnDismissListener(new DialogInterface$OnDismissListenerC19809q(aVar2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [e.a.r5.i0] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: E */
    public static /* synthetic */ Object m13633E(AbstractC19954i0 abstractC19954i0, ProfileViewSource profileViewSource, long j, d dVar, int i, Object obj) {
        ?? r8 = j;
        if ((i & 2) != 0) {
            r8 = 0;
        }
        return abstractC19954i0.mo11759d(null, r8, dVar);
    }

    /* renamed from: E0 */
    public static final long m13632E0(Cursor cursor, String str) {
        l.e(cursor, "$this$longValue");
        l.e(str, "columnName");
        return cursor.getLong(cursor.getColumnIndex(str));
    }

    /* renamed from: E1 */
    public static final StatsUiModel m13631E1(AbstractC19223c0 abstractC19223c0, boolean z) {
        l.e(abstractC19223c0, "resourceProvider");
        String mo13768b = abstractC19223c0.mo13768b(C4513R.string.year_in_tc_intro_title, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…g.year_in_tc_intro_title)");
        Locale locale = Locale.getDefault();
        l.d(locale, "Locale.getDefault()");
        String upperCase = mo13768b.toUpperCase(locale);
        l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        String mo13768b2 = abstractC19223c0.mo13768b(C4513R.string.year_in_tc_intro_description, new Object[0]);
        l.d(mo13768b2, "resourceProvider.getStri…_in_tc_intro_description)");
        Spanned m13636D = m13636D(mo13768b2);
        int mo13769a = abstractC19223c0.mo13769a(C4513R.color.stats_intro_title_and_description_color);
        String mo13768b3 = abstractC19223c0.mo13768b(C4513R.string.year_in_tc_intro_details, new Object[0]);
        l.d(mo13768b3, "resourceProvider.getStri…year_in_tc_intro_details)");
        return new StatsUiModel(String.valueOf(2021), upperCase, Integer.valueOf(mo13769a), m13636D, C25225a.m3962T1(new Detail(null, m13636D(mo13768b3), Integer.valueOf(C4513R.dimen.intro_page_text_size), Integer.valueOf(abstractC19223c0.mo13769a(C4513R.color.stats_intro_details_text_color)))), null, Integer.valueOf(C4513R.C4514drawable.intro_stats_background), Integer.valueOf(C4513R.color.stats_intro_background_color), z, null, null, 1568);
    }

    /* renamed from: F */
    public static final AudioManager m13630F(Context context) {
        return (AudioManager) C22128a.m8734A1(context, "$this$audioManager", "audio", "null cannot be cast to non-null type android.media.AudioManager");
    }

    /* renamed from: F0 */
    public static final long m13629F0(Cursor cursor, String str) {
        l.e(cursor, "$this$longValueOrThrow");
        l.e(str, "columnName");
        return cursor.getLong(cursor.getColumnIndexOrThrow(str));
    }

    /* renamed from: F1 */
    public static final String m13628F1(Cursor cursor, String str) {
        l.e(cursor, "$this$stringValue");
        l.e(str, "columnName");
        return cursor.getString(cursor.getColumnIndex(str));
    }

    /* renamed from: G */
    public static final Set<String> m13627G(C11694a c11694a) {
        Set<String> set;
        l.e(c11694a, "$this$getAvailabilityIdentifierSet");
        if (c11694a.f34317f) {
            set = i.y0(c11694a.f34313b.m35479e());
        } else {
            List<Number> m35557M = c11694a.f34312a.m35557M();
            ArrayList m8670S = C22128a.m8670S(m35557M, "contact.numbers");
            for (Number number : m35557M) {
                l.d(number, "it");
                String m35479e = number.m35479e();
                if (m35479e != null) {
                    m8670S.add(m35479e);
                }
            }
            set = i.d1(m8670S);
        }
        return set;
    }

    /* renamed from: G0 */
    public static final AbstractC11198o m13626G0(VoipUser voipUser) {
        l.e(voipUser, "$this$mapUserBadgeToTheme");
        VoipUserBadge voipUserBadge = voipUser.f16289g;
        return voipUserBadge.f16293a ? new C11191k(voipUser.f16288f) : voipUser.f16287e ? C11179b.f33058a : voipUserBadge.f16297e ? C11180c.f33059a : voipUserBadge.f16295c ? C11182e.f33061a : voipUserBadge.f16296d ? C11190j.f33079a : voipUserBadge.f16294b ? C11189i.f33078a : C11181d.f33060a;
    }

    /* renamed from: G1 */
    public static final String m13625G1(Cursor cursor, String str) {
        l.e(cursor, "$this$stringValueOrThrow");
        l.e(str, "columnName");
        return cursor.getString(cursor.getColumnIndexOrThrow(str));
    }

    /* renamed from: H */
    public static final AvatarXConfig m13624H(VoipUser voipUser) {
        Object obj;
        String str;
        l.e(voipUser, "$this$getAvatarConfig");
        String str2 = voipUser.f16286d;
        Uri parse = str2 == null ? null : Uri.parse(str2);
        String str3 = voipUser.f16284b;
        String str4 = voipUser.f16285c;
        ArrayList arrayList = new ArrayList(str4.length());
        for (int i = 0; i < str4.length(); i++) {
            arrayList.add(String.valueOf(str4.charAt(i)));
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (TextUtils.isGraphic((String) obj)) {
                break;
            }
        }
        String str5 = (String) obj;
        if (str5 != null) {
            Locale locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
            str = str5.toUpperCase(locale);
            l.d(str, "(this as java.lang.String).toUpperCase(locale)");
        } else {
            str = null;
        }
        VoipUserBadge voipUserBadge = voipUser.f16289g;
        return new AvatarXConfig(parse, str3, null, str, voipUserBadge.f16293a || voipUser.f16287e, false, false, false, voipUserBadge.f16294b, voipUserBadge.f16295c, false, voipUserBadge.f16297e, false, false, null, false, 62692);
    }

    /* renamed from: H0 */
    public static final AbstractC11198o m13623H0(C11161a c11161a) {
        l.e(c11161a, "$this$mapUserBadgeToTheme");
        VoipUserBadge voipUserBadge = c11161a.f32998f;
        boolean z = voipUserBadge.f16293a;
        return (!z || !voipUserBadge.f16298f) ? z ? new C11191k(c11161a.f33000h) : c11161a.f32999g ? C11179b.f33058a : voipUserBadge.f16297e ? C11180c.f33059a : voipUserBadge.f16295c ? C11182e.f33061a : voipUserBadge.f16296d ? C11190j.f33079a : voipUserBadge.f16298f ? C11193m.f33082a : voipUserBadge.f16294b ? C11189i.f33078a : C11181d.f33060a : new C11192l(c11161a.f33000h);
    }

    /* renamed from: H1 */
    public static final void m13622H1(TextView textView, p<? super CharacterStyle, ? super Integer, ? extends CharacterStyle> pVar) {
        l.e(textView, "$this$swapSpans");
        l.e(pVar, "spanProvider");
        SpannableString spannableString = new SpannableString(textView.getText());
        int i = 0;
        CharacterStyle[] characterStyleArr = (CharacterStyle[]) spannableString.getSpans(0, spannableString.length(), CharacterStyle.class);
        if (characterStyleArr != null) {
            int length = characterStyleArr.length;
            int i2 = 0;
            while (i < length) {
                CharacterStyle characterStyle = characterStyleArr[i];
                l.d(characterStyle, "span");
                CharacterStyle characterStyle2 = (CharacterStyle) pVar.k(characterStyle, Integer.valueOf(i2));
                if (characterStyle2 != null) {
                    int spanStart = spannableString.getSpanStart(characterStyle);
                    int spanEnd = spannableString.getSpanEnd(characterStyle);
                    int spanFlags = spannableString.getSpanFlags(characterStyle);
                    spannableString.removeSpan(characterStyle);
                    spannableString.setSpan(characterStyle2, spanStart, spanEnd, spanFlags);
                }
                i++;
                i2++;
            }
        }
        textView.setText(spannableString);
    }

    /* renamed from: I */
    public static final AvatarXConfig m13621I(C11694a c11694a) {
        String str;
        l.e(c11694a, "$this$getAvatarConfig");
        if (c11694a.f34317f) {
            str = c11694a.f34313b.m35479e();
        } else {
            Number m35493v = c11694a.f34312a.m35493v();
            str = m35493v != null ? m35493v.m35479e() : null;
        }
        return n.s(c11694a.f34312a, false, false, str, 1);
    }

    /* renamed from: I0 */
    public static final String m13620I0(String str) {
        l.e(str, "$this$normalizeAsRtmChannelKey");
        if (str.length() <= 32) {
            return str;
        }
        String substring = str.substring(0, 32);
        l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    /* renamed from: I1 */
    public static final AbstractC11514a m13619I1(AudioRouteViewItem audioRouteViewItem) {
        AbstractC11514a.C11516b c11516b;
        l.e(audioRouteViewItem, "$this$toAudioRoute");
        if (audioRouteViewItem instanceof AudioRouteViewItem.Phone) {
            c11516b = AbstractC11514a.C11516b.f33808a;
        } else if (audioRouteViewItem instanceof AudioRouteViewItem.Speaker) {
            c11516b = AbstractC11514a.C11517c.f33809a;
        } else if (!(audioRouteViewItem instanceof AudioRouteViewItem.Bluetooth)) {
            throw new s1.i();
        } else {
            AudioRouteViewItem.Bluetooth bluetooth = (AudioRouteViewItem.Bluetooth) audioRouteViewItem;
            c11516b = new AbstractC11514a.C11515a(new C19263a(bluetooth.f16462c, bluetooth.f16463d));
        }
        return c11516b;
    }

    /* renamed from: J */
    public static final AvatarXConfig m13618J(C11161a c11161a) {
        l.e(c11161a, "$this$getAvatarXConfig");
        String str = c11161a.f32996d;
        String str2 = c11161a.f32997e;
        Uri parse = str2 == null ? null : Uri.parse(str2);
        String m13671h = C19286f.m13671h(c11161a.f32995c);
        VoipUserBadge voipUserBadge = c11161a.f32998f;
        return new AvatarXConfig(parse, str, null, m13671h, voipUserBadge.f16293a || c11161a.f32999g, false, false, false, voipUserBadge.f16294b, voipUserBadge.f16295c, voipUserBadge.f16298f, voipUserBadge.f16297e, voipUserBadge.f16296d, false, null, false, 57572);
    }

    /* renamed from: J0 */
    public static final f<AbstractC11376b> m13617J0(AbstractC11592d abstractC11592d, AbstractC19223c0 abstractC19223c0, int i) {
        l.e(abstractC11592d, "$this$notificationUserInfo");
        l.e(abstractC19223c0, "resourceProvider");
        return m13614K0(new C11362a(abstractC11592d.mo24405a()), abstractC19223c0, i);
    }

    /* renamed from: J1 */
    public static final Bundle m13616J1(Map<String, String> map) {
        l.e(map, "$this$toBundle");
        Bundle bundle = new Bundle();
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        return bundle;
    }

    /* renamed from: K */
    public static /* synthetic */ boolean m13615K(AbstractC16015i1 abstractC16015i1, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return abstractC16015i1.getBoolean(str, z);
    }

    /* renamed from: K0 */
    public static final f<AbstractC11376b> m13614K0(f<? extends Set<? extends i1<? extends AbstractC11416j>>> fVar, AbstractC19223c0 abstractC19223c0, int i) {
        l.e(fVar, "$this$notificationUserInfo");
        l.e(abstractC19223c0, "resourceProvider");
        return new C11379b0(s1.a.a.a.v0.f.d.F0(new C11510x(s1.a.a.a.v0.f.d.P3(new C11365a0(new C11568z(fVar)), new C11552y(null)))), fVar, i, abstractC19223c0);
    }

    /* renamed from: K1 */
    public static final int m13613K1(AbstractC11514a abstractC11514a) {
        int i;
        l.e(abstractC11514a, "$this$toIcon");
        if ((abstractC11514a instanceof AbstractC11514a.C11516b) || (abstractC11514a instanceof AbstractC11514a.C11518d)) {
            i = C4781R.C4782drawable.tcx_selector_voip_toggle_phone;
        } else if (abstractC11514a instanceof AbstractC11514a.C11517c) {
            i = C4781R.C4782drawable.tcx_selector_voip_toggle_speaker;
        } else if (!(abstractC11514a instanceof AbstractC11514a.C11515a)) {
            throw new s1.i();
        } else {
            i = C4781R.C4782drawable.tcx_selector_voip_toggle_bluetooth;
        }
        return i;
    }

    /* renamed from: L */
    public static int m13612L(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId == 0 ? typedValue.data : context.getResources().getColor(typedValue.resourceId);
    }

    /* renamed from: L1 */
    public static final List<Long> m13610L1(Long l) {
        return l != null ? C25225a.m3962T1(Long.valueOf(l.longValue())) : null;
    }

    /* renamed from: M */
    public static ColorStateList m13609M(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        int i2 = typedValue.resourceId;
        if (i2 == 0) {
            return ColorStateList.valueOf(typedValue.data);
        }
        ThreadLocal<TypedValue> threadLocal = C25440a.f71017a;
        return context.getColorStateList(i2);
    }

    /* renamed from: M0 */
    public static void m13608M0(String[] strArr, int[] iArr) {
        ArrayList<CharSequence> arrayList = new ArrayList<>(iArr.length);
        for (int i = 0; i < strArr.length; i++) {
            if (!C18334g0.m15277B(strArr[i], false) && iArr[i] == 0) {
                arrayList.add(strArr[i]);
            }
            C18334g0.m15198v0(strArr[i], iArr[i] != 0);
        }
        if (!arrayList.isEmpty()) {
            Intent intent = new Intent("com.truecaller.ACTION_PERMISSIONS_CHANGED");
            intent.putCharSequenceArrayListExtra("granted", arrayList);
            C27062a.m968b(AbstractApplicationC8442a.m28551L()).m966d(intent);
        }
    }

    /* renamed from: M1 */
    public static final int m13607M1(AbstractC11840h.AbstractC11842b abstractC11842b) {
        l.e(abstractC11842b, "$this$toStatusStringRes");
        return (!l.a(abstractC11842b, AbstractC11840h.AbstractC11842b.C11845c.f34814b) && !l.a(abstractC11842b, AbstractC11840h.AbstractC11842b.C11844b.f34813b) && !l.a(abstractC11842b, AbstractC11840h.AbstractC11842b.C11847e.f34816b)) ? C4781R.string.voip_contact_tile_status_ended : C4781R.string.voip_status_call_failed;
    }

    /* renamed from: N */
    public static final ConnectivityManager m13606N(Context context) {
        return (ConnectivityManager) C22128a.m8734A1(context, "$this$connectivityManager", "connectivity", "null cannot be cast to non-null type android.net.ConnectivityManager");
    }

    /* renamed from: N0 */
    public static void m13605N0(AbstractC19798d abstractC19798d, CallAction callAction, String str, String str2, String str3, boolean z, Long l, Boolean bool, int i, Object obj) {
        if ((i & 32) != 0) {
            l = null;
        }
        if ((i & 64) != 0) {
            bool = null;
        }
        e eVar = (e) abstractC19798d;
        Objects.requireNonNull(eVar);
        l.e(callAction, "action");
        l.e(str, "enteredPhoneNumber");
        l.e(str2, "enteredCountryCode");
        l.e(str3, "callPhoneNumber");
        AbstractC19462a abstractC19462a = eVar.a;
        WizardVerificationMode wizardVerificationMode = eVar.b;
        C20592g c20592g = eVar.c;
        abstractC19462a.mo13274b(new e.a.r.z.d0.f(callAction, str, str2, str3, z, l, wizardVerificationMode, bool, c20592g.f57979m4.m10941a(c20592g, C20592g.f57695p6[276]).isEnabled()));
    }

    /* renamed from: N1 */
    public static final Map<String, String> m13604N1(Bundle bundle) {
        l.e(bundle, "$this$toStringMap");
        Set<String> keySet = bundle.keySet();
        l.d(keySet, "keySet()");
        int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(keySet, 10));
        int i = m3942Y1;
        if (m3942Y1 < 16) {
            i = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (Object obj : keySet) {
            linkedHashMap.put(obj, bundle.getString((String) obj));
        }
        return linkedHashMap;
    }

    /* renamed from: O */
    public static final int m13603O(int i) {
        Resources system = Resources.getSystem();
        l.d(system, "Resources.getSystem()");
        return (int) (i * system.getDisplayMetrics().density);
    }

    /* renamed from: O0 */
    public static final void m13602O0(Context context) {
        l.e(context, "$this$openAppSettings");
        try {
            Intent data = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", context.getPackageName(), null));
            l.d(data, "Intent(Settings.ACTION_A…age\", packageName, null))");
            context.startActivity(data);
        } catch (ActivityNotFoundException e) {
        }
    }

    /* renamed from: O1 */
    public static final C19764a m13601O1(a0<TokenResponseDto> a0Var, k kVar) {
        Reader j;
        l.e(kVar, "gson");
        TokenResponseDto tokenResponseDto = a0Var != null ? (TokenResponseDto) a0Var.b : null;
        TokenErrorResponseDto tokenErrorResponseDto = null;
        if (a0Var != null) {
            l0 l0Var = a0Var.c;
            tokenErrorResponseDto = null;
            if (l0Var != null) {
                try {
                    tokenErrorResponseDto = (TokenErrorResponseDto) kVar.d(l0Var.j(), TokenErrorResponseDto.class);
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
        }
        return new C19764a(tokenResponseDto, tokenErrorResponseDto);
    }

    /* renamed from: P */
    public static Drawable m13600P(Context context, int i) {
        int i2;
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            int i3 = typedValue.resourceId;
            return (i3 != 0 || (i2 = typedValue.type) < 28 || i2 > 31) ? C25440a.m3540a(context, i3) : new ColorDrawable(typedValue.data);
        }
        return null;
    }

    /* renamed from: P0 */
    public static final <T> void m13599P0(i0 i0Var, h<T> hVar, p<? super T, ? super d<? super s>, ? extends Object> pVar) {
        l.e(i0Var, "$this$openSubscription");
        l.e(hVar, AppsFlyerProperties.CHANNEL);
        l.e(pVar, "block");
        z p2 = hVar.p2();
        s1.a.a.a.v0.f.d.w2(i0Var, (s1.w.f) null, (j0) null, new C19299k(p2, pVar, null), 3, (Object) null).n0(false, true, new C19300l(p2));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0087  */
    /* renamed from: P1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m13598P1(p193e.p194a.p619d.p627b0.C11166c r15, p193e.p194a.p619d.p637c0.AbstractC11421j1 r16, s1.w.d<? super p193e.p194a.p619d.p637c0.C11454p0> r17) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19291g.m13598P1(e.a.d.b0.c, e.a.d.c0.j1, s1.w.d):java.lang.Object");
    }

    /* renamed from: Q */
    public static final Drawable m13597Q(Resources resources, int i, Resources.Theme theme) {
        l.e(resources, "$this$getDrawableCompat");
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        Drawable drawable = resources.getDrawable(i, theme);
        if (drawable != null) {
            return drawable;
        }
        throw new Resources.NotFoundException(i + " resource not found!");
    }

    /* renamed from: Q0 */
    public static final void m13596Q0(String str, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (!(str == null || str.length() == 0)) {
            if (!r.w(str, DtbConstants.HTTP, true) && !r.w(str, DtbConstants.HTTPS, true)) {
                str = C22128a.m8543z2(DtbConstants.HTTP, str);
            }
            Uri parse = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            Object obj = C26467a.f74235a;
            int m1787a = C26467a.C26471d.m1787a(context, 17170443);
            if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
                Bundle bundle = new Bundle();
                bundle.putBinder("android.support.customtabs.extra.SESSION", null);
                intent.putExtras(bundle);
            }
            intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
            intent.putExtras(new C25691a(Integer.valueOf(m1787a | (-16777216)), null, null, null).m3053a());
            intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
            intent.putExtra(DeepLink.REFERRER_URI, Uri.parse("android-app://" + context.getPackageName()));
            intent.addFlags(268435456);
            try {
                intent.setData(parse);
                C26467a.C26468a.m1794b(context, intent, null);
            } catch (ActivityNotFoundException e) {
            }
        }
    }

    /* renamed from: Q1 */
    public static final VoipUser m13595Q1(C11406f1 c11406f1, String str) {
        l.e(c11406f1, "$this$toVoipUser");
        l.e(str, "voipId");
        return new VoipUser(str, c11406f1.f33503e, c11406f1.f33501c, c11406f1.f33502d, c11406f1.f33504f, c11406f1.f33505g, c11406f1.f33508j, null, c11406f1.f33506h, c11406f1.f33507i);
    }

    /* renamed from: R0 */
    public static final <T> T m13593R0(h<T> hVar) {
        l.e(hVar, "$this$pollAndCancel");
        z p2 = hVar.p2();
        try {
            return (T) p2.poll();
        } finally {
            s1.a.a.a.v0.f.d.U(p2, (CancellationException) null, 1, (Object) null);
        }
    }

    /* renamed from: R1 */
    public static final Toast m13592R1(Context context, int i, CharSequence charSequence, int i2) {
        l.e(context, "$this$toast");
        if (charSequence == null) {
            charSequence = context.getString(i);
            l.d(charSequence, "this.getString(stringRes)");
        }
        Toast makeText = Toast.makeText(context, charSequence, i2);
        makeText.show();
        l.d(makeText, "Toast.makeText(this, mes…        .apply { show() }");
        return makeText;
    }

    /* renamed from: S */
    public static /* synthetic */ Object m13591S(AbstractC15964c2 abstractC15964c2, Contact contact, String str, PlayingBehaviour playingBehaviour, VideoPlayerContext videoPlayerContext, boolean z, d dVar, int i, Object obj) {
        if ((i & 16) != 0) {
            z = false;
        }
        return abstractC15964c2.mo18078i(contact, str, playingBehaviour, videoPlayerContext, z, dVar);
    }

    /* renamed from: S0 */
    public static AbstractC11744a m13590S0() {
        AbstractC11744a abstractC11744a = (AbstractC11744a) C8367d.m28633a(KnownEndpoints.VOIP, AbstractC11744a.class);
        Objects.requireNonNull(abstractC11744a, "Cannot return null from a non-@Nullable @Provides method");
        return abstractC11744a;
    }

    /* renamed from: S1 */
    public static /* synthetic */ Toast m13589S1(Context context, int i, CharSequence charSequence, int i2, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            charSequence = null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return m13592R1(context, i, charSequence, i2);
    }

    /* renamed from: T */
    public static final PeerHistoryPeerStatus m13588T(int i) {
        PeerHistoryPeerStatus peerHistoryPeerStatus = PeerHistoryPeerStatus.STATUS_NO_ANSWER;
        if (i != peerHistoryPeerStatus.getValue()) {
            peerHistoryPeerStatus = PeerHistoryPeerStatus.STATUS_ACCEPTED;
            if (i != peerHistoryPeerStatus.getValue()) {
                peerHistoryPeerStatus = PeerHistoryPeerStatus.STATUS_ERROR;
            }
        }
        return peerHistoryPeerStatus;
    }

    /* renamed from: T0 */
    public static final Integer m13587T0(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) {
        l.e(sQLiteDatabase, "$this$queryInt");
        l.e(str, "table");
        l.e(str2, "column");
        Cursor query = sQLiteDatabase.query(str, new String[]{str2}, str3, strArr, null, null, null);
        Integer num = null;
        if (query != null) {
            try {
                num = query.moveToFirst() ? Integer.valueOf(query.getInt(0)) : null;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [e.a.d.c.l] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: T1 */
    public static /* synthetic */ void m13586T1(AbstractC11302l abstractC11302l, boolean z, long j, int i, Object obj) {
        ?? r7 = j;
        if ((i & 2) != 0) {
            r7 = 0;
        }
        abstractC11302l.mo24869u3(z, r7);
    }

    /* renamed from: U0 */
    public static final Long m13584U0(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) {
        l.e(sQLiteDatabase, "$this$queryLong");
        l.e(str, "table");
        l.e(str2, "column");
        Cursor query = sQLiteDatabase.query(str, new String[]{str2}, str3, strArr, null, null, null);
        Long l = null;
        if (query != null) {
            try {
                l = query.moveToFirst() ? Long.valueOf(query.getLong(0)) : null;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return l;
    }

    /* renamed from: U1 */
    public static void m13583U1(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, int i) {
        if ((i & 1) != 0) {
            drawable = textView.getCompoundDrawablesRelative()[0];
        }
        Drawable drawable5 = null;
        Drawable drawable6 = (i & 2) != 0 ? textView.getCompoundDrawablesRelative()[1] : null;
        if ((i & 4) != 0) {
            drawable3 = textView.getCompoundDrawablesRelative()[2];
        }
        if ((i & 8) != 0) {
            drawable5 = textView.getCompoundDrawablesRelative()[3];
        }
        l.e(textView, "$this$updateCompoundDrawablesRelativeWithIntrinsicBounds");
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable6, drawable3, drawable5);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|27|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|26|24|25))|7|8|27|(0)(0)|26|24|25) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0080, code lost:
        r4 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0062  */
    /* renamed from: V0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m13581V0(p193e.p194a.p619d.p651p.AbstractC11744a r4, s1.z.b.p<? super p193e.p194a.p619d.p651p.AbstractC11744a, ? super s1.w.d<? super T>, ? extends java.lang.Object> r5, s1.w.d<? super T> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.C11396e1
            if (r0 == 0) goto L2a
            r0 = r6
            e.a.d.c0.e1 r0 = (p193e.p194a.p619d.p637c0.C11396e1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f33468e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f33468e = r1
            r0 = r7
            r6 = r0
            goto L33
        L2a:
            e.a.d.c0.e1 r0 = new e.a.d.c0.e1
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r6 = r0
        L33:
            r0 = r6
            java.lang.Object r0 = r0.f33467d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f33468e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L62
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L57
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.io.IOException -> L7f
            r0 = r7
            r4 = r0
            goto L82
        L57:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L62:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            r1 = 1
            r0.f33468e = r1     // Catch: java.io.IOException -> L7f
            r0 = r5
            r1 = r4
            r2 = r6
            java.lang.Object r0 = r0.k(r1, r2)     // Catch: java.io.IOException -> L7f
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = r9
            if (r0 != r1) goto L82
            r0 = r9
            return r0
        L7f:
            r4 = move-exception
            r0 = 0
            r4 = r0
        L82:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19291g.m13581V0(e.a.d.p.a, s1.z.b.p, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0084  */
    /* renamed from: V1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ java.lang.Object m13580V1(p193e.p194a.p619d.p637c0.C11464r<java.util.Map<java.lang.Integer, p193e.p194a.p619d.p657v.p658k.AbstractC12015z>> r4, java.util.Map<java.lang.Integer, ? extends p193e.p194a.p619d.p657v.p658k.AbstractC12015z> r5, s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19291g.m13580V1(e.a.d.c0.r, java.util.Map, s1.w.d):java.lang.Object");
    }

    /* renamed from: W */
    public static final Long m13579W(C12262i c12262i, long j, Set<C12282l> set) {
        l.e(c12262i, "$this$getInvitationTimeout");
        l.e(set, "rtmMembers");
        String str = c12262i.f35823b;
        return l.a(str, RtmChannelAttributeState.Invited.getValue()) ? m13524p(c12262i, j, C11391d.f33456a) : l.a(str, RtmChannelAttributeState.Ringing.getValue()) ? m13521q(c12262i, j, set, C11391d.f33457b) : l.a(str, RtmChannelAttributeState.Joined.getValue()) ? m13521q(c12262i, j, set, C11391d.f33458c) : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: W0 */
    public static final <T> T m13578W0(AbstractC11796a abstractC11796a, s1.z.b.l<? super AbstractC11796a, ? extends T> lVar) {
        T t;
        l.e(abstractC11796a, "$this$querySafe");
        l.e(lVar, "block");
        try {
            t = lVar.d(abstractC11796a);
        } catch (SQLiteException e) {
            t = null;
        }
        return t;
    }

    /* renamed from: W1 */
    public static final int m13577W1(VoipEventType voipEventType) {
        int ordinal = voipEventType.ordinal();
        int i = 2;
        if (ordinal == 0) {
            i = 1;
        } else if (ordinal != 1) {
            if (ordinal != 2 && ordinal != 3) {
                throw new s1.i();
            }
            i = 3;
        }
        return i;
    }

    /* renamed from: X */
    public static /* synthetic */ Object m13576X(AbstractC16111h abstractC16111h, boolean z, d dVar, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return abstractC16111h.mo17838h(z, dVar);
    }

    /* renamed from: X0 */
    public static final String m13575X0(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) {
        l.e(sQLiteDatabase, "$this$queryString");
        l.e(str, "table");
        l.e(str2, "column");
        Cursor query = sQLiteDatabase.query(str, new String[]{str2}, str3, strArr, null, null, null);
        String str4 = null;
        if (query != null) {
            try {
                str4 = query.moveToFirst() ? query.getString(0) : null;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return str4;
    }

    /* renamed from: X1 */
    public static final long m13574X1(InputStream inputStream, OutputStream outputStream) throws IOException {
        l.e(inputStream, "$this$writeFully");
        l.e(outputStream, "outputStream");
        return C25225a.m3960U(inputStream, outputStream, 0, 2);
    }

    /* renamed from: Y */
    public static final NotificationManager m13573Y(Context context) {
        return (NotificationManager) C22128a.m8734A1(context, "$this$notificationManager", RemoteMessageConst.NOTIFICATION, "null cannot be cast to non-null type android.app.NotificationManager");
    }

    /* renamed from: Y0 */
    public static final void m13572Y0(Context context, BroadcastReceiver broadcastReceiver, String... strArr) {
        l.e(context, "$this$registerBroadcastReceiver");
        l.e(broadcastReceiver, "broadcastReceiver");
        l.e(strArr, "actions");
        C27062a m968b = C27062a.m968b(context);
        l.d(m968b, "LocalBroadcastManager.getInstance(this)");
        IntentFilter intentFilter = new IntentFilter();
        for (String str : strArr) {
            intentFilter.addAction(str);
        }
        m968b.m967c(broadcastReceiver, intentFilter);
    }

    /* renamed from: Z */
    public static final <K, V> V m13571Z(Map<K, V> map, K k, V v) {
        l.e(map, "$this$getOrDefaultValue");
        V v2 = map.get(k);
        if (v2 != null) {
            v = v2;
        }
        return v;
    }

    /* renamed from: Z0 */
    public static void m13570Z0(Context context) {
        try {
            context.startActivity(m13506v(context));
        } catch (ActivityNotFoundException e) {
            C10480a.m26057J1(e, "App settings page couldn't be opened");
        }
    }

    /* renamed from: a */
    public static final C11161a m13569a() {
        return new C11161a(1234L, "1234", "Unknown", "123", null, new VoipUserBadge(false, false, false, false, false, false, 63), false, null, false, false);
    }

    /* renamed from: a0 */
    public static Drawable m13568a0(Context context, String str) {
        Drawable loadIcon;
        try {
            PackageManager packageManager = context.getPackageManager();
            PermissionInfo permissionInfo = packageManager.getPermissionInfo(str, 0);
            if (!TextUtils.isEmpty(permissionInfo.group) && (loadIcon = packageManager.getPermissionGroupInfo(permissionInfo.group, 0).loadIcon(packageManager)) != null) {
                return loadIcon;
            }
            Drawable loadIcon2 = permissionInfo.loadIcon(packageManager);
            if (loadIcon2 == null) {
                return null;
            }
            return loadIcon2;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: a1 */
    public static void m13567a1(Context context, boolean z, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        l.e(context, "$this$requestDisableBatteryOptimizations");
        try {
            context.startActivity(m13564b1(context, z));
        } catch (ActivityNotFoundException e) {
        }
    }

    /* renamed from: b */
    public static final String m13566b(AbstractC8541a abstractC8541a) {
        String m13813D = C19231g0.m13813D(StringConstant.SPACE, abstractC8541a.getString("profileFirstName"), abstractC8541a.getString("profileLastName"));
        l.d(m13813D, "StringUtils.combine(\" \",…ttings.PROFILE_LASTNAME))");
        return m13813D;
    }

    /* renamed from: b0 */
    public static final PowerManager m13565b0(Context context) {
        return (PowerManager) C22128a.m8734A1(context, "$this$powerManager", "power", "null cannot be cast to non-null type android.os.PowerManager");
    }

    /* renamed from: b1 */
    public static final Intent m13564b1(Context context, boolean z) {
        l.e(context, "$this$requestDisableBatteryOptimizationsIntent");
        Intent intent = new Intent();
        intent.setAction("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
        if (z) {
            intent.setFlags(268435456);
        }
        StringBuilder m8728C = C22128a.m8728C("package:");
        m8728C.append(context.getPackageName());
        intent.setData(Uri.parse(m8728C.toString()));
        return intent;
    }

    /* renamed from: c */
    public static final String m13563c(Number number) {
        String m35479e = number.m35479e();
        l.d(m35479e, "normalizedNumber");
        return C19286f.m13653z(m35479e);
    }

    /* renamed from: c0 */
    public static final PowerManager.WakeLock m13562c0(PowerManager powerManager) {
        PowerManager.WakeLock wakeLock;
        l.e(powerManager, "$this$getProximityLockCompat");
        if (powerManager.isWakeLockLevelSupported(32)) {
            wakeLock = powerManager.newWakeLock(32, "truecaller:proximityLock");
            return wakeLock;
        }
        wakeLock = null;
        return wakeLock;
    }

    /* renamed from: c1 */
    public static boolean m13561c1(Activity activity, String str, int i) {
        if ((activity instanceof AccessContactsActivity) || !m13501w1(activity, str)) {
            if (m13502w0(activity, str)) {
                m13570Z0(activity);
                return false;
            }
            C26413b.m1895g(activity, new String[]{str}, i);
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public static final void m13560d(q3.a.n nVar, Object obj) {
        if (nVar.b()) {
            nVar.c(obj);
        }
    }

    /* renamed from: d0 */
    public static int m13559d0(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: d1 */
    public static boolean m13558d1(Fragment fragment, String str, int i, boolean z) {
        if (!z || !m13501w1(fragment.getActivity(), str)) {
            if (m13502w0(fragment.getActivity(), str)) {
                m13570Z0(fragment.getContext());
                return false;
            }
            fragment.requestPermissions(new String[]{str}, i);
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public static final String m13557e(long j) {
        StringBuilder sb = new StringBuilder();
        sb.append('+');
        sb.append(j);
        return sb.toString();
    }

    /* renamed from: e0 */
    public static final Integer m13556e0(C19764a c19764a) {
        Integer num;
        if (c19764a == null) {
            num = null;
        } else {
            TokenResponseDto tokenResponseDto = c19764a.f54813a;
            if (tokenResponseDto != null) {
                num = Integer.valueOf(tokenResponseDto.getStatus());
            } else {
                TokenErrorResponseDto tokenErrorResponseDto = c19764a.f54814b;
                num = null;
                if (tokenErrorResponseDto != null) {
                    num = Integer.valueOf(tokenErrorResponseDto.getStatus());
                }
            }
        }
        return num;
    }

    /* renamed from: e1 */
    public static boolean m13555e1(Fragment fragment, String[] strArr, int i) {
        int length = strArr.length;
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                int length2 = strArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        fragment.requestPermissions(strArr, i);
                        z = true;
                        break;
                    }
                    if (m13502w0(fragment.getActivity(), strArr[i3])) {
                        m13570Z0(fragment.getActivity());
                        break;
                    }
                    i3++;
                }
            } else {
                if (m13501w1(fragment.getActivity(), strArr[i2])) {
                    break;
                }
                i2++;
            }
        }
        return z;
    }

    /* renamed from: f */
    public static final AbstractC19331a m13554f(int i, Integer num, String str) {
        return i != 0 ? i != 1 ? i != 2 ? null : new AbstractC19331a.C19333b(num, str) : new AbstractC19331a.C19334c(num, str) : new AbstractC19331a.C19332a(num);
    }

    /* renamed from: f0 */
    public static final int m13553f0(Context context) {
        int i;
        l.e(context, "$this$getStatusBarHeight");
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
        if (identifier > 0) {
            i = context.getResources().getDimensionPixelSize(identifier);
        } else {
            Resources resources = context.getResources();
            l.d(resources, "resources");
            i = (int) Math.ceil(24 * resources.getDisplayMetrics().density);
        }
        return i;
    }

    /* renamed from: f1 */
    public static final <T> void m13552f1(q3.a.n<? super T> nVar, T t) {
        l.e(nVar, "$this$resumeSafe");
        if (nVar.b()) {
            nVar.c(t);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ce  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m13551g(p193e.p194a.p947k.p973n.p977g.AbstractC16211c r6, p193e.p194a.p947k.p973n.p977g.C16209a r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19291g.m13551g(e.a.k.n.g.c, e.a.k.n.g.a, s1.w.d):java.lang.Object");
    }

    /* renamed from: g1 */
    public static double m13549g1(double d, int i, int i2) {
        if ((i2 & 1) != 0) {
            i = 2;
        }
        return new BigDecimal(d).setScale(i, 4).doubleValue();
    }

    /* renamed from: h */
    public static final void m13548h(Drawable drawable, SpannableStringBuilder spannableStringBuilder, Integer num, Paint.FontMetricsInt fontMetricsInt, boolean z) {
        l.e(drawable, "$this$addToStringBuilder");
        l.e(spannableStringBuilder, "builder");
        if (fontMetricsInt != null) {
            int i = fontMetricsInt.ascent;
            int i2 = fontMetricsInt.descent;
            drawable.setBounds(0, i, i2 - i, i2);
        } else {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        if (num != null) {
            drawable.setTint(num.intValue());
        }
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append("  ");
        spannableStringBuilder.setSpan(z ? new C19276c(drawable) : new ImageSpan(drawable, 0), length, length + 2, 33);
        spannableStringBuilder.append(StringConstant.SPACE);
    }

    /* renamed from: h0 */
    public static final SubscriptionManager m13547h0(Context context) {
        return (SubscriptionManager) C22128a.m8734A1(context, "$this$subscriptionManager", "telephony_subscription_service", "null cannot be cast to non-null type android.telephony.SubscriptionManager");
    }

    /* renamed from: h1 */
    public static final <T> Object m13546h1(s1.w.f fVar, s1.z.b.l<? super d<? super T>, ? extends Object> lVar, d<? super T> dVar) {
        return s1.a.a.a.v0.f.d.a4(fVar, new C16152a(lVar, null), dVar);
    }

    /* renamed from: i */
    public static /* synthetic */ void m13545i(Drawable drawable, SpannableStringBuilder spannableStringBuilder, Integer num, Paint.FontMetricsInt fontMetricsInt, boolean z, int i) {
        if ((i & 2) != 0) {
            num = null;
        }
        if ((i & 4) != 0) {
            fontMetricsInt = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        m13548h(drawable, spannableStringBuilder, num, fontMetricsInt, z);
    }

    /* renamed from: i0 */
    public static final TelecomManager m13544i0(Context context) {
        return (TelecomManager) C22128a.m8734A1(context, "$this$telecomManager", "telecom", "null cannot be cast to non-null type android.telecom.TelecomManager");
    }

    /* renamed from: i1 */
    public static final boolean m13543i1(File file) {
        Boolean bool;
        try {
            File file2 = file.exists() ? file : null;
            bool = null;
            if (file2 != null) {
                bool = Boolean.valueOf(file2.delete());
            }
        } catch (SecurityException e) {
            bool = null;
        }
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: j */
    public static final void m13542j(TextView textView, s1.z.b.l<? super Editable, s> lVar) {
        l.e(textView, "$this$afterTextChanged");
        l.e(lVar, "onTextChangedImpl");
        textView.addTextChangedListener(new C19305q(lVar));
    }

    /* renamed from: j0 */
    public static final TelephonyManager m13541j0(Context context) {
        return (TelephonyManager) C22128a.m8734A1(context, "$this$telephonyManager", AnalyticsConstants.PHONE, "null cannot be cast to non-null type android.telephony.TelephonyManager");
    }

    /* renamed from: j1 */
    public static final boolean m13540j1(File file) {
        Boolean bool = null;
        if (file != null) {
            try {
                if (!file.exists()) {
                    file = null;
                }
                bool = null;
                if (file != null) {
                    bool = Boolean.valueOf(s1.y.h.b(file));
                }
            } catch (SecurityException e) {
                bool = null;
            }
        }
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: k */
    public static final <T> f<AbstractC11387c0<T>> m13539k(f<? extends Set<? extends T>> fVar, Set<? extends T> set) {
        l.e(fVar, "$this$asSetUpdateFlow");
        l.e(set, "initialSet");
        return new d1(new C11427l(fVar, set, null));
    }

    /* renamed from: k0 */
    public static final int m13538k0(Context context, int i) {
        int i2;
        l.e(context, "$this$getThemeColor");
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        int i3 = typedValue.resourceId;
        if (i3 == 0) {
            i2 = typedValue.data;
        } else {
            Object obj = C26467a.f74235a;
            i2 = C26467a.C26471d.m1787a(context, i3);
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: k1 */
    public static final long m13537k1(File file) {
        char c = 65535;
        if (file != null) {
            try {
                c = file.length();
            } catch (SecurityException e) {
                c = 65535;
            }
        }
        return c;
    }

    /* renamed from: l0 */
    public static Drawable m13535l0(Context context, int i, int i2) {
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        Drawable mutate = C25440a.m3540a(context, i).mutate();
        mutate.setTint(m13612L(context, i2));
        mutate.setTintMode(mode);
        return mutate;
    }

    /* renamed from: l1 */
    public static final <E> void m13534l1(d0<? super E> d0Var, E e) {
        l.e(d0Var, "$this$sendBlockingSafe");
        try {
            s1.a.a.a.v0.f.d.j3(d0Var, e);
        } catch (q | CancellationException e2) {
        }
    }

    /* renamed from: m */
    public static final g$a m13533m(Context context, s1.z.b.l<? super Boolean, s> lVar) {
        l.e(context, "$this$buildRegionCDialog");
        l.e(lVar, "isRegionCListener");
        DialogInterface$OnClickListenerC19743n dialogInterface$OnClickListenerC19743n = new DialogInterface$OnClickListenerC19743n(lVar);
        g$a g_a = new g$a(context);
        g_a.m3656m(C4861R.string.RegionC_dialog_title);
        g_a.m3664e(C4861R.string.RegionC_dialog_message);
        g_a.m3660i(C4861R.string.RegionC_dialog_button_positive, dialogInterface$OnClickListenerC19743n);
        g_a.m3662g(C4861R.string.RegionC_dialog_button_negative, dialogInterface$OnClickListenerC19743n);
        l.d(g_a, "AlertDialog.Builder(this…utton_negative, listener)");
        return g_a;
    }

    /* renamed from: m0 */
    public static /* synthetic */ Object m13532m0(AbstractC15964c2 abstractC15964c2, Contact contact, String str, PlayingBehaviour playingBehaviour, VideoPlayerContext videoPlayerContext, boolean z, boolean z2, s1.z.b.l lVar, d dVar, int i, Object obj) {
        if ((i & 16) != 0) {
            z = false;
        }
        if ((i & 32) != 0) {
            z2 = true;
        }
        return abstractC15964c2.mo18081f(contact, str, playingBehaviour, videoPlayerContext, z, z2, lVar, dVar);
    }

    /* renamed from: m1 */
    public static final void m13531m1(Context context, WizardCompletionType wizardCompletionType) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(wizardCompletionType, "wizardCompletionType");
        Intent intent = new Intent("com.truecaller.wizard.ACTION_WIZARD_COMPLETED");
        intent.putExtra("extraCompletionType", wizardCompletionType.getType());
        C27062a.m968b(context).m966d(intent);
    }

    /* renamed from: n */
    public static final double m13530n(long j) {
        double d = 1024.0f;
        return (j / d) / d;
    }

    /* renamed from: n0 */
    public static final WindowManager m13529n0(Context context) {
        return (WindowManager) C22128a.m8734A1(context, "$this$windowManager", "window", "null cannot be cast to non-null type android.view.WindowManager");
    }

    /* renamed from: n1 */
    public static final void m13528n1(ImageView imageView, int i, boolean z) {
        l.e(imageView, "$this$setAspectRatioPreservedScaledImageResource");
        if (!(imageView.getParent() instanceof View)) {
            imageView.setImageResource(i);
            return;
        }
        ViewParent parent = imageView.getParent();
        Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
        View view = (View) parent;
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC19302n(imageView, i, z, view));
    }

    /* renamed from: o */
    public static String m13527o(long j, String str, int i) {
        float f = (((float) j) / 1024.0f) / 1024.0f;
        return C22128a.m8562v(new Object[]{Float.valueOf(f)}, 1, f % ((float) 1) > ((float) 0) ? "%.2f" : "%.0f", "java.lang.String.format(this, *args)");
    }

    /* renamed from: o0 */
    public static final void m13526o0(TextView textView, s1.z.b.l<? super String, s> lVar) {
        l.e(textView, "$this$handleLink");
        l.e(lVar, "onClick");
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        m13622H1(textView, new C19307s(lVar));
    }

    /* renamed from: o1 */
    public static void m13525o1(View view, int i, PorterDuff.Mode mode) {
        Drawable background = view.getBackground();
        if (background == null) {
            return;
        }
        Drawable mutate = background.mutate();
        view.setBackgroundDrawable(mutate);
        mutate.setTint(i);
        mutate.setTintMode(mode);
        mutate.invalidateSelf();
    }

    /* renamed from: p */
    public static final Long m13524p(C12262i c12262i, long j, long j2) {
        Long valueOf = Long.valueOf(j2 - (j - c12262i.f35825d));
        Long l = null;
        if (!(valueOf.longValue() > 0)) {
            valueOf = null;
        }
        if (valueOf != null) {
            long longValue = valueOf.longValue();
            Math.min(longValue, j2);
            l = Long.valueOf(Math.min(longValue, j2));
        }
        return l;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x015a  */
    /* renamed from: p0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m13523p0(p193e.p194a.p619d.p654s.C11795k r8, p193e.p194a.p619d.p620a.C11029o r9, s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19291g.m13523p0(e.a.d.s.k, e.a.d.a.o, s1.w.d):java.lang.Object");
    }

    /* renamed from: p1 */
    public static void m13522p1(Context context, Drawable drawable, int i) {
        drawable.setTint(m13612L(context, i));
    }

    /* renamed from: q */
    public static final Long m13521q(C12262i c12262i, long j, Set<C12282l> set, long j2) {
        Object obj;
        Iterator<T> it = set.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (c12262i.m23355a(((C12282l) obj).f35910a)) {
                break;
            }
        }
        boolean z = obj != null;
        Long l = null;
        if (z) {
            l = m13524p(c12262i, j, j2);
        }
        return l;
    }

    /* renamed from: q0 */
    public static final int m13520q0(Cursor cursor, String str) {
        l.e(cursor, "$this$intValue");
        l.e(str, "columnName");
        return cursor.getInt(cursor.getColumnIndex(str));
    }

    /* renamed from: q1 */
    public static final void m13519q1(TextView textView, int i) {
        l.e(textView, "$this$setDrawablesColor");
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        l.d(compoundDrawablesRelative, "compoundDrawablesRelative");
        for (Drawable drawable : compoundDrawablesRelative) {
            if (drawable instanceof GradientDrawable) {
                ((GradientDrawable) drawable).setColor(i);
            } else if (drawable instanceof VectorDrawable) {
                drawable.setTint(i);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.io.Closeable] */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T extends java.io.Closeable> java.lang.Object m13518r(T r5, s1.w.d<? super T> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1129p5.p1132s0.C19295i
            if (r0 == 0) goto L27
            r0 = r6
            e.a.p5.s0.i r0 = (p193e.p194a.p1129p5.p1132s0.C19295i) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f53710e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f53710e = r1
            r0 = r7
            r6 = r0
            goto L30
        L27:
            e.a.p5.s0.i r0 = new e.a.p5.s0.i
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r6 = r0
        L30:
            r0 = r6
            java.lang.Object r0 = r0.f53709d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r7 = r0
            r0 = r6
            int r0 = r0.f53710e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L63
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L58
            r0 = r6
            java.lang.Object r0 = r0.f53711f
            java.io.Closeable r0 = (java.io.Closeable) r0
            r5 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Lb4
        L58:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L63:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            r1 = r5
            r0.f53711f = r1
            r0 = r6
            r1 = 1
            r0.f53710e = r1
            q3.a.o r0 = new q3.a.o
            r1 = r0
            r2 = r6
            s1.w.d r2 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3844s1(r2)
            r3 = 1
            r1.<init>(r2, r3)
            r9 = r0
            r0 = r9
            r0.z()
            r0 = r9
            r1 = r5
            m13552f1(r0, r1)
            r0 = r9
            e.a.p5.s0.h r1 = new e.a.p5.s0.h
            r2 = r1
            r3 = r5
            r2.<init>(r3)
            r0.r(r1)
            r0 = r9
            java.lang.Object r0 = r0.y()
            r9 = r0
            r0 = r9
            r1 = r7
            if (r0 != r1) goto Lac
            r0 = r6
            java.lang.String r1 = "frame"
            s1.z.c.l.e(r0, r1)
        Lac:
            r0 = r9
            r1 = r7
            if (r0 != r1) goto Lb4
            r0 = r7
            return r0
        Lb4:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19291g.m13518r(java.io.Closeable, s1.w.d):java.lang.Object");
    }

    /* renamed from: r0 */
    public static final int m13517r0(Cursor cursor, String str) {
        l.e(cursor, "$this$intValueOrThrow");
        l.e(str, "columnName");
        return cursor.getInt(cursor.getColumnIndexOrThrow(str));
    }

    /* renamed from: r1 */
    public static void m13516r1(ImageView imageView, int i) {
        Drawable drawable = imageView.getDrawable();
        if (drawable == null) {
            return;
        }
        Drawable mutate = drawable.mutate();
        imageView.setImageDrawable(mutate);
        mutate.setTint(i);
        mutate.invalidateSelf();
    }

    /* renamed from: s */
    public static final void m13515s(Context context) {
        l.e(context, "$this$closeSystemDialogsCompat");
        if (Build.VERSION.SDK_INT >= 31) {
            return;
        }
        context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    /* renamed from: s0 */
    public static boolean m13514s0(char c) {
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
    }

    /* renamed from: s1 */
    public static /* synthetic */ void m13513s1(AbstractC19810y abstractC19810y, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        abstractC19810y.m12813p9(z, z2);
    }

    /* renamed from: t */
    public static final boolean m13512t(C19801h c19801h, Context context) {
        l.e(c19801h, "$this$composeVerificationErrorEmail");
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse("mailto:"));
        boolean z = true;
        intent.putExtra("android.intent.extra.EMAIL", new String[]{c19801h.f54846a});
        intent.putExtra("android.intent.extra.SUBJECT", c19801h.f54847b);
        intent.putExtra("android.intent.extra.TEXT", c19801h.f54848c);
        if (intent.resolveActivity(context.getPackageManager()) == null) {
            z = false;
        }
        if (z) {
            context.startActivity(intent);
        }
        return z;
    }

    /* renamed from: t0 */
    public static final boolean m13511t0(MediaCallerIDs mediaCallerIDs) {
        l.e(mediaCallerIDs, "$this$isExpired");
        return mediaCallerIDs.getTtl() < System.currentTimeMillis();
    }

    /* renamed from: t1 */
    public static final void m13510t1(View view, int i) {
        l.e(view, "$this$setStatAppearance");
        ((ImageView) view.findViewById(C4513R.C4515id.icon)).setImageResource(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a0, code lost:
        if (r0.equals("months") == false) goto L4;
     */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static float m13509u(java.lang.String r3) {
        /*
            r0 = r3
            java.lang.String r1 = " "
            java.lang.String[] r0 = r0.split(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            r1 = 0
            r0 = r0[r1]
            r3 = r0
            r0 = r4
            r1 = 1
            r0 = r0[r1]
            r4 = r0
            r0 = r4
            int r0 = r0.hashCode()
            r0 = r4
            int r0 = r0.hashCode()
            switch(r0) {
                case -1068487181: goto L99;
                case 3076183: goto L87;
                case 3351649: goto L75;
                case 99469071: goto L63;
                case 113008383: goto L51;
                default: goto L4c;
            }
        L4c:
            r0 = -1
            r5 = r0
            goto La6
        L51:
            r0 = r4
            java.lang.String r1 = "weeks"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L5e
            goto L4c
        L5e:
            r0 = 4
            r5 = r0
            goto La6
        L63:
            r0 = r4
            java.lang.String r1 = "hours"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L70
            goto L4c
        L70:
            r0 = 3
            r5 = r0
            goto La6
        L75:
            r0 = r4
            java.lang.String r1 = "mins"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L82
            goto L4c
        L82:
            r0 = 2
            r5 = r0
            goto La6
        L87:
            r0 = r4
            java.lang.String r1 = "days"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L94
            goto L4c
        L94:
            r0 = 1
            r5 = r0
            goto La6
        L99:
            r0 = r4
            java.lang.String r1 = "months"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto La6
            goto L4c
        La6:
            r0 = 1103101952(0x41c00000, float:24.0)
            r6 = r0
            r0 = r5
            switch(r0) {
                case 0: goto Lf8;
                case 1: goto Lef;
                case 2: goto Le6;
                case 3: goto Le1;
                case 4: goto Lce;
                default: goto Lcc;
            }
        Lcc:
            r0 = 0
            return r0
        Lce:
            r0 = r3
            float r0 = java.lang.Float.parseFloat(r0)
            r1 = 1103101952(0x41c00000, float:24.0)
            float r0 = r0 * r1
            r7 = r0
            r0 = 1088421888(0x40e00000, float:7.0)
            r6 = r0
        Ldc:
            r0 = r7
            r1 = r6
            float r0 = r0 * r1
            return r0
        Le1:
            r0 = r3
            float r0 = java.lang.Float.parseFloat(r0)
            return r0
        Le6:
            r0 = r3
            float r0 = java.lang.Float.parseFloat(r0)
            r1 = 1114636288(0x42700000, float:60.0)
            float r0 = r0 / r1
            return r0
        Lef:
            r0 = r3
            float r0 = java.lang.Float.parseFloat(r0)
            r7 = r0
            goto Ldc
        Lf8:
            r0 = r3
            float r0 = java.lang.Float.parseFloat(r0)
            r1 = 1103101952(0x41c00000, float:24.0)
            float r0 = r0 * r1
            r7 = r0
            r0 = 1106247680(0x41f00000, float:30.0)
            r6 = r0
            goto Ldc
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19291g.m13509u(java.lang.String):float");
    }

    /* renamed from: u1 */
    public static final TextView m13507u1(TextView textView, int i, Object... objArr) {
        l.e(textView, "$this$setTextWithFormatFromHtml");
        l.e(objArr, "args");
        textView.setText(Html.fromHtml(textView.getResources().getString(i, Arrays.copyOf(objArr, objArr.length))));
        return textView;
    }

    /* renamed from: v */
    public static Intent m13506v(Context context) {
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", context.getPackageName(), null));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* renamed from: v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m13505v0(p193e.p194a.p619d.p637c0.p641y1.AbstractC11558b r7, java.lang.String r8, s1.w.d<? super java.lang.Boolean> r9) {
        /*
            r0 = r9
            boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.p641y1.C11557a
            if (r0 == 0) goto L2a
            r0 = r9
            e.a.d.c0.y1.a r0 = (p193e.p194a.p619d.p637c0.p641y1.C11557a) r0
            r10 = r0
            r0 = r10
            int r0 = r0.f33900e
            r11 = r0
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r10
            r1 = r11
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f33900e = r1
            r0 = r10
            r9 = r0
            goto L34
        L2a:
            e.a.d.c0.y1.a r0 = new e.a.d.c0.y1.a
            r1 = r0
            r2 = r7
            r3 = r9
            r1.<init>(r2, r3)
            r9 = r0
        L34:
            r0 = r9
            java.lang.Object r0 = r0.f33899d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r12 = r0
            r0 = r9
            int r0 = r0.f33900e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L63
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L58
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r10
            r7 = r0
            goto L94
        L58:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L63:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            java.util.List r0 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3962T1(r0)
            r8 = r0
            r0 = r9
            r1 = 1
            r0.f33900e = r1
            r0 = r7
            e.a.d.c0.y1.c r0 = (p193e.p194a.p619d.p637c0.p641y1.C11559c) r0
            r7 = r0
            r0 = r7
            s1.w.f r0 = r0.f33902a
            e.a.d.c0.y1.c$a r1 = new e.a.d.c0.y1.c$a
            r2 = r1
            r3 = r7
            r4 = r8
            r5 = 0
            r2.<init>(r4, r5)
            r2 = r9
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r12
            if (r0 != r1) goto L94
            r0 = r12
            return r0
        L94:
            r0 = r7
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            r1 = 1
            r0 = r0 ^ r1
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19291g.m13505v0(e.a.d.c0.y1.b, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: v1 */
    public static /* synthetic */ Object m13504v1(AbstractC15964c2 abstractC15964c2, boolean z, String str, boolean z2, d dVar, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = false;
        }
        return abstractC15964c2.mo18076k(z, str, z2, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x021d A[LOOP:0: B:36:0x0216->B:38:0x021d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02b0 A[SYNTHETIC] */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m13503w(p193e.p194a.p619d.p620a.C11029o r10, android.widget.LinearLayout r11, s1.w.d<? super android.view.View> r12) {
        /*
            Method dump skipped, instructions count: 938
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19291g.m13503w(e.a.d.a.o, android.widget.LinearLayout, s1.w.d):java.lang.Object");
    }

    /* renamed from: w0 */
    public static boolean m13502w0(Activity activity, String str) {
        boolean z = false;
        if (C18334g0.m15277B(str, false)) {
            int i = C26413b.f74031c;
            z = false;
            if (!activity.shouldShowRequestPermissionRationale(str)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: w1 */
    public static boolean m13501w1(Context context, String str) {
        boolean z;
        int i = e.a.r.g.g;
        if (context != null) {
            int i2 = AbstractC18492b.f52197b;
            l.e(context, AnalyticsConstants.CONTEXT);
            Object m3820x0 = C25225a.m3820x0(context.getApplicationContext(), AbstractC18492b.class);
            l.d(m3820x0, "EntryPointAccessors.from…GCEntryPoint::class.java)");
            AbstractC18493c mo12579R = ((AbstractC18492b) m3820x0).mo12579R();
            if (mo12579R.mo14860a() && !mo12579R.mo14858c()) {
                z = true;
                if (z || !str.equals("android.permission.READ_CONTACTS")) {
                    return false;
                }
                context.startActivity(new Intent(context, AccessContactsActivity.class));
                return true;
            }
        }
        z = false;
        if (z) {
            return false;
        }
        context.startActivity(new Intent(context, AccessContactsActivity.class));
        return true;
    }

    /* renamed from: x */
    public static final void m13500x(EditText editText) {
        l.e(editText, "$this$disableCopyPaste");
        editText.setLongClickable(false);
        editText.setCustomSelectionActionModeCallback(new ActionMode$CallbackC19301m());
    }

    /* renamed from: x0 */
    public static boolean m13499x0(char c) {
        return c >= 'A' && c <= 'Z';
    }

    /* renamed from: x1 */
    public static final void m13498x1(Context context, AbstractC19219a0 abstractC19219a0) {
        l.e(context, "$this$showCallPermissionDeniedToast");
        l.e(abstractC19219a0, "permissionUtil");
        boolean mo13825h = abstractC19219a0.mo13825h("android.permission.RECORD_AUDIO");
        boolean mo13825h2 = Build.VERSION.SDK_INT >= 31 ? abstractC19219a0.mo13825h("android.permission.BLUETOOTH_SCAN", "android.permission.BLUETOOTH_CONNECT") : true;
        Integer valueOf = (mo13825h || mo13825h2) ? !mo13825h ? Integer.valueOf(C4781R.string.voip_permissions_denied_explanation) : !mo13825h2 ? Integer.valueOf(C4781R.string.voip_permissions_denied_explanation_bluetooth) : null : Integer.valueOf(C4781R.string.voip_permissions_denied_explanation_mic_and_bluetooth);
        if (valueOf != null) {
            m13589S1(context, valueOf.intValue(), null, 1, 2);
        }
    }

    /* renamed from: y */
    public static final float m13497y(Resources resources, float f) {
        l.e(resources, "$this$dpToPx");
        return TypedValue.applyDimension(1, f, resources.getDisplayMetrics());
    }

    /* renamed from: y0 */
    public static final String m13496y0(Address address) {
        String str;
        l.e(address, "$this$location");
        if (address.getCityOrArea() != null) {
            str = address.getCityOrArea();
        } else {
            String countryName = address.getCountryName();
            l.d(countryName, "countryName");
            str = r.p(countryName) ^ true ? address.getCountryName() : null;
        }
        return str;
    }

    /* renamed from: y1 */
    public static void m13495y1(Activity activity) {
        try {
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
            activity.startActivity(intent.setData(Uri.parse("package:" + activity.getPackageName())));
        } catch (ActivityNotFoundException e) {
            C10480a.m26061I1(e);
        }
    }

    /* renamed from: z */
    public static final int m13494z(Context context, float f) {
        l.e(context, "$this$dpToPx");
        Resources resources = context.getResources();
        l.d(resources, "resources");
        return (int) TypedValue.applyDimension(1, f, resources.getDisplayMetrics());
    }

    /* renamed from: z0 */
    public static void m13493z0(String str) {
        PrintStream printStream = System.out;
        printStream.println("[ERROR] " + str);
    }

    /* renamed from: z1 */
    public static void m13492z1(final Context context, String str, int i) {
        Drawable m13568a0 = m13568a0(context, str);
        if (m13568a0 != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{C4861R.attr.colorAccent});
            m13568a0.setTintList(obtainStyledAttributes.getColorStateList(0));
            obtainStyledAttributes.recycle();
        }
        g$a g_a = new g$a(context);
        g_a.f70854a.f153c = m13568a0;
        g_a.m3656m(C4861R.string.PermissionDenied);
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f156f = c0037b.f151a.getText(i);
        g_a.m3660i(C4861R.string.Draw_GoToSettings, new DialogInterface.OnClickListener() { // from class: e.a.r.c.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                C19291g.m13570Z0(context);
            }
        });
        g_a.m3652q();
    }
}
