package com.callapp.contacts.activity.contact.details.overlay;

import android.content.Context;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView.class */
public class ImageAndTextPusherOverlayView extends PusherOverlayView {

    /* renamed from: a  reason: collision with root package name */
    private String f12251a;

    /* renamed from: b  reason: collision with root package name */
    private String f12252b;

    /* renamed from: c  reason: collision with root package name */
    private String f12253c;

    /* renamed from: d  reason: collision with root package name */
    private int f12254d;
    private int e;
    private PorterDuff.Mode f;
    private View.OnClickListener g;

    public ImageAndTextPusherOverlayView(Context context, int i, int i2, PorterDuff.Mode mode, int i3, int i4, int i5, View.OnClickListener onClickListener, BaseOverlayView.OverlayViewListener overlayViewListener) {
        this(context, i, i2, mode, Activities.getString(i3), Activities.getString(i4), Activities.getString(i5), onClickListener, overlayViewListener);
    }

    public ImageAndTextPusherOverlayView(Context context, int i, int i2, PorterDuff.Mode mode, String str, String str2, String str3, View.OnClickListener onClickListener, BaseOverlayView.OverlayViewListener overlayViewListener) {
        super(context, false, true, overlayViewListener);
        this.f12254d = i;
        this.e = i2;
        this.f = mode;
        this.f12251a = str;
        this.f12252b = str2;
        this.f12253c = str3;
        this.g = onClickListener;
    }

    private static void a(TextView textView, String str) {
        if (StringUtils.b((CharSequence) str)) {
            textView.setText(str);
        } else {
            textView.setVisibility(8);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.PusherOverlayView
    protected final void a() {
        ImageView imageView = (ImageView) findViewById(2131363605);
        int i = this.f12254d;
        if (i != 0) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, i, getContext());
            glideRequestBuilder.g = Integer.valueOf(ThemeUtils.getColor(2131099784));
            GlideUtils.GlideRequestBuilder a2 = glideRequestBuilder.a(this.e, this.f);
            a2.l = true;
            a2.d();
        } else {
            imageView.setVisibility(8);
        }
        a((TextView) findViewById(2131363454), this.f12251a);
        a((TextView) findViewById(2131363453), this.f12252b);
        TextView textView = (TextView) findViewById(2131364222);
        if (textView != null) {
            textView.setText(this.f12253c);
            View.OnClickListener onClickListener = this.g;
            if (onClickListener != null) {
                textView.setOnClickListener(onClickListener);
            } else {
                textView.setVisibility(4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public int getLayoutResId() {
        return 2131558729;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    protected int getOverlayInitHeight() {
        return getAnimationContainer().getLayoutParams().height;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public int getStartYposition() {
        return (Activities.getScreenHeight(Activities.getScreenOrientation()) - getOverlayInitHeight()) / 2;
    }
}
