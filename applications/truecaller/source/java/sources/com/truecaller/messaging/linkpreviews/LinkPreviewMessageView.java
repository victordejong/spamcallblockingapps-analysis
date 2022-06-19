package com.truecaller.messaging.linkpreviews;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.LinkPreviewType;
import e.f.a.n.q.d.i;
import e.f.a.n.q.d.y;
import kotlin.Metadata;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p195a.p283v0.View$OnClickListenerC7288d;
import p193e.p194a.p682e.C12864a2;
import s1.g;
import s1.s;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u001f\u0010\f\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0011\u001a\u00020\u00042\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0019\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aR%\u0010 \u001a\n \u001b*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR%\u0010%\u001a\n \u001b*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010$R%\u0010)\u001a\n \u001b*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001d\u001a\u0004\b'\u0010(R%\u0010,\u001a\n \u001b*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\u001d\u001a\u0004\b+\u0010$R%\u0010/\u001a\n \u001b*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\u001d\u001a\u0004\b.\u0010(¨\u00060"}, d2 = {"Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "text", "Ls1/s;", "setTitle", "(Ljava/lang/String;)V", "setDescription", "Landroid/net/Uri;", "uri", "Lcom/truecaller/messaging/conversation/LinkPreviewType;", "type", "g1", "(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/LinkPreviewType;)V", "Lkotlin/Function1;", "Landroid/view/View;", "listener", "setOnPlayButtonClickListener", "(Ls1/z/b/l;)V", "Landroid/graphics/drawable/Drawable;", RemoteMessageConst.Notification.ICON, "setTitleIcon", "(Landroid/graphics/drawable/Drawable;)V", "Landroid/widget/ImageView;", ViewAction.VIEW, "f1", "(Landroid/net/Uri;Landroid/widget/ImageView;)V", "kotlin.jvm.PlatformType", "x", "Ls1/g;", "getPlayButton", "()Landroid/view/View;", "playButton", "Landroid/widget/TextView;", "w", "getTitle", "()Landroid/widget/TextView;", "title", "u", "getImage", "()Landroid/widget/ImageView;", "image", "t", "getDescription", "description", "v", "getBigImage", "bigImage", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/linkpreviews/LinkPreviewMessageView.class */
public final class LinkPreviewMessageView extends ConstraintLayout {

    /* renamed from: t */
    public final g f13543t = C19286f.m13660s(this, 2131363279);

    /* renamed from: u */
    public final g f13544u = C19286f.m13660s(this, 2131364231);

    /* renamed from: v */
    public final g f13545v = C19286f.m13660s(this, C2752R.C2754id.bigImage);

    /* renamed from: w */
    public final g f13546w = C19286f.m13660s(this, 2131366469);

    /* renamed from: x */
    public final g f13547x = C19286f.m13660s(this, C2752R.C2754id.playButton);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkPreviewMessageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        View.inflate(context, C2752R.layout.view_message_link_preview, this);
        setBackgroundResource(C2752R.C2753drawable.background_link_preview);
    }

    private final ImageView getBigImage() {
        return (ImageView) this.f13545v.getValue();
    }

    private final TextView getDescription() {
        return (TextView) this.f13543t.getValue();
    }

    private final ImageView getImage() {
        return (ImageView) this.f13544u.getValue();
    }

    private final View getPlayButton() {
        return (View) this.f13547x.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f13546w.getValue();
    }

    /* renamed from: f1 */
    public final void m34974f1(Uri uri, ImageView imageView) {
        C22234h mo8414k = ((C21853e) ComponentCallbacks2C22222c.m8445f(this)).mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = uri;
        c21852d.f61771N = true;
        ((C21852d) mo8414k).m8966r0(new i(), new y((int) getResources().getDimension(2131166432))).m8427O(imageView);
    }

    /* renamed from: g1 */
    public final void m34973g1(Uri uri, LinkPreviewType linkPreviewType) {
        l.e(linkPreviewType, "type");
        boolean z = true;
        boolean z2 = !C12864a2.m22540r(uri != null ? Boolean.valueOf(C19286f.m13665n(uri)) : null);
        int ordinal = linkPreviewType.ordinal();
        if (ordinal == 0) {
            ImageView bigImage = getBigImage();
            l.d(bigImage, "bigImage");
            C19286f.m13689O(bigImage);
            ImageView image = getImage();
            l.d(image, "image");
            C19286f.m13683U(image, z2);
            ImageView image2 = getImage();
            l.d(image2, "image");
            m34974f1(uri, image2);
        } else if (ordinal == 1 || ordinal == 2) {
            ImageView image3 = getImage();
            l.d(image3, "image");
            C19286f.m13689O(image3);
            ImageView bigImage2 = getBigImage();
            l.d(bigImage2, "bigImage");
            C19286f.m13683U(bigImage2, z2);
            ImageView bigImage3 = getBigImage();
            l.d(bigImage3, "bigImage");
            m34974f1(uri, bigImage3);
        } else if (ordinal == 3) {
            ImageView bigImage4 = getBigImage();
            l.d(bigImage4, "bigImage");
            C19286f.m13689O(bigImage4);
            ImageView image4 = getImage();
            l.d(image4, "image");
            C19286f.m13684T(image4);
            getImage().setImageResource(C2752R.C2753drawable.ic_empty_link_preview);
        }
        View playButton = getPlayButton();
        l.d(playButton, "playButton");
        if (!z2 || linkPreviewType != LinkPreviewType.PLAYABLE) {
            z = false;
        }
        C19286f.m13683U(playButton, z);
        ImageView image5 = getImage();
        l.d(image5, "image");
        ViewGroup.LayoutParams layoutParams = image5.getLayoutParams();
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        layoutParams.height = (int) context.getResources().getDimension(linkPreviewType == LinkPreviewType.EMPTY ? 2131165503 : 2131165513);
    }

    public final void setDescription(String str) {
        l.e(str, "text");
        TextView description = getDescription();
        l.d(description, "description");
        description.setText(str);
    }

    public final void setOnPlayButtonClickListener(s1.z.b.l<? super View, s> lVar) {
        l.e(lVar, "listener");
        getPlayButton().setOnClickListener(new View$OnClickListenerC7288d(lVar));
    }

    public final void setTitle(String str) {
        l.e(str, "text");
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(str);
    }

    public final void setTitleIcon(Drawable drawable) {
        TextView title = getTitle();
        l.d(title, "title");
        C19291g.m13583U1(title, null, null, drawable, null, 11);
    }
}
