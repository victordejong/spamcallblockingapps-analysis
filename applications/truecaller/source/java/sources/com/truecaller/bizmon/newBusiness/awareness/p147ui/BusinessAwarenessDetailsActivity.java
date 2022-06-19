package com.truecaller.bizmon.newBusiness.awareness.p147ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.bizmon.C3478R;
import com.truecaller.p183ui.view.TintedImageView;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p294b.p355m.C8056d;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\u001d\u0010\f\u001a\u00020\u00078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/b/m/d;", "a", "Ls1/g;", "pa", "()Le/a/b/m/d;", "binding", "<init>", "()V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.newBusiness.awareness.ui.BusinessAwarenessDetailsActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity.class */
public final class BusinessAwarenessDetailsActivity extends h {

    /* renamed from: a */
    public final g f10301a = C25225a.m3982O1(s1.h.c, new C3492a(this));

    /* renamed from: com.truecaller.bizmon.newBusiness.awareness.ui.BusinessAwarenessDetailsActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity$a.class */
    public static final class C3492a extends m implements a<C8056d> {

        /* renamed from: b */
        public final /* synthetic */ h f10302b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3492a(h hVar) {
            super(0);
            this.f10302b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f10302b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C3478R.layout.activity_business_awareness_details, (ViewGroup) null, false);
            int i = C3478R.C3480id.buttonClose;
            TintedImageView tintedImageView = (TintedImageView) inflate.findViewById(i);
            if (tintedImageView != null) {
                i = C3478R.C3480id.imageInCallUI;
                AppCompatImageView appCompatImageView = (AppCompatImageView) inflate.findViewById(i);
                if (appCompatImageView != null) {
                    return new C8056d((ConstraintLayout) inflate, tintedImageView, appCompatImageView);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.bizmon.newBusiness.awareness.ui.BusinessAwarenessDetailsActivity$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity$b.class */
    public static final class View$OnClickListenerC3493b implements View.OnClickListener {
        public View$OnClickListenerC3493b() {
            BusinessAwarenessDetailsActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.bizmon.newBusiness.awareness.ui.BusinessAwarenessDetailsActivity, android.app.Activity] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            BusinessAwarenessDetailsActivity.this.finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        int i;
        Bundle extras;
        C17422k.m16066m0(this, true);
        BusinessAwarenessDetailsActivity.super.onCreate(bundle);
        C8056d m35873pa = m35873pa();
        l.d(m35873pa, "binding");
        setContentView(m35873pa.f24830a);
        Intent intent = getIntent();
        Object obj = (intent == null || (extras = intent.getExtras()) == null) ? null : extras.get("type");
        if (l.a(obj, "verified_business")) {
            i = C3478R.C3479drawable.biz_verified_business_incall_screen;
        } else if (!l.a(obj, "priority_call")) {
            throw new Exception("Type need to pass");
        } else {
            i = C3478R.C3479drawable.biz_priority_incall_screen;
        }
        C17891a1.C17902k.m15655N1(this).m8965A(Integer.valueOf(i)).m8427O(m35873pa().f24832c);
        m35873pa().f24831b.setOnClickListener(new View$OnClickListenerC3493b());
    }

    /* renamed from: pa */
    public final C8056d m35873pa() {
        return (C8056d) this.f10301a.getValue();
    }
}
