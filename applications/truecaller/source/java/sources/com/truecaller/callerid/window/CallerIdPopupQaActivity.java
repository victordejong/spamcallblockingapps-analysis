package com.truecaller.callerid.window;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.widget.SwitchCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.C2752R;
import com.truecaller.ads.campaigns.AdCampaign;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p673d0.p674a.AbstractC12468y;
import p193e.p194a.p673d0.p674a.C12409a;
import p193e.p194a.p673d0.p674a.C12427c;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.t0;
import q3.a.y2.q;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b#\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\ba\u0010\u0010J\u0013\u0010\u0003\u001a\u00020\u0002*\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0013\u0010\n\u001a\u00020\u0007H\u0082@ø\u0001��¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0002H\u0082@ø\u0001��¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u000f\u0010\u0010R%\u0010\u0015\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R%\u0010\u0019\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0018\u0010\u0016R%\u0010\u001b\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016R%\u0010\u001d\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001d\u0010\u0016R%\u0010\u001f\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0014\u001a\u0004\b\u001f\u0010\u0016R%\u0010\"\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0014\u001a\u0004\b!\u0010\u0016R\u001d\u0010'\u001a\u00020#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u0014\u001a\u0004\b%\u0010&R%\u0010)\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u0014\u001a\u0004\b)\u0010\u0016R%\u0010,\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\u0014\u001a\u0004\b+\u0010\u0016R%\u0010/\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\u0014\u001a\u0004\b.\u0010\u0016R\u0016\u0010\f\u001a\u00020\u00028\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b0\u00101R%\u00103\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010\u0014\u001a\u0004\b3\u0010\u0016R%\u00106\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010\u0014\u001a\u0004\b5\u0010\u0016R%\u00109\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010\u0014\u001a\u0004\b8\u0010\u0016R%\u0010;\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010\u0014\u001a\u0004\b;\u0010\u0016R%\u0010>\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010\u0014\u001a\u0004\b=\u0010\u0016R%\u0010C\u001a\n \u0012*\u0004\u0018\u00010?0?8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010\u0014\u001a\u0004\bA\u0010BR%\u0010F\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010\u0014\u001a\u0004\bE\u0010\u0016R%\u0010I\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010\u0014\u001a\u0004\bH\u0010\u0016R\u0016\u0010K\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u00101R%\u0010M\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bL\u0010\u0014\u001a\u0004\bM\u0010\u0016R%\u0010P\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010\u0014\u001a\u0004\bO\u0010\u0016R%\u0010R\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010\u0014\u001a\u0004\bR\u0010\u0016R%\u0010U\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010\u0014\u001a\u0004\bT\u0010\u0016R%\u0010W\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010\u0014\u001a\u0004\bW\u0010\u0016R%\u0010Z\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bX\u0010\u0014\u001a\u0004\bY\u0010\u0016R%\u0010]\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b[\u0010\u0014\u001a\u0004\b\\\u0010\u0016R%\u0010`\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010\u0014\u001a\u0004\b_\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006b"}, d2 = {"Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;", "Ln3/b/a/h;", "", "ra", "(Ljava/lang/String;)Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "sa", "(Ls1/w/d;)Ljava/lang/Object;", "phoneNumber", "pa", "(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "onDestroy", "()V", "Landroidx/appcompat/widget/SwitchCompat;", "kotlin.jvm.PlatformType", "s", "Ls1/g;", "isPrioritySwitch", "()Landroidx/appcompat/widget/SwitchCompat;", "l", "getHasSpamReportsSwitch", "hasSpamReportsSwitch", "n", "isBusinessSwitch", "t", "isSearchingSwitch", "v", "isVerifiedBusinessSwitch", "i", "getHasNameSwitch", "hasNameSwitch", "Le/a/j2;", "a", "qa", "()Le/a/j2;", "trueGraph", "u", "isSpamSwitch", "d", "getHasAddressSwitch", "hasAddressSwitch", "f", "getHasAvatarSwitch", "hasAvatarSwitch", AbstractC2405c.f7629a, "Ljava/lang/String;", "w", "isVerifiedSwitch", "j", "getHasSearchWarnings", "hasSearchWarnings", "A", "getUseLongText", "useLongText", "q", "isPhonebookContact", "B", "getShowCallReasonPicker", "showCallReasonPicker", "Landroid/widget/Button;", "y", "getShowPopup", "()Landroid/widget/Button;", "showPopup", "g", "getHasIncomingVideoId", "hasIncomingVideoId", "m", "getHasTagSwitch", "hasTagSwitch", C22021b.f61237c, "loremIpsum", "p", "isGoldSwitch", "e", "getHasAltNameSwitch", "hasAltNameSwitch", "r", "isPremiumSwitch", "k", "getHasSpamCategorySwitch", "hasSpamCategorySwitch", "o", "isCredPrivilegeSwitch", "z", "getShowTimezone", "showTimezone", "x", "getShowAd", "showAd", "h", "getHasJobSwitch", "hasJobSwitch", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/window/CallerIdPopupQaActivity.class */
public final class CallerIdPopupQaActivity extends h {

