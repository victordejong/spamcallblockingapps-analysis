package p193e.p194a.p1365y.p1382c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.core.Theme;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.flashsdk.models.Payload;
import com.truecaller.flashsdk.p166ui.contactselector.FlashContactSelectorActivity;
import com.truecaller.flashsdk.p166ui.onboarding.FlashOnBoardingActivity;
import com.truecaller.flashsdk.p166ui.send.SendActivity;
import com.truecaller.flashsdk.p166ui.whatsnew.FlashWithFriendsActivity;
import e.m.e.k;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import p193e.p194a.p1365y.p1386d.AbstractC21712i;
import p193e.p194a.p1365y.p1386d.C21711h;
import p193e.p194a.p1365y.p1389g.C21746d;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.y.c.d */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/d.class */
public final class C21634d implements AbstractC21631b {
    @Inject

    /* renamed from: a */
    public a<AbstractC21712i> f60290a;
    @Inject

    /* renamed from: b */
    public a<AbstractC21626w> f60291b;
    @Inject

    /* renamed from: c */
    public a<AbstractC21644k> f60292c;
    @Inject

    /* renamed from: d */
    public a<k> f60293d;
    @Inject

    /* renamed from: e */
    public a<AbstractC19219a0> f60294e;
    @Inject

    /* renamed from: f */
    public a<AbstractC19230g> f60295f;

    /* renamed from: g */
    public AbstractC21666a f60296g;

    /* renamed from: h */
    public AbstractC21642i f60297h;

    /* renamed from: i */
    public AbstractC21665w f60298i;

    /* renamed from: j */
    public Theme f60299j = Theme.LIGHT;

