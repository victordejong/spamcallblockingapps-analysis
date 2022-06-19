package p193e.p194a.p1357x3.p1358h;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.forcedupdate.UpdateType;
import com.truecaller.forcedupdate.p167ui.C3993R;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1357x3.AbstractC21394a;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p372b0.p373a.p374a.AbstractC8213a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018��2\u00020\u0001:\u0002<=B\u0007¢\u0006\u0004\b;\u0010\u0015J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006>"}, d2 = {"Le/a/x3/h/d;", "Le/a/b0/a/a/a;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "QA", "()Ljava/lang/Integer;", "", "ZA", "()Ljava/lang/String;", "YA", "XA", "WA", "bB", "()V", "aB", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Le/a/x3/h/g;", "n", "Le/a/x3/h/g;", "listener", "Le/a/x3/a;", "j", "Le/a/x3/a;", "getAppUpdateActionHelper", "()Le/a/x3/a;", "setAppUpdateActionHelper", "(Le/a/x3/a;)V", "appUpdateActionHelper", "Lcom/truecaller/forcedupdate/UpdateType;", "m", "Lcom/truecaller/forcedupdate/UpdateType;", "updateType", "Le/a/u3/g;", "l", "Le/a/u3/g;", "getFeaturesRegistry", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Le/a/x3/c;", "k", "Le/a/x3/c;", "getForceUpdateManager", "()Le/a/x3/c;", "setForceUpdateManager", "(Le/a/x3/c;)V", "forceUpdateManager", "<init>", "a", C22021b.f61237c, "forced-update-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.x3.h.d */
/* loaded from: classes9-dex2jar.jar:e/a/x3/h/d.class */
public final class C21404d extends AbstractC8213a {

    /* renamed from: j */
    public AbstractC21394a f59867j;

    /* renamed from: k */
    public AbstractC21396c f59868k;

    /* renamed from: l */
    public C20592g f59869l;

    /* renamed from: m */
    public UpdateType f59870m;

    /* renamed from: n */
    public AbstractC21409g f59871n;

    /* renamed from: e.a.x3.h.d$a */
    /* loaded from: classes9-dex2jar.jar:e/a/x3/h/d$a.class */
    public static final class C21405a {
        /* renamed from: a */
        public static final boolean m9766a(FragmentManager fragmentManager, AbstractC21396c abstractC21396c) {
            l.e(fragmentManager, "fragmentManager");
            l.e(abstractC21396c, "forcedUpdateManager");
            UpdateType mo9772d = abstractC21396c.mo9772d(true);
            if (mo9772d != UpdateType.NONE) {
                C21404d c21404d = new C21404d();
                Bundle bundle = new Bundle();
                bundle.putString("argForcedUpdateType", mo9772d.name());
                c21404d.setArguments(bundle);
                c21404d.show(fragmentManager, C21404d.class.getSimpleName());
                return true;
            }
            return false;
        }
    }

    /* renamed from: e.a.x3.h.d$b */
    /* loaded from: classes9-dex2jar.jar:e/a/x3/h/d$b.class */
    public interface AbstractC21406b {
        /* renamed from: Q */
        AbstractC21396c mo9765Q();

        /* renamed from: o */
        AbstractC21394a mo9764o();