    /* renamed from: C */
    public static final /* synthetic */ int f10618C = 0;

    /* renamed from: a */
    public final g f10621a = C25225a.m3978P1(new C3604f());

    /* renamed from: b */
    public final String f10622b = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \n        |quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse \n        |cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est \n        |laborum.";

    /* renamed from: c */
    public final String f10623c = "+46704506210";

    /* renamed from: d */
    public final g f10624d = C19286f.m13662q(this, C2752R.C2754id.hasAddressSwitch);

    /* renamed from: e */
    public final g f10625e = C19286f.m13662q(this, C2752R.C2754id.hasAltNameSwitch);

    /* renamed from: f */
    public final g f10626f = C19286f.m13662q(this, C2752R.C2754id.hasAvatarSwitch);

    /* renamed from: g */
    public final g f10627g = C19286f.m13662q(this, C2752R.C2754id.hasIncomingVideoId);

    /* renamed from: h */
    public final g f10628h = C19286f.m13662q(this, C2752R.C2754id.hasJobSwitch);

    /* renamed from: i */
    public final g f10629i = C19286f.m13662q(this, C2752R.C2754id.hasNameSwitch);

    /* renamed from: j */
    public final g f10630j = C19286f.m13662q(this, C2752R.C2754id.hasSearchWarnings);

    /* renamed from: k */
    public final g f10631k = C19286f.m13662q(this, C2752R.C2754id.hasSpamCategorySwitch);

    /* renamed from: l */
    public final g f10632l = C19286f.m13662q(this, C2752R.C2754id.hasSpamReportsSwitch);

    /* renamed from: m */
    public final g f10633m = C19286f.m13662q(this, C2752R.C2754id.hasTagSwitch);

    /* renamed from: n */
    public final g f10634n = C19286f.m13662q(this, C2752R.C2754id.isBusinessSwitch);

    /* renamed from: o */
    public final g f10635o = C19286f.m13662q(this, C2752R.C2754id.isCredPrivilegeSwitch);

    /* renamed from: p */
    public final g f10636p = C19286f.m13662q(this, C2752R.C2754id.isGoldSwitch);

    /* renamed from: q */
    public final g f10637q = C19286f.m13662q(this, C2752R.C2754id.isPhonebookContact);

    /* renamed from: r */
    public final g f10638r = C19286f.m13662q(this, C2752R.C2754id.isPremiumSwitch);

    /* renamed from: s */
    public final g f10639s = C19286f.m13662q(this, C2752R.C2754id.isPrioritySwitch);

    /* renamed from: t */
    public final g f10640t = C19286f.m13662q(this, C2752R.C2754id.isSearchingSwitch);

    /* renamed from: u */
    public final g f10641u = C19286f.m13662q(this, C2752R.C2754id.isSpamSwitch);

    /* renamed from: v */
    public final g f10642v = C19286f.m13662q(this, C2752R.C2754id.isVerifiedBusinessSwitch);

    /* renamed from: w */
    public final g f10643w = C19286f.m13662q(this, C2752R.C2754id.isVerifiedSwitch);

    /* renamed from: x */
    public final g f10644x = C19286f.m13662q(this, C2752R.C2754id.showAd);

    /* renamed from: y */
    public final g f10645y = C19286f.m13662q(this, C2752R.C2754id.showPopup);

    /* renamed from: z */
    public final g f10646z = C19286f.m13662q(this, C2752R.C2754id.showTimezone);