    /* renamed from: k */
    public boolean f60300k;

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: A */
    public int mo9329A() {
        return this.f60299j.ordinal() != 0 ? C3909R.style.DefaultV2 : C3909R.style.DarkKnightV2;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: B */
    public void mo9328B(AbstractC21642i abstractC21642i) {
        l.e(abstractC21642i, "flashPoint");
        this.f60297h = abstractC21642i;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: C */
    public boolean mo9327C(String str) {
        l.e(str, "phoneWithoutPlus");
        return System.currentTimeMillis() - mo9313e(str).f60487b >= DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: D */
    public void mo9326D(Context context, long j, String str, String str2, String str3, String str4, String str5, boolean z, String str6) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str5, "message");
        Intent m35327b = SendActivity.f12191N.m35327b(context, j, str, str2, str3, str4, str5, z, str6);
        a<AbstractC21626w> aVar = this.f60291b;
        if (aVar == null) {
            l.l("preferenceUtil");
            throw null;
        } else if (!((AbstractC21626w) aVar.get()).getBoolean("first_time_user", true)) {
            context.startActivity(m35327b);
        } else {
            FlashOnBoardingActivity.C3967a c3967a = FlashOnBoardingActivity.f12177k;
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str5, "description");
            Intent intent = new Intent(context, FlashOnBoardingActivity.class);
            intent.putExtra("to_phone", j);
            intent.putExtra("to_name", str);
            intent.putExtra("image", str3);
            intent.putExtra("video", str4);
            intent.putExtra("description", str5);
            intent.putExtra(AnalyticsConstants.MODE, z);
            intent.putExtra("background", str6);
            intent.putExtra("screen_context", str2);
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: E */
    public boolean mo9325E(String str) {
        l.e(str, AnalyticsConstants.PHONE);
        AbstractC21642i abstractC21642i = this.f60297h;
        return abstractC21642i != null ? abstractC21642i.mo9273f(str) : false;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: F */
    public void mo9324F(boolean z) {
        this.f60300k = z;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: G */
    public void mo9323G(Flash flash) {
        l.e(flash, "flash");
        a<AbstractC21644k> aVar = this.f60292c;
        if (aVar != null) {
            ((AbstractC21644k) aVar.get()).mo9264a(flash, "responding", true, null);
        } else {
            l.l("flashRequestHandler");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: H */
    public Intent mo9322H(Context context, String str, String str2, String str3, String str4, boolean z, String str5) {
        l.e(context, AnalyticsConstants.CONTEXT);
        return FlashWithFriendsActivity.f12219f.m35320a(context, str, str2, str3, str4, z, str5);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: I */
    public boolean mo9321I() {
        boolean z;
        a<AbstractC19230g> aVar = this.f60295f;
        if (aVar == null) {
            l.l("deviceInfoUtil");
            throw null;
        }
        if (((AbstractC19230g) aVar.get()).mo13780q() >= 29 && !this.f60300k) {
            a<AbstractC19219a0> aVar2 = this.f60294e;
            if (aVar2 == null) {
                l.l("permissionUtil");
                throw null;
            } else if (!((AbstractC19219a0) aVar2.get()).mo13822k()) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: J */
    public void mo9320J(Context context, ArrayList<FlashContact> arrayList, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(arrayList, "contacts");
        l.e(str, "screenContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(arrayList, "contactList");
        l.e(str, "screenContext");
        Intent intent = new Intent(context, FlashContactSelectorActivity.class);
        intent.putParcelableArrayListExtra("contact_list", new ArrayList<>(arrayList));
        intent.putExtra("screen_context", str);
        context.startActivity(intent);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: K */
    public void mo9319K(Context context, long j, String str, String str2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        a<AbstractC21626w> aVar = this.f60291b;
        if (aVar == null) {
            l.l("preferenceUtil");
            throw null;
        } else if (!((AbstractC21626w) aVar.get()).getBoolean("first_time_user", true)) {
            SendActivity.C3972b c3972b = SendActivity.f12191N;
            l.e(context, AnalyticsConstants.CONTEXT);
            context.startActivity(SendActivity.C3972b.m35328a(c3972b, context, j, str, str2, 0, null, null, true, 16));
        } else {
            FlashOnBoardingActivity.C3967a c3967a = FlashOnBoardingActivity.f12177k;
            l.e(context, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(context, FlashOnBoardingActivity.class);
            intent.putExtra("to_phone", j);
            intent.putExtra("to_name", str);
            intent.putExtra("screen_context", str2);
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    /* renamed from: L */
    public final String m9318L(String str) {
        String str2;
        if (str.length() > 7) {
            str2 = str.substring(str.length() - 7, str.length());
            l.d(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        } else {
            str2 = null;
        }
        return str2;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: a */
    public void mo9317a() {
        a<AbstractC21626w> aVar = this.f60291b;
        if (aVar != null) {
            ((AbstractC21626w) aVar.get()).mo9349a();
        } else {
            l.l("preferenceUtil");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: b */
    public C21746d mo9316b(String str) {
        l.e(str, "phoneWithoutPlus");
        a<AbstractC21712i> aVar = this.f60290a;
        if (aVar != null) {
            return ((AbstractC21712i) aVar.get()).mo9170b(str);
        }
        l.l("flashPendingManager");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: c */
    public void mo9315c(String str) {
        a<AbstractC21626w> aVar = this.f60291b;
        if (aVar != null) {
            ((AbstractC21626w) aVar.get()).mo9348c(str);
        } else {
            l.l("preferenceUtil");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: d */
    public Uri mo9314d() {
        String str;
        if (this.f60297h != null) {
            a<AbstractC21626w> aVar = this.f60291b;
            if (aVar == null) {
                l.l("preferenceUtil");
                throw null;
            }
            if (((AbstractC21626w) aVar.get()).mo9346f()) {
                a<AbstractC21626w> aVar2 = this.f60291b;
                if (aVar2 == null) {
                    l.l("preferenceUtil");
                    throw null;
                }
                str = ((AbstractC21626w) aVar2.get()).mo9347d();
            } else {
                AbstractC21642i abstractC21642i = this.f60297h;
                str = abstractC21642i != null ? abstractC21642i.mo9268x() : null;
            }
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                AbstractC21642i abstractC21642i2 = this.f60297h;
                String str3 = null;
                if (abstractC21642i2 != null) {
                    str3 = abstractC21642i2.mo9268x();
                }
                str2 = str3;
            }
            mo9315c(str2);
            Uri parse = Uri.parse(str2);
            l.d(parse, "Uri.parse(flashRingtone)");
            return parse;
        }
        throw new RuntimeExecutionException(new Throwable("FlashPoint not set"));
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: e */
    public C21711h mo9313e(String str) {
        l.e(str, AnalyticsConstants.PHONE);
        a<AbstractC21712i> aVar = this.f60290a;
        if (aVar != null) {
            return ((AbstractC21712i) aVar.get()).mo9167e(str);
        }
        l.l("flashPendingManager");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: f */
    public boolean mo9312f() {
        a<AbstractC21626w> aVar = this.f60291b;
        if (aVar != null) {
            return ((AbstractC21626w) aVar.get()).mo9346f();
        }
        l.l("preferenceUtil");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: g */
    public void mo9311g(long j, String str) {
        Flash flash = new Flash();
        flash.f11992b = j;
        flash.f11995e = "";
        flash.f11994d = "final";
        flash.m35389e();
        flash.m35390d();
        flash.f11996f = new Payload("call_me_back", str, null, null);
        a<AbstractC21644k> aVar = this.f60292c;
        if (aVar != null) {
            ((AbstractC21644k) aVar.get()).mo9264a(flash, "call_me_back_req", false, null);
        } else {
            l.l("flashRequestHandler");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: h */
    public boolean mo9310h() {
        a<AbstractC21626w> aVar = this.f60291b;
        if (aVar == null) {
            l.l("preferenceUtil");
            throw null;
        }
        long mo9341k = ((AbstractC21626w) aVar.get()).mo9341k();
        a<AbstractC21626w> aVar2 = this.f60291b;
        if (aVar2 != null) {
            return mo9341k == 1 && ((AbstractC21626w) aVar2.get()).mo9345g() <= 1;
        }
        l.l("preferenceUtil");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: i */
    public void mo9309i(String str, long j, Flash flash) {
        l.e(str, AnalyticsConstants.PHONE);
        l.e(flash, "flash");
        a<AbstractC21712i> aVar = this.f60290a;
        if (aVar != null) {
            ((AbstractC21712i) aVar.get()).mo9169c(str, j, flash);
        } else {
            l.l("flashPendingManager");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    public boolean isEnabled() {
        AbstractC21642i abstractC21642i = this.f60297h;
        return abstractC21642i != null ? abstractC21642i.mo9269w(2, null) : false;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: j */
    public void mo9308j(String str, Bundle bundle) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(bundle, "values");
        AbstractC21665w abstractC21665w = this.f60298i;
        if (abstractC21665w != null) {
            abstractC21665w.mo9215a(str, bundle);
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: k */
    public void mo9307k(long j) {
        String m9318L = m9318L(String.valueOf(j));
        if (m9318L != null) {
            a<AbstractC21626w> aVar = this.f60291b;
            if (aVar != null) {
                ((AbstractC21626w) aVar.get()).mo9338n(m9318L);
            } else {
                l.l("preferenceUtil");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: l */
    public void mo9306l(Context context, long j, String str, String str2, long j2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        SendActivity.C3972b c3972b = SendActivity.f12191N;
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(context, SendActivity.class);
        intent.putExtra("to_phone", j);
        intent.putExtra("to_name", str);
        intent.putExtra("screen_context", str2);
        intent.putExtra("time_left", j2);
        intent.addFlags(268435456);
        intent.addFlags(536870912);
        context.startActivity(intent);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: m */
    public void mo9305m(String str, String str2) {
        l.e(str, "phoneWithoutPlus");
        l.e(str2, AnalyticsConstants.NAME);
        AbstractC21642i abstractC21642i = this.f60297h;
        if (abstractC21642i != null) {
            abstractC21642i.mo9271j(4, str, str2);
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: n */
    public void mo9304n(List<C21746d> list) {
        l.e(list, "statusList");
        a<AbstractC21712i> aVar = this.f60290a;
        if (aVar != null) {
            ((AbstractC21712i) aVar.get()).mo9171a(list);
        } else {
            l.l("flashPendingManager");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: o */
    public int mo9303o(String str) {
        l.e(str, "numberWithPlus");
        a<AbstractC21712i> aVar = this.f60290a;
        if (aVar != null) {
            return ((AbstractC21712i) aVar.get()).mo9170b(r.t(str, "+", "", false, 4)).f60562b;
        }
        l.l("flashPendingManager");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: p */
    public void mo9302p(long j) {
        String m9318L = m9318L(String.valueOf(j));
        if (m9318L != null) {
            a<AbstractC21626w> aVar = this.f60291b;
            if (aVar != null) {
                ((AbstractC21626w) aVar.get()).mo9340l(m9318L, Long.valueOf(j));
            } else {
                l.l("preferenceUtil");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: q */
    public long mo9301q(String str) {
        l.e(str, "phoneNumber");
        String m9318L = m9318L(str);
        if (m9318L != null) {
            a<AbstractC21626w> aVar = this.f60291b;
            if (aVar != null) {
                return ((AbstractC21626w) aVar.get()).getLong(m9318L, -1L);
            }
            l.l("preferenceUtil");
            throw null;
        }
        return -1L;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: r */
    public void mo9300r(AbstractC21665w abstractC21665w) {
        l.e(abstractC21665w, "logger");
        this.f60298i = abstractC21665w;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: s */
    public void mo9299s(Theme theme) {
        l.e(theme, "theme");
        this.f60299j = theme;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: t */
    public void mo9298t(long j, List<String> list, String str) {
        l.e(list, "responses");
        l.e(str, "message");
        Flash flash = new Flash();
        flash.f11992b = j;
        flash.f11995e = "";
        flash.m35389e();
        flash.m35390d();
        flash.f11996f = new Payload("custom_flash", str, list, null);
        a<AbstractC21644k> aVar = this.f60292c;
        if (aVar != null) {
            ((AbstractC21644k) aVar.get()).mo9264a(flash, "paying", false, null);
        } else {
            l.l("flashRequestHandler");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: u */
    public void mo9297u(Context context, long j, String str, String str2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        long currentTimeMillis = System.currentTimeMillis() - mo9313e(String.valueOf(j)).f60487b;
        if (currentTimeMillis >= DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL) {
            mo9319K(context, j, str, str2);
        } else {
            mo9306l(context, j, str, str2, DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL - currentTimeMillis);
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: v */
    public void mo9296v(String str) {
        l.e(str, AnalyticsConstants.PHONE);
        AbstractC21642i abstractC21642i = this.f60297h;
        if (abstractC21642i != null) {
            abstractC21642i.mo9271j(5, str, null);
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: w */
    public void mo9295w() {
        a<AbstractC21626w> aVar = this.f60291b;
        if (aVar != null) {
            ((AbstractC21626w) aVar.get()).mo9344h();
        } else {
            l.l("preferenceUtil");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: x */
    public void mo9294x() {
        a<AbstractC21626w> aVar = this.f60291b;
        if (aVar == null) {
            l.l("preferenceUtil");
            throw null;
        }
        if (!(((AbstractC21626w) aVar.get()).getInt("flash_settings_version", -1) < 1)) {
            return;
        }
        AbstractC21642i abstractC21642i = this.f60297h;
        mo9315c(abstractC21642i != null ? abstractC21642i.mo9268x() : null);
        a<AbstractC21626w> aVar2 = this.f60291b;
        if (aVar2 != null) {
            ((AbstractC21626w) aVar2.get()).mo9340l("flash_settings_version", 1);
        } else {
            l.l("preferenceUtil");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: y */
    public void mo9293y(long j, String str) {
        Payload payload = new Payload("call_me_back", str, null, null);
        Flash flash = new Flash();
        flash.f11992b = j;
        flash.f11996f = payload;
        flash.f11995e = "";
        flash.m35389e();
        flash.m35390d();
        a<AbstractC21644k> aVar = this.f60292c;
        if (aVar == null) {
            l.l("flashRequestHandler");
            throw null;
        }
        ((AbstractC21644k) aVar.get()).mo9264a(flash, "call_me_back", false, null);
        Bundle bundle = new Bundle();
        Payload payload2 = flash.f11996f;
        l.d(payload2, "flash.payload");
        bundle.putString("type", payload2.m35382e());
        bundle.putString("flashMessageId", flash.f11998h);
        bundle.putString("flashReceiverId", String.valueOf(j));
        bundle.putString("flashContext", "callMeBack");
        bundle.putString("flashReplyId", null);
        bundle.putString("flashThreadId", flash.f11993c);
        bundle.putString("flashFromHistory", "false");
        bundle.putString("historyLength", DtbConstants.NETWORK_TYPE_UNKNOWN);
        mo9308j("FlashSent", bundle);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21631b
    /* renamed from: z */
    public AbstractC21642i mo9292z() {
        return this.f60297h;
    }
}