        /* renamed from: x */
        C20592g mo9763x();
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: QA */
    public Integer mo9002QA() {
        return Integer.valueOf(C3993R.C3994drawable.ic_force_update_dialog);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        if (r4 != null) goto L11;
     */
    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo9000XA() {
        /*
            r3 = this;
            r0 = r3
            com.truecaller.forcedupdate.UpdateType r0 = r0.f59870m
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L29
            r0 = r4
            int r0 = r0.getAction()
            r5 = r0
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L20
            r0 = r4
            r1 = r5
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            goto L22
        L20:
            r0 = 0
            r4 = r0
        L22:
            r0 = r4
            if (r0 == 0) goto L29
            goto L2c
        L29:
            java.lang.String r0 = ""
            r4 = r0
        L2c:
            r0 = r4
            java.lang.String r1 = "updateType?.action?.let …xt?.getString(it) } ?: \"\""
            s1.z.c.l.d(r0, r1)
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1357x3.p1358h.C21404d.mo9000XA():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        if (r4 != null) goto L11;
     */
    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo8999YA() {
        /*
            r3 = this;
            r0 = r3
            com.truecaller.forcedupdate.UpdateType r0 = r0.f59870m
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L29
            r0 = r4
            int r0 = r0.getDescription()
            r5 = r0
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L20
            r0 = r4
            r1 = r5
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            goto L22
        L20:
            r0 = 0
            r4 = r0
        L22:
            r0 = r4
            if (r0 == 0) goto L29
            goto L2c
        L29:
            java.lang.String r0 = ""
            r4 = r0
        L2c:
            r0 = r4
            java.lang.String r1 = "updateType?.description?…xt?.getString(it) } ?: \"\""
            s1.z.c.l.d(r0, r1)
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1357x3.p1358h.C21404d.mo8999YA():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        if (r4 != null) goto L11;
     */
    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo8998ZA() {
        /*
            r3 = this;
            r0 = r3
            com.truecaller.forcedupdate.UpdateType r0 = r0.f59870m
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L29
            r0 = r4
            int r0 = r0.getTitle()
            r5 = r0
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L20
            r0 = r4
            r1 = r5
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            goto L22
        L20:
            r0 = 0
            r4 = r0
        L22:
            r0 = r4
            if (r0 == 0) goto L29
            goto L2c
        L29:
            java.lang.String r0 = ""
            r4 = r0
        L2c:
            r0 = r4
            java.lang.String r1 = "updateType?.title?.let {…xt?.getString(it) } ?: \"\""
            s1.z.c.l.d(r0, r1)
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1357x3.p1358h.C21404d.mo8998ZA():java.lang.String");
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: aB */
    public void mo8997aB() {
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        try {
            if (this.f59870m == UpdateType.DISCONTINUED) {
                Context context = getContext();
                if (context != null) {
                    AbstractC21394a abstractC21394a = this.f59867j;
                    if (abstractC21394a == null) {
                        l.l("appUpdateActionHelper");
                        throw null;
                    } else {
                        l.d(context, "it");
                        abstractC21394a.mo9779a(context);
                    }
                }
            } else {
                Context context2 = getContext();
                if (context2 != null) {
                    l.d(context2, "it");
                    AbstractC21394a abstractC21394a2 = this.f59867j;
                    if (abstractC21394a2 == null) {
                        l.l("appUpdateActionHelper");
                        throw null;
                    }
                    AbstractC21396c abstractC21396c = this.f59868k;
                    if (abstractC21396c == null) {
                        l.l("forceUpdateManager");
                        throw null;
                    }
                    abstractC21394a2.mo9777c(context2, abstractC21396c.mo9773c(), "forcedUpdate");
                }
            }
        } catch (ActivityNotFoundException e) {
            C10480a.m26061I1(e);
        }
        AbstractC21409g abstractC21409g = this.f59871n;
        if (abstractC21409g != null) {
            abstractC21409g.mo9759Th();
        }
        dismissAllowingStateLoss();
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C21404d.super.onAttach(context);
        if (getParentFragment() instanceof AbstractC21409g) {
            AbstractC21409g parentFragment = getParentFragment();
            Objects.requireNonNull(parentFragment, "null cannot be cast to non-null type com.truecaller.forcedupdate.ui.ForcedUpdateListener");
            this.f59871n = parentFragment;
        }
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        Object m3820x0 = C25225a.m3820x0(requireContext.getApplicationContext(), AbstractC21406b.class);
        l.d(m3820x0, "EntryPointAccessors.from…t, Injection::class.java)");
        AbstractC21406b abstractC21406b = (AbstractC21406b) m3820x0;
        this.f59867j = abstractC21406b.mo9764o();
        this.f59868k = abstractC21406b.mo9765Q();
        this.f59869l = abstractC21406b.mo9763x();
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C20592g c20592g = this.f59869l;
        String str = null;
        if (c20592g == null) {
            l.l("featuresRegistry");
            throw null;
        } else if (!c20592g.f58002p3.m10941a(c20592g, C20592g.f57695p6[224]).isEnabled()) {
            dismissAllowingStateLoss();
        } else {
            Bundle arguments = getArguments();
            if (arguments != null) {
                str = arguments.getString("argForcedUpdateType");
            }
            UpdateType m35319a = UpdateType.Companion.m35319a(str);
            this.f59870m = m35319a;
            if (m35319a != UpdateType.NONE) {
                return;
            }
            AssertionUtil.report("Update type not specified");
            dismissAllowingStateLoss();
        }
    }

    public void onDismiss(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        C21404d.super.onDismiss(dialogInterface);
        AbstractC21409g abstractC21409g = this.f59871n;
        if (abstractC21409g != null) {
            abstractC21409g.mo9759Th();
        }
    }
}