    /* renamed from: A */
    public final g f10619A = C19286f.m13662q(this, C2752R.C2754id.useLongText);

    /* renamed from: B */
    public final g f10620B = C19286f.m13662q(this, C2752R.C2754id.showCallReasonPicker);

    @e(c = "com.truecaller.callerid.window.CallerIdPopupQaActivity", f = "CallerIdPopupQaActivity.kt", l = {199}, m = "addIncomingVideoId")
    /* renamed from: com.truecaller.callerid.window.CallerIdPopupQaActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/window/CallerIdPopupQaActivity$a.class */
    public static final class C3598a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f10647d;

        /* renamed from: e */
        public int f10648e;

        /* renamed from: g */
        public Object f10650g;

        /* renamed from: h */
        public Object f10651h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3598a(d dVar) {
            super(dVar);
            CallerIdPopupQaActivity.this = r4;
        }

        /* renamed from: s */
        public final Object m35767s(Object obj) {
            this.f10647d = obj;
            this.f10648e |= Integer.MIN_VALUE;
            return CallerIdPopupQaActivity.this.m35771pa(null, this);
        }
    }

    /* renamed from: com.truecaller.callerid.window.CallerIdPopupQaActivity$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/window/CallerIdPopupQaActivity$b.class */
    public static final class View$OnClickListenerC3599b implements View.OnClickListener {

        @e(c = "com.truecaller.callerid.window.CallerIdPopupQaActivity$onCreate$1$1", f = "CallerIdPopupQaActivity.kt", l = {86}, m = "invokeSuspend")
        /* renamed from: com.truecaller.callerid.window.CallerIdPopupQaActivity$b$a */
        /* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/window/CallerIdPopupQaActivity$b$a.class */
        public static final class C3600a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f10653e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3600a(d dVar) {
                super(2, dVar);
                View$OnClickListenerC3599b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m35766i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C3600a(dVar);
            }

            /* renamed from: k */
            public final Object m35765k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C3600a(dVar).m35764s(s.a);
            }

            /* renamed from: s */
            public final Object m35764s(Object obj) {
                a aVar = a.a;
                int i = this.f10653e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    CallerIdPopupQaActivity callerIdPopupQaActivity = CallerIdPopupQaActivity.this;
                    this.f10653e = 1;
                    if (callerIdPopupQaActivity.m35768sa(this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return s.a;
            }
        }

        public View$OnClickListenerC3599b() {
            CallerIdPopupQaActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            h1 h1Var = h1.a;
            t0 t0Var = t0.a;
            s1.a.a.a.v0.f.d.w2(h1Var, q.c, (j0) null, new C3600a(null), 2, (Object) null);
        }
    }

    @e(c = "com.truecaller.callerid.window.CallerIdPopupQaActivity", f = "CallerIdPopupQaActivity.kt", l = {169}, m = "showCallerIdPopup")
    /* renamed from: com.truecaller.callerid.window.CallerIdPopupQaActivity$c */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/window/CallerIdPopupQaActivity$c.class */
    public static final class C3601c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f10655d;

        /* renamed from: e */
        public int f10656e;

        /* renamed from: g */
        public Object f10658g;

        /* renamed from: h */
        public Object f10659h;

        /* renamed from: i */
        public Object f10660i;

        /* renamed from: j */
        public Object f10661j;

        /* renamed from: k */
        public Object f10662k;

        /* renamed from: l */
        public int f10663l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3601c(d dVar) {
            super(dVar);
            CallerIdPopupQaActivity.this = r4;
        }

        /* renamed from: s */
        public final Object m35763s(Object obj) {
            this.f10655d = obj;
            this.f10656e |= Integer.MIN_VALUE;
            return CallerIdPopupQaActivity.this.m35768sa(this);
        }
    }

    /* renamed from: com.truecaller.callerid.window.CallerIdPopupQaActivity$d */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/window/CallerIdPopupQaActivity$d.class */
    public static final class RunnableC3602d implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ C12409a f10665b;

        public RunnableC3602d(C12409a c12409a) {
            CallerIdPopupQaActivity.this = r4;
            this.f10665b = c12409a;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AdCampaign adCampaign;
            AdCampaign.Style style;
            CallerIdPopupQaActivity callerIdPopupQaActivity = CallerIdPopupQaActivity.this;
            C12409a c12409a = this.f10665b;
            int i = CallerIdPopupQaActivity.f10618C;
            Objects.requireNonNull(callerIdPopupQaActivity);
            AdCampaign.C2818b c2818b = new AdCampaign.C2818b("");
            c2818b.f9837c = "#FFED00";
            c2818b.f9838d = "#ED232A";
            c2818b.f9839e = "#FFED00";
            c2818b.f9840f = "#ED232A";
            c2818b.f9841g = "https://upload.wikimedia.org/wikipedia/en/e/ed/Maggi_logo.png";
            List m3962T1 = C25225a.m3962T1(c2818b.m35994a());
            AdCampaign[] adCampaignArr = (AdCampaign[]) m3962T1.toArray(new AdCampaign[m3962T1.size()]);
            int i2 = 0;
            if (adCampaignArr == null) {
                adCampaignArr = new AdCampaign[0];
            }
            int length = adCampaignArr.length;
            while (true) {
                if (i2 >= length) {
                    adCampaign = null;
                    break;
                }
                AdCampaign adCampaign2 = adCampaignArr[i2];
                if (adCampaign2.f9821b != null) {
                    adCampaign = adCampaign2;
                    break;
                }
                i2++;
            }
            if (adCampaign == null || (style = adCampaign.f9821b) == null) {
                return;
            }
            l.d(style, "it");
            c12409a.mo23054M5(style);
        }
    }

    /* renamed from: com.truecaller.callerid.window.CallerIdPopupQaActivity$e */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/window/CallerIdPopupQaActivity$e.class */
    public static final class C3603e implements AbstractC12468y.AbstractC12470b {

        /* renamed from: a */
        public static final C3603e f10666a = new C3603e();

        @Override // p193e.p194a.p673d0.p674a.AbstractC12468y.AbstractC12470b
        /* renamed from: d */
        public final void mo22954d() {
        }
    }

    /* renamed from: com.truecaller.callerid.window.CallerIdPopupQaActivity$f */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/window/CallerIdPopupQaActivity$f.class */
    public static final class C3604f extends m implements s1.z.b.a<AbstractC15539j2> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3604f() {
            super(0);
            CallerIdPopupQaActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.callerid.window.CallerIdPopupQaActivity, android.app.Activity] */
        public Object invoke() {
            Context applicationContext = CallerIdPopupQaActivity.this.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            return ((AbstractC21187w1) applicationContext).mo10154s();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AbstractC19230g mo12512W = m35770qa().mo12512W();
        l.d(mo12512W, "trueGraph.deviceInfoHelper()");
        if (!mo12512W.mo13796a() && !mo12512W.mo13788i()) {
            finish();
        }
        C17422k.m16066m0(this, true);
        CallerIdPopupQaActivity.super.onCreate(bundle);
        setContentView((int) C2752R.layout.activity_caller_id_popup_qa);
        ((Button) this.f10645y.getValue()).setOnClickListener(new View$OnClickListenerC3599b());
    }

    public void onDestroy() {
        s1.a.a.a.v0.f.d.w2(h1.a, (f) null, (j0) null, new C12427c(this, null), 3, (Object) null);
        CallerIdPopupQaActivity.super.onDestroy();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* renamed from: pa */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m35771pa(java.lang.String r17, s1.w.d<? super s1.s> r18) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.callerid.window.CallerIdPopupQaActivity.m35771pa(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: qa */
    public final AbstractC15539j2 m35770qa() {
        return (AbstractC15539j2) this.f10621a.getValue();
    }

    /* renamed from: ra */
    public final String m35769ra(String str) {
        SwitchCompat switchCompat = (SwitchCompat) this.f10619A.getValue();
        l.d(switchCompat, "useLongText");
        if (switchCompat.isChecked()) {
            str = this.f10622b;
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x071f  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0699  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x06ac  */
    /* renamed from: sa */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m35768sa(s1.w.d<? super s1.s> r14) {
        /*
            Method dump skipped, instructions count: 1880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.callerid.window.CallerIdPopupQaActivity.m35768sa(s1.w.d):java.lang.Object");
    }
}
