package p193e.p194a.p1114o5;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import n3.r.a.k;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1406z3.C21849a;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.l;
import u3.a0;
import u3.e0;
import u3.f;
import u3.g;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.l0;
/* renamed from: e.a.o5.j1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/j1.class */
public class C19047j1 extends k {

    /* renamed from: e */
    public static final /* synthetic */ int f53199e = 0;

    /* renamed from: a */
    public Contact f53200a;

    /* renamed from: b */
    public AbstractC19048a f53201b;

    /* renamed from: c */
    public AbstractC19462a f53202c;

    /* renamed from: d */
    public C19050c f53203d;

    /* renamed from: e.a.o5.j1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/j1$a.class */
    public interface AbstractC19048a {
        /* renamed from: a */
        void mo10489a(Contact contact, byte[] bArr);
    }

    /* renamed from: e.a.o5.j1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/j1$b.class */
    public enum EnumC19049b {
        SUCCESS_NETWORK,
        SUCCESS_CACHE_HIT,
        FAILURE,
        TIMEOUT,
        CANCELLED
    }

    /* renamed from: e.a.o5.j1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/j1$c.class */
    public final class C19050c implements g {

        /* renamed from: a */
        public final f f53210a;

        /* renamed from: b */
        public EnumC19049b f53211b;

        public C19050c(a0 a0Var) {
            C19047j1.this = r6;
            g0.a aVar = new g0.a();
            aVar.j(a0Var);
            aVar.e("GET", (j0) null);
            g0 b = aVar.b();
            e0.a b2 = C8363a.m28640c().b();
            b2.b(7000L, TimeUnit.MILLISECONDS);
            this.f53210a = new e0(b2).a(b);
        }

        /* renamed from: a */
        public final void m14188a(EnumC19049b enumC19049b) {
            if (this.f53211b != null) {
                return;
            }
            this.f53211b = enumC19049b;
            AbstractC19462a abstractC19462a = C19047j1.this.f53202c;
            String str = enumC19049b.toString();
            HashMap hashMap = new HashMap();
            hashMap.put("Result", str);
            abstractC19462a.mo13271e(new AbstractC19502g.C19504b.C19505a("SaveContactPhoto", null, hashMap, null));
        }

        public void onFailure(f fVar, IOException iOException) {
            if (fVar.isCanceled()) {
                return;
            }
            if (!(iOException instanceof SocketTimeoutException)) {
                m14188a(EnumC19049b.FAILURE);
            } else {
                m14188a(EnumC19049b.TIMEOUT);
            }
            C19047j1.m14191OA(C19047j1.this, null);
        }

        public void onResponse(f fVar, k0 k0Var) {
            l0 l0Var;
            EnumC19049b enumC19049b = EnumC19049b.FAILURE;
            try {
                if (fVar.isCanceled()) {
                    return;
                }
                if (k0Var.j()) {
                    String str = "";
                    l.f("Content-Type", AnalyticsConstants.NAME);
                    String a = k0Var.g.a("Content-Type");
                    if (a != null) {
                        str = a;
                    }
                    if (str.startsWith("image/") && (l0Var = k0Var.h) != null) {
                        byte[] d = l0Var.d();
                        if (k0Var.j == null) {
                            m14188a(EnumC19049b.SUCCESS_NETWORK);
                        } else {
                            m14188a(EnumC19049b.SUCCESS_CACHE_HIT);
                        }
                        C19047j1.m14191OA(C19047j1.this, d);
                    }
                }
            } catch (IOException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            } finally {
                m14188a(enumC19049b);
                C19047j1.m14191OA(C19047j1.this, null);
            }
        }
    }

    /* renamed from: OA */
    public static void m14191OA(C19047j1 c19047j1, byte[] bArr) {
        if (!c19047j1.isAdded()) {
            return;
        }
        C21849a c21849a = C21849a.f60731b;
        C21849a.m8989a(C12864a2.m22592B(c19047j1.f53200a, true));
        C21849a.m8989a(C12864a2.m22592B(c19047j1.f53200a, false));
        c19047j1.m14190PA(bArr);
        try {
            c19047j1.dismissAllowingStateLoss();
        } catch (Exception e) {
        }
    }

