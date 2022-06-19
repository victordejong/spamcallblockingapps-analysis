package com.truecaller.messaging.linkpreviews;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import e.f.a.n.q.d.i;
import e.f.a.n.q.d.y;
import kotlin.Metadata;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fR%\u0010\u0016\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R%\u0010\u001b\u001a\n \u0011*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u001aR%\u0010 \u001a\n \u0011*\u0004\u0018\u00010\u001c0\u001c8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0013\u001a\u0004\b\u001e\u0010\u001fR%\u0010#\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u0013\u001a\u0004\b\"\u0010\u0015¨\u0006$"}, d2 = {"Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "text", "Ls1/s;", "setTitle", "(Ljava/lang/String;)V", "setDescription", "Landroid/net/Uri;", "uri", "setImage", "(Landroid/net/Uri;)V", "Landroid/view/View$OnClickListener;", "listener", "setOnRemoveClickListener", "(Landroid/view/View$OnClickListener;)V", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "v", "Ls1/g;", "getTitle", "()Landroid/widget/TextView;", "title", "Landroid/widget/ImageView;", "w", "getImage", "()Landroid/widget/ImageView;", "image", "Landroid/view/View;", "t", "getBtnRemove", "()Landroid/view/View;", "btnRemove", "u", "getDescription", "description", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/linkpreviews/LinkPreviewDraftView.class */
public final class LinkPreviewDraftView extends ConstraintLayout {

    /* renamed from: t */
    public final g f13539t = C19286f.m13660s(this, C2752R.C2754id.btnRemove);

    /* renamed from: u */
    public final g f13540u = C19286f.m13660s(this, 2131363279);

    /* renamed from: v */
    public final g f13541v = C19286f.m13660s(this, 2131366469);

    /* renamed from: w */
    public final g f13542w = C19286f.m13660s(this, 2131364231);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkPreviewDraftView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        View.inflate(context, C2752R.layout.view_link_preview, this);
        setBackgroundResource(C2752R.C2753drawable.background_link_preview);
    }

    private final View getBtnRemove() {
        return (View) this.f13539t.getValue();
    }

    private final TextView getDescription() {
        return (TextView) this.f13540u.getValue();
    }

    private final ImageView getImage() {
        return (ImageView) this.f13542w.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f13541v.getValue();
    }

    public final void setDescription(String str) {
        l.e(str, "text");
        TextView description = getDescription();
        l.d(description, "description");
        description.setText(str);
    }

    public final void setImage(Uri uri) {
        ImageView image = getImage();
        l.d(image, "image");
        if (uri == null) {
            C19286f.m13687Q(image);
        } else {
            C19286f.m13684T(image);
        }
        C22234h mo8414k = ((C21853e) ComponentCallbacks2C22222c.m8445f(this)).mo8414k();
        mo8414k.mo8423S(uri);
        ((C21852d) mo8414k).m8966r0(new i(), new y((int) getResources().getDimension(2131166432))).m8427O(getImage());
    }

    public final void setOnRemoveClickListener(View.OnClickListener onClickListener) {
        l.e(onClickListener, "listener");
        getBtnRemove().setOnClickListener(onClickListener);
    }

    public final void setTitle(String str) {
        l.e(str, "text");
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(str);
    }
}
