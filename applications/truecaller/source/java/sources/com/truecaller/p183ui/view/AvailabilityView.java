package com.truecaller.p183ui.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.presence.p139v1.models.Availability;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p682e.C13279m0;
import s1.z.b.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u0002B\u0019\b\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\f\u0010\u0007J\u000f\u0010\r\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u000eR4\u0010\u0018\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u0019¨\u0006!"}, d2 = {"Lcom/truecaller/ui/view/AvailabilityView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Le/a/l4/c$b;", "Le/a/l4/e;", "presence", "Ls1/s;", "setAvailability", "(Le/a/l4/e;)V", "Le/a/l4/c$a;", "handle", "f", "(Le/a/l4/c$a;)V", "ki", "onAttachedToWindow", "()V", "onDetachedFromWindow", "g", "Lkotlin/Function1;", "", "Ls1/z/b/l;", "getCustomTextProvider", "()Ls1/z/b/l;", "setCustomTextProvider", "(Ls1/z/b/l;)V", "customTextProvider", "Le/a/l4/c$a;", "availabilityHandle", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.view.AvailabilityView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/view/AvailabilityView.class */
public final class AvailabilityView extends AppCompatTextView implements AbstractC17405c.AbstractC17407b {

    /* renamed from: f */
    public AbstractC17405c.AbstractC17406a f15880f;

    /* renamed from: g */
    public l<? super C17409e, ? extends CharSequence> f15881g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvailabilityView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(attributeSet, "attrs");
    }

    private final void setAvailability(C17409e c17409e) {
        String str;
        CharSequence charSequence;
        Availability availability;
        Availability.Status status = (c17409e == null || (availability = c17409e.f48755b) == null) ? null : availability.getStatus();
        C19286f.m13684T(this);
        if (status != null) {
            int ordinal = status.ordinal();
            boolean z = true;
            if (ordinal == 1 || ordinal == 2) {
                l<? super C17409e, ? extends CharSequence> lVar = this.f15881g;
                if (lVar == null || (charSequence = (CharSequence) lVar.d(c17409e)) == null) {
                    Context context = getContext();
                    s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                    str = C17409e.m16135d(c17409e, context, false, 2);
                } else {
                    str = charSequence;
                }
                setText(str);
                C13279m0.C13281b c13281b = new C13279m0.C13281b(getContext());
                c13281b.f38594c = false;
                c13281b.f38596e = 6;
                c13281b.f38597f = 12;
                if (status != Availability.Status.AVAILABLE) {
                    z = false;
                }
                c13281b.f38593b = z;
                setCompoundDrawablesRelativeWithIntrinsicBounds(c13281b.m21961a(), (Drawable) null, (Drawable) null, (Drawable) null);
                return;
            }
        }
        setCompoundDrawables(null, null, null, null);
        l<? super C17409e, ? extends CharSequence> lVar2 = this.f15881g;
        if (lVar2 != null) {
            setText((CharSequence) lVar2.d(c17409e));
        } else {
            C19286f.m13689O(this);
        }
    }

    /* renamed from: f */
    public final void m34483f(AbstractC17405c.AbstractC17406a abstractC17406a) {
        AbstractC17405c.AbstractC17406a abstractC17406a2 = this.f15880f;
        if (abstractC17406a2 != null && abstractC17406a2.isAttached()) {
            abstractC17406a2.mo9916a();
        }
        setAvailability(null);
        this.f15880f = abstractC17406a;
        m34482g();
    }

    /* renamed from: g */
    public final void m34482g() {
        AbstractC17405c.AbstractC17406a abstractC17406a = this.f15880f;
        if (abstractC17406a == null || abstractC17406a.isAttached()) {
            return;
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (!isAttachedToWindow()) {
            return;
        }
        setAvailability(null);
        abstractC17406a.mo9915b(this);
    }

    public final l<C17409e, CharSequence> getCustomTextProvider() {
        return this.f15881g;
    }

    @Override // p193e.p194a.p1049l4.AbstractC17405c.AbstractC17407b
    /* renamed from: ki */
    public void mo9914ki(C17409e c17409e) {
        setAvailability(c17409e);
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m34482g();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        AbstractC17405c.AbstractC17406a abstractC17406a = this.f15880f;
        if (abstractC17406a != null && abstractC17406a.isAttached()) {
            abstractC17406a.mo9916a();
        }
        setAvailability(null);
        super.onDetachedFromWindow();
    }

    public final void setCustomTextProvider(l<? super C17409e, ? extends CharSequence> lVar) {
        this.f15881g = lVar;
    }
}
