package com.truecaller.details_view.p162ui.presence;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.C3857R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1275v.p1276a.AbstractC20721d;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1278b.AbstractC20675b;
import p193e.p194a.p1275v.p1276a.p1278b.AbstractC20676c;
import p193e.p194a.p1275v.p1276a.p1278b.C20672a;
import p193e.p194a.p1275v.p1304k.C20906m;
import p193e.p194a.p1275v.p1305l.AbstractC20914b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u0002J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0010\u0010\u000bJ\u000f\u0010\u0011\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0011\u0010\u000bR\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/truecaller/details_view/ui/presence/PresenceView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/v/a/b/c;", "Landroid/graphics/drawable/Drawable;", RemoteMessageConst.Notification.ICON, "Le/a/l4/e;", "presence", "Ls1/s;", "L0", "(Landroid/graphics/drawable/Drawable;Le/a/l4/e;)V", "Q", "()V", "Le/a/v/a/s;", "detailsViewModel", "set", "(Le/a/v/a/s;)V", "onAttachedToWindow", "onDetachedFromWindow", "Le/a/v/k/m;", "u", "Le/a/v/k/m;", "binding", "Le/a/v/a/b/b;", "t", "Le/a/v/a/b/b;", "getPresenter", "()Le/a/v/a/b/b;", "setPresenter", "(Le/a/v/a/b/b;)V", "presenter", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.details_view.ui.presence.PresenceView */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/presence/PresenceView.class */
public final class PresenceView extends ConstraintLayout implements AbstractC20676c {
    @Inject

    /* renamed from: t */
    public AbstractC20675b f11785t;

    /* renamed from: u */
    public final C20906m f11786u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PresenceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C3857R.layout.view_presence, this);
        int i = C3857R.C3859id.availability;
        TextView textView = (TextView) findViewById(i);
        if (textView != null) {
            i = C3857R.C3859id.icon;
            ImageView imageView = (ImageView) findViewById(i);
            if (imageView != null) {
                C20906m c20906m = new C20906m(this, textView, imageView);
                l.d(c20906m, "ViewPresenceBinding.infl…ater.from(context), this)");
                this.f11786u = c20906m;
                Context applicationContext = context.getApplicationContext();
                Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider");
                ((AbstractC20914b) applicationContext).mo10529v().mo10538l(this);
                return;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    @Override // p193e.p194a.p1275v.p1276a.p1278b.AbstractC20676c
    /* renamed from: L0 */
    public void mo10863L0(Drawable drawable, C17409e c17409e) {
        l.e(drawable, RemoteMessageConst.Notification.ICON);
        l.e(c17409e, "presence");
        this.f11786u.f58808c.setImageDrawable(drawable);
        TextView textView = this.f11786u.f58807b;
        l.d(textView, "binding.availability");
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        textView.setText(C17409e.m16135d(c17409e, context, false, 2));
        C19286f.m13684T(this);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1278b.AbstractC20676c
    /* renamed from: Q */
    public void mo10862Q() {
        C19286f.m13689O(this);
    }

    public final AbstractC20675b getPresenter() {
        AbstractC20675b abstractC20675b = this.f11785t;
        if (abstractC20675b != null) {
            return abstractC20675b;
        }
        l.l("presenter");
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20675b abstractC20675b = this.f11785t;
        if (abstractC20675b != null) {
            ((C20672a) abstractC20675b).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AbstractC20675b abstractC20675b = this.f11785t;
        if (abstractC20675b == null) {
            l.l("presenter");
            throw null;
        }
        ((C20672a) abstractC20675b).mo9806c();
        super.onDetachedFromWindow();
    }

    public final void set(C20847s c20847s) {
        l.e(c20847s, "detailsViewModel");
        AbstractC20675b abstractC20675b = this.f11785t;
        if (abstractC20675b == null) {
            l.l("presenter");
            throw null;
        }
        C20672a c20672a = (C20672a) abstractC20675b;
        Objects.requireNonNull(c20672a);
        l.e(c20847s, "detailsViewModel");
        if (c20847s.f58579b instanceof AbstractC20721d.AbstractC20727f) {
            AbstractC20676c abstractC20676c = (AbstractC20676c) c20672a.f57683a;
            if (abstractC20676c == null) {
                return;
            }
            abstractC20676c.mo10862Q();
            return;
        }
        Contact contact = c20847s.f58578a;
        AbstractC17405c abstractC17405c = c20672a.f58227g;
        Object[] array = ((ArrayList) C17891a1.C17902k.m15636X(contact)).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        AbstractC17405c.AbstractC17406a mo9921c = abstractC17405c.mo9921c((String[]) Arrays.copyOf(strArr, strArr.length));
        c20672a.f58226f = mo9921c;
        if (mo9921c == null) {
            return;
        }
        mo9921c.mo9915b(c20672a);
    }

    public final void setPresenter(AbstractC20675b abstractC20675b) {
        l.e(abstractC20675b, "<set-?>");
        this.f11785t = abstractC20675b;
    }
}
