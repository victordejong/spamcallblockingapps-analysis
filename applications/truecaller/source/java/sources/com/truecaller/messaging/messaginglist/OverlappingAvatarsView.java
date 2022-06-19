package com.truecaller.messaging.messaginglist;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\u0006J!\u0010\n\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bR%\u0010\u0010\u001a\n \f*\u0004\u0018\u00010\b0\b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\r\u001a\u0004\b\u000e\u0010\u000fR%\u0010\u0013\u001a\n \f*\u0004\u0018\u00010\b0\b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\r\u001a\u0004\b\u0012\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;", "Landroid/widget/FrameLayout;", "Landroid/net/Uri;", "uri", "Ls1/s;", "setFirstAvatar", "(Landroid/net/Uri;)V", "setSecondAvatar", "Landroid/widget/ImageView;", ViewAction.VIEW, "a", "(Landroid/net/Uri;Landroid/widget/ImageView;)V", "kotlin.jvm.PlatformType", "Ls1/g;", "getIvFirst", "()Landroid/widget/ImageView;", "ivFirst", C22021b.f61237c, "getIvSecond", "ivSecond", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/messaginglist/OverlappingAvatarsView.class */
public final class OverlappingAvatarsView extends FrameLayout {

    /* renamed from: a */
    public final g f13577a = C19286f.m13660s(this, 2131364496);

    /* renamed from: b */
    public final g f13578b = C19286f.m13660s(this, 2131364502);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OverlappingAvatarsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(context, AnalyticsConstants.CONTEXT);
        FrameLayout.inflate(context, C2752R.layout.layout_overlapping_avatars, this);
    }

    private final ImageView getIvFirst() {
        return (ImageView) this.f13577a.getValue();
    }

    private final ImageView getIvSecond() {
        return (ImageView) this.f13578b.getValue();
    }

    /* renamed from: a */
    public final void m34951a(Uri uri, ImageView imageView) {
        C22234h mo8414k = ((C21853e) ComponentCallbacks2C22222c.m8445f(this)).mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = uri;
        c21852d.f61771N = true;
        ((C21852d) mo8414k).mo8102f().m8427O(imageView);
    }

    public final void setFirstAvatar(Uri uri) {
        ImageView ivFirst = getIvFirst();
        l.d(ivFirst, "ivFirst");
        C19286f.m13683U(ivFirst, uri != null);
        ImageView ivFirst2 = getIvFirst();
        l.d(ivFirst2, "ivFirst");
        m34951a(uri, ivFirst2);
    }

    public final void setSecondAvatar(Uri uri) {
        ImageView ivSecond = getIvSecond();
        l.d(ivSecond, "ivSecond");
        C19286f.m13683U(ivSecond, uri != null);
        ImageView ivSecond2 = getIvSecond();
        l.d(ivSecond2, "ivSecond");
        m34951a(uri, ivSecond2);
    }
}
