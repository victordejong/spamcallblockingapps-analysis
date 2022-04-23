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
import com.shehabic.droppy.f;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/viewcontroller/TopHintViewController.class */
public class TopHintViewController implements ViewController {

    /* renamed from: a  reason: collision with root package name */
    private final View f13995a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder.class */
    public static class HintBuilder {

        /* renamed from: a  reason: collision with root package name */
        public int f13998a = f.e.default_menu_separator_background;

        /* renamed from: b  reason: collision with root package name */
        public CharSequence f13999b = "";

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f14000c = "";

        /* renamed from: d  reason: collision with root package name */
        public int f14001d;
        public Runnable e;
        private int f;
        private int g;

        public HintBuilder() {
            this.f = ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099691 : 2131099785);
            this.f14001d = 2131100140;
            this.g = ThemeUtils.isThemeLight() ? 2131099784 : 2131100108;
            this.e = null;
        }
    }

    public TopHintViewController(Context context, final HintBuilder hintBuilder) {
        final View inflate = LayoutInflater.from(context).inflate(2131558854, (ViewGroup) null);
        this.f13995a = inflate;
        inflate.setBackgroundColor(hintBuilder.f);
        TextView textView = (TextView) inflate.findViewById(2131362973);
        TextView textView2 = (TextView) inflate.findViewById(2131362972);
        ImageView imageView = (ImageView) inflate.findViewById(2131362968);
        ImageView imageView2 = (ImageView) inflate.findViewById(2131362966);
        imageView2.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        textView.setText(hintBuilder.f13999b);
        textView.setTextColor(ThemeUtils.getColor(hintBuilder.g));
        textView2.setText(hintBuilder.f14000c);
        textView2.setTextColor(ThemeUtils.getColor(hintBuilder.f14001d));
        ImageUtils.a(imageView, hintBuilder.f13998a);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.viewcontroller._$$Lambda$TopHintViewController$Plocjfs4VrtE4qvZ_3tVz4wjQkE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TopHintViewController.this.a(hintBuilder, inflate, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final HintBuilder hintBuilder, View view, View view2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.activity.viewcontroller.TopHintViewController.1
            @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                TopHintViewController.this.getRootView().setVisibility(8);
                if (hintBuilder.e != null) {
                    hintBuilder.e.run();
                }
            }
        });
        view.startAnimation(alphaAnimation);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ View a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ void b() {
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
        return this.f13995a;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }
}
