package p193e.p194a.p195a.p237h1;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.tcpermissions.PermissionPoller;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010$J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001d\u0010\"\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006%"}, d2 = {"Le/a/a/h1/l;", "Ln3/b/a/q;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lcom/truecaller/tcpermissions/PermissionPoller;", C22021b.f61237c, "Lcom/truecaller/tcpermissions/PermissionPoller;", "permissionPoller", "Le/a/p5/a0;", "a", "Le/a/p5/a0;", "permissionUtil", "Landroid/widget/Button;", AbstractC2405c.f7629a, "Ls1/g;", "getPositiveButton", "()Landroid/widget/Button;", "positiveButton", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.h1.l */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/l.class */
public final class C6336l extends q {

    /* renamed from: a */
    public AbstractC19219a0 f21170a;

    /* renamed from: b */
    public PermissionPoller f21171b;

    /* renamed from: c */
    public final g f21172c = C19286f.m13659t(this, 2131365194);

    /* renamed from: e.a.a.h1.l$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/l$a.class */
    public static final class View$OnClickListenerC6337a implements View.OnClickListener {
        public View$OnClickListenerC6337a() {
            C6336l.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C6336l c6336l;
            Context context;
            AbstractC19219a0 abstractC19219a0 = C6336l.this.f21170a;
            if (abstractC19219a0 == null) {
                l.l("permissionUtil");
                throw null;
            }
            if (!abstractC19219a0.mo13822k() && (context = (c6336l = C6336l.this).getContext()) != null) {
                C19291g.m13495y1(c6336l.requireActivity());
                PermissionPoller permissionPoller = new PermissionPoller(context, new Handler(Looper.getMainLooper()), TruecallerInit.m34554wa(context, null));
                c6336l.f21171b = permissionPoller;
                permissionPoller.m34618a(PermissionPoller.Permission.DRAW_OVERLAY);
            }
            C6336l.this.dismiss();
        }
    }

    public void onCreate(Bundle bundle) {
        C6336l.super.onCreate(bundle);
        setStyle(0, 2131952153);
        Context context = getContext();
        Context applicationContext = context != null ? context.getApplicationContext() : null;
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = applicationContext.mo10154s();
        l.d(mo10154s, "(context?.applicationCon…GraphHolder).objectsGraph");
        AbstractC19219a0 mo11647c = mo10154s.mo11647c();
        l.d(mo11647c, "graph.permissionUtil()");
        this.f21170a = mo11647c;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.layout_um_onboarding, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        C6336l.super.onDismiss(dialogInterface);
        PermissionPoller permissionPoller = this.f21171b;
        if (permissionPoller != null) {
            permissionPoller.f15304b.removeCallbacks(permissionPoller);
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C6336l.super.onViewCreated(view, bundle);
        ((Button) this.f21172c.getValue()).setOnClickListener(new View$OnClickListenerC6337a());
    }
}
