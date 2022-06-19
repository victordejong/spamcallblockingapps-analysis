package com.truecaller.common.p156ui.imageview;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p372b0.p373a.p391x.C8349a;
import p193e.p194a.p372b0.p373a.p391x.C8350b;
import p193e.p194a.p372b0.p373a.p391x.C8351c;
import p193e.p194a.p372b0.p373a.p391x.C8352d;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\u0018��2\u00020\u0001:\u0002\u001b\u001cJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J#\u0010\n\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u000e\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\u00020\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001a\u001a\u00020\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;", "Landroidx/appcompat/widget/AppCompatImageView;", "", "getBottomFadingEdgeStrength", "()F", "Landroid/net/Uri;", "uri", "Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;", "propertyCallBack", "Ls1/s;", "e", "(Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;)V", "Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;", "statusCallback", "f", "(Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;)V", "Le/f/a/r/h;", AbstractC2405c.f7629a, "Ls1/g;", "getSizeOptions", "()Le/f/a/r/h;", "sizeOptions", "", "d", "getFadeLength", "()I", "fadeLength", "a", C22021b.f61237c, "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.imageview.FullScreenProfilePictureView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/imageview/FullScreenProfilePictureView.class */
public final class FullScreenProfilePictureView extends AppCompatImageView {

    /* renamed from: e */
    public static final /* synthetic */ int f11239e = 0;

    /* renamed from: c */
    public final g f11240c = C25225a.m3978P1(C8352d.f25684b);

    /* renamed from: d */
    public final g f11241d;

    /* renamed from: com.truecaller.common.ui.imageview.FullScreenProfilePictureView$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/imageview/FullScreenProfilePictureView$a.class */
    public interface AbstractC3736a {
        /* renamed from: a */
        void mo35301a(C8349a c8349a);
    }

    /* renamed from: com.truecaller.common.ui.imageview.FullScreenProfilePictureView$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/imageview/FullScreenProfilePictureView$b.class */
    public interface AbstractC3737b {
        /* renamed from: a */
        void mo20716a();

        /* renamed from: b */
        void mo20715b();
    }

    /* renamed from: com.truecaller.common.ui.imageview.FullScreenProfilePictureView$c */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/imageview/FullScreenProfilePictureView$c.class */
    public static final class C3738c extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ View f11243c;

        /* renamed from: d */
        public final /* synthetic */ Uri f11244d;

        /* renamed from: e */
        public final /* synthetic */ AbstractC3737b f11245e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3738c(View view, Uri uri, AbstractC3737b abstractC3737b) {
            super(0);
            FullScreenProfilePictureView.this = r4;
            this.f11243c = view;
            this.f11244d = uri;
            this.f11245e = abstractC3737b;
        }

