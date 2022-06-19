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

    /* renamed from: a */
    private String f22032a;

    /* renamed from: b */
    private String f22033b;

    /* renamed from: c */
    private String f22034c;

    /* renamed from: d */
    private int f22035d;

    /* renamed from: e */
    private int f22036e;

    /* renamed from: f */
    private PorterDuff.Mode f22037f;

    /* renamed from: g */
    private View.OnClickListener f22038g;

    public ImageAndTextPusherOverlayView(Context context, int i, int i2, PorterDuff.Mode mode, int i3, int i4, int i5, View.OnClickListener onClickListener, BaseOverlayView.OverlayViewListener overlayViewListener) {
        this(context, i, i2, mode, Activities.getString(i3), Activities.getString(i4), Activities.getString(i5), onClickListener, overlayViewListener);
    }

    public ImageAndTextPusherOverlayView(Context context, int i, int i2, PorterDuff.Mode mode, String str, String str2, String str3, View.OnClickListener onClickListener, BaseOverlayView.OverlayViewListener overlayViewListener) {
        super(context, false, true, overlayViewListener);
        this.f22035d = i;
        this.f22036e = i2;
        this.f22037f = mode;
        this.f22032a = str;
        this.f22033b = str2;
        this.f22034c = str3;
        this.f22038g = onClickListener;
    }

    /* renamed from: a */
    private static void m30861a(TextView textView, String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            textView.setText(str);
        } else {
            textView.setVisibility(8);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.PusherOverlayView
    /* renamed from: a */
    protected final void mo30860a() {
        ImageView imageView = (ImageView) findViewById(2131363605);
        int i = this.f22035d;
        if (i != 0) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, i, getContext());
            glideRequestBuilder.f28241g = Integer.valueOf(ThemeUtils.getColor(2131099784));
            GlideUtils.GlideRequestBuilder m27025a = glideRequestBuilder.m27025a(this.f22036e, this.f22037f);
            m27025a.f28246l = true;
            m27025a.m27013d();
        } else {
            imageView.setVisibility(8);
        }
        m30861a((TextView) findViewById(2131363454), this.f22032a);
        m30861a((TextView) findViewById(2131363453), this.f22033b);
        TextView textView = (TextView) findViewById(2131364222);
        if (textView != null) {
            textView.setText(this.f22034c);
            View.OnClickListener onClickListener = this.f22038g;
            if (onClickListener != null) {
                textView.setOnClickListener(onClickListener);
            } else {
                textView.setVisibility(4);
            }
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public int getLayoutResId() {
        return 2131558729;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    protected int getOverlayInitHeight() {
        return getAnimationContainer().getLayoutParams().height;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public int getStartYposition() {
        return (Activities.getScreenHeight(Activities.getScreenOrientation()) - getOverlayInitHeight()) / 2;
    }
}
