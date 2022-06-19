package com.callapp.contacts.activity.viewcontroller;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.shehabic.droppy.C17101f;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/viewcontroller/TopHintViewController.class */
public class TopHintViewController implements ViewController {

    /* renamed from: a */
    private final View f24608a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder.class */
    public static class HintBuilder {

        /* renamed from: a */
        public int f24611a = C17101f.C17106e.default_menu_separator_background;

        /* renamed from: b */
        public CharSequence f24612b = "";

        /* renamed from: c */
        public CharSequence f24613c = "";

        /* renamed from: d */
        public int f24614d;

        /* renamed from: e */
        public Runnable f24615e;

        /* renamed from: f */
        private int f24616f;

        /* renamed from: g */
        private int f24617g;

        public HintBuilder() {
            this.f24616f = ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099691 : 2131099785);
            this.f24614d = 2131100140;
            this.f24617g = ThemeUtils.isThemeLight() ? 2131099784 : 2131100108;
            this.f24615e = null;
        }
    }

    public TopHintViewController(Context context, final HintBuilder hintBuilder) {
        final View inflate = LayoutInflater.from(context).inflate(2131558854, (ViewGroup) null);
        this.f24608a = inflate;
        inflate.setBackgroundColor(hintBuilder.f24616f);
        TextView textView = (TextView) inflate.findViewById(2131362973);
        TextView textView2 = (TextView) inflate.findViewById(2131362972);
        ImageView imageView = (ImageView) inflate.findViewById(2131362968);
        ImageView imageView2 = (ImageView) inflate.findViewById(2131362966);
        imageView2.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        textView.setText(hintBuilder.f24612b);
        textView.setTextColor(ThemeUtils.getColor(hintBuilder.f24617g));
        textView2.setText(hintBuilder.f24613c);
        textView2.setTextColor(ThemeUtils.getColor(hintBuilder.f24614d));
        ImageUtils.m27530a(imageView, hintBuilder.f24611a);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.viewcontroller._$$Lambda$TopHintViewController$Plocjfs4VrtE4qvZ_3tVz4wjQkE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TopHintViewController.this.m29379a(hintBuilder, inflate, view);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m29379a(final HintBuilder hintBuilder, View view, View view2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.activity.viewcontroller.TopHintViewController.1
            @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                TopHintViewController.this.getRootView().setVisibility(8);
                if (hintBuilder.f24615e != null) {
                    hintBuilder.f24615e.run();
                }
            }
        });
        view.startAnimation(alphaAnimation);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: a */
    public /* synthetic */ View mo26540a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: b */
    public /* synthetic */ void mo26534b() {
        getRootView().setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Context getContext() {
        Context context;
        context = getRootView().getContext();
        return context;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f24608a;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }
}