        public Object invoke() {
            if (this.f11243c.getWidth() > 0) {
                FullScreenProfilePictureView fullScreenProfilePictureView = FullScreenProfilePictureView.this;
                Uri uri = this.f11244d;
                AbstractC3737b abstractC3737b = this.f11245e;
                int i = FullScreenProfilePictureView.f11239e;
                fullScreenProfilePictureView.m35661f(uri, abstractC3737b);
            }
            return s.a;
        }
    }

    /* renamed from: com.truecaller.common.ui.imageview.FullScreenProfilePictureView$d */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/imageview/FullScreenProfilePictureView$d.class */
    public static final class C3739d implements AbstractC22590g<Drawable> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC3737b f11247b;

        public C3739d(AbstractC3737b abstractC3737b) {
            FullScreenProfilePictureView.this = r4;
            this.f11247b = abstractC3737b;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Drawable> abstractC22598k, boolean z) {
            AbstractC3737b abstractC3737b = this.f11247b;
            if (abstractC3737b != null) {
                abstractC3737b.mo20716a();
                return false;
            }
            return false;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onResourceReady(Drawable drawable, Object obj, AbstractC22598k<Drawable> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
            Drawable drawable2 = drawable;
            if (drawable2 == null) {
                return false;
            }
            FullScreenProfilePictureView.m35663d(FullScreenProfilePictureView.this, drawable2);
            AbstractC3737b abstractC3737b = this.f11247b;
            if (abstractC3737b == null) {
                return false;
            }
            abstractC3737b.mo20715b();
            return false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullScreenProfilePictureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f11241d = C25225a.m3978P1(new C8350b(context));
    }

    /* renamed from: d */
    public static final void m35663d(FullScreenProfilePictureView fullScreenProfilePictureView, Drawable drawable) {
        ViewParent parent = fullScreenProfilePictureView.getParent();
        Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
        View view = (View) parent;
        float width = view.getWidth() * (drawable.getIntrinsicHeight() / drawable.getIntrinsicWidth());
        int height = view.getHeight();
        float height2 = view.getHeight() / 2.0f;
        if (width >= height * 0.75f) {
            ViewGroup.LayoutParams layoutParams = fullScreenProfilePictureView.getLayoutParams();
            layoutParams.height = -1;
            fullScreenProfilePictureView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            fullScreenProfilePictureView.setLayoutParams(layoutParams);
            fullScreenProfilePictureView.setVerticalFadingEdgeEnabled(false);
        } else if (width >= height2) {
            ViewGroup.LayoutParams layoutParams2 = fullScreenProfilePictureView.getLayoutParams();
            layoutParams2.height = -2;
            fullScreenProfilePictureView.setScaleType(ImageView.ScaleType.FIT_START);
            fullScreenProfilePictureView.setLayoutParams(layoutParams2);
            fullScreenProfilePictureView.setFadingEdgeLength(fullScreenProfilePictureView.getFadeLength());
            fullScreenProfilePictureView.setVerticalFadingEdgeEnabled(true);
        } else {
            ViewGroup.LayoutParams layoutParams3 = fullScreenProfilePictureView.getLayoutParams();
            layoutParams3.height = C25225a.m4001J2(height2);
            fullScreenProfilePictureView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            fullScreenProfilePictureView.setLayoutParams(layoutParams3);
            fullScreenProfilePictureView.setFadingEdgeLength(fullScreenProfilePictureView.getFadeLength());
            fullScreenProfilePictureView.setVerticalFadingEdgeEnabled(true);
        }
    }

    private final int getFadeLength() {
        return ((Number) this.f11241d.getValue()).intValue();
    }

    private final C22591h getSizeOptions() {
        return (C22591h) this.f11240c.getValue();
    }

    /* renamed from: e */
    public final void m35662e(Uri uri, AbstractC3736a abstractC3736a) {
        m35661f(uri, null);
        C21853e c21853e = (C21853e) ComponentCallbacks2C22222c.m8445f(this);
        Objects.requireNonNull(c21853e);
        C21852d m8983a0 = new C21852d(c21853e.f61776a, c21853e, BitmapFactory.Options.class, c21853e.f61777b).m8983a0(getSizeOptions());
        m8983a0.f61767J = uri;
        m8983a0.f61771N = true;
        m8983a0.m8429M(new C8351c(this, abstractC3736a));
    }

    /* renamed from: f */
    public final void m35661f(Uri uri, AbstractC3737b abstractC3737b) {
        ViewParent parent = getParent();
        Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
        View view = (View) parent;
        if (view.getWidth() <= 0) {
            C19286f.m13654y(view, new C3738c(view, uri, abstractC3737b));
            return;
        }
        C22234h mo8414k = ((C21853e) ComponentCallbacks2C22222c.m8445f(this)).mo8414k();
        mo8414k.mo8423S(uri);
        ((C22234h) C17891a1.C17902k.m15597l((C21852d) mo8414k, uri)).mo8433H(new C3739d(abstractC3737b)).m8427O(this);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        return 1.0f;
    }
}