    /* renamed from: QA */
    public static C19047j1 m14189QA(Contact contact, AbstractC19048a abstractC19048a) {
        C19047j1 c19047j1 = new C19047j1();
        Bundle bundle = new Bundle();
        bundle.putParcelable("arg_contact", contact);
        c19047j1.setArguments(bundle);
        c19047j1.f53201b = abstractC19048a;
        return c19047j1;
    }

    /* renamed from: PA */
    public final void m14190PA(byte[] bArr) {
        AbstractC19048a abstractC19048a = this.f53201b;
        if (abstractC19048a != null) {
            abstractC19048a.mo10489a(this.f53200a, bArr);
            return;
        }
        AssertionUtil.OnlyInDebug.fail("Callback must always be set");
        try {
            dismissAllowingStateLoss();
        } catch (Exception e) {
        }
    }

    public void onAttach(Context context) {
        C19047j1.super.onAttach(context);
        this.f53202c = ((TrueApp) context.getApplicationContext()).mo10154s().mo12776C4();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            p193e.p194a.p1114o5.C19047j1.super.onCreate(r1)
            r0 = r5
            e.a.o5.j1$a r0 = r0.f53201b
            if (r0 != 0) goto L18
            r0 = 1
            java.lang.String[] r0 = new java.lang.String[r0]
            r1 = r0
            r2 = 0
            java.lang.String r3 = "Callback not set for dialog"
            r1[r2] = r3
            com.truecaller.log.AssertionUtil.OnlyInDebug.fail(r0)
        L18:
            r0 = r5
            android.os.Bundle r0 = r0.getArguments()
            if (r0 == 0) goto L2f
            r0 = r5
            r1 = r5
            android.os.Bundle r1 = r1.getArguments()
            java.lang.String r2 = "arg_contact"
            android.os.Parcelable r1 = r1.getParcelable(r2)
            com.truecaller.data.entity.Contact r1 = (com.truecaller.data.entity.Contact) r1
            r0.f53200a = r1
        L2f:
            r0 = r5
            android.content.Context r0 = r0.getContext()
            if (r0 == 0) goto La2
            r0 = r5
            com.truecaller.data.entity.Contact r0 = r0.f53200a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L42
            goto La2
        L42:
            r0 = r6
            java.lang.String r0 = r0.m35573B()
            r7 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L53
        L4e:
            r0 = 0
            r6 = r0
            goto L78
        L53:
            r0 = r7
            java.lang.String r1 = "$this$toHttpUrl"
            s1.z.c.l.f(r0, r1)     // Catch: java.lang.Exception -> L70
            u3.a0$a r0 = new u3.a0$a     // Catch: java.lang.Exception -> L70
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: java.lang.Exception -> L70
            r0 = r6
            r1 = 0
            r2 = r7
            u3.a0$a r0 = r0.f(r1, r2)     // Catch: java.lang.Exception -> L70
            r0 = r6
            u3.a0 r0 = r0.b()     // Catch: java.lang.Exception -> L70
            r6 = r0
            goto L78
        L70:
            r6 = move-exception
            r0 = r6
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
            goto L4e
        L78:
            r0 = r6
            if (r0 == 0) goto L98
            e.a.o5.j1$c r0 = new e.a.o5.j1$c
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
            r0 = r5
            r1 = r6
            r0.f53203d = r1
            r0 = r6
            u3.f r0 = r0.f53210a
            r1 = r6
            r0.M1(r1)
            goto La1
        L98:
            r0 = r5
            r1 = 0
            r0.m14190PA(r1)
            r0 = r5
            r0.dismissAllowingStateLoss()     // Catch: java.lang.Exception -> La7
        La1:
            return
        La2:
            r0 = r5
            r0.dismissAllowingStateLoss()     // Catch: java.lang.Exception -> Lab
        La6:
            return
        La7:
            r6 = move-exception
            goto La1
        Lab:
            r6 = move-exception
            goto La6
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19047j1.onCreate(android.os.Bundle):void");
    }

    public Dialog onCreateDialog(Bundle bundle) {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f163m = false;
        g_a.m3664e(2131887897);
        return g_a.m3668a();
    }

    public void onDismiss(DialogInterface dialogInterface) {
        C19047j1.super.onDismiss(dialogInterface);
        C19050c c19050c = this.f53203d;
        if (c19050c == null || c19050c.f53210a.isCanceled()) {
            return;
        }
        c19050c.m14188a(EnumC19049b.CANCELLED);
        c19050c.f53210a.cancel();
    }
}
