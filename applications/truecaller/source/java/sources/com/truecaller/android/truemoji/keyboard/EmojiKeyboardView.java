package com.truecaller.android.truemoji.keyboard;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.truemoji.C2886R;
import e.m.a.g.x.e;
import java.util.List;
import java.util.concurrent.FutureTask;
import kotlin.Metadata;
import p193e.p194a.p1221t.p1222a.AbstractC20300o;
import p193e.p194a.p1221t.p1222a.AbstractC20301p;
import p193e.p194a.p1221t.p1222a.p1224u.C20310e;
import p193e.p194a.p1221t.p1222a.p1224u.C20311f;
import p193e.p194a.p1221t.p1222a.p1224u.C20314i;
import p193e.p194a.p1221t.p1222a.p1225v.C20320d;
import p193e.p194a.p1221t.p1222a.p1225v.C20323f;
import p193e.p194a.p1221t.p1222a.p1225v.C20325h;
import p193e.p194a.p1221t.p1222a.p1225v.View$OnClickListenerC20324g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/t/a/p;", "recentEmoji", "Ls1/s;", "setRecentEmoji", "(Le/a/t/a/p;)V", "Le/a/t/a/o;", "listener", "setOnEmojiClickListener", "(Le/a/t/a/o;)V", "Le/a/t/a/v/d;", "t", "Le/a/t/a/v/d;", "adapter", "u", "Le/a/t/a/o;", "clickListener", "truemoji_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/truemoji/keyboard/EmojiKeyboardView.class */
public final class EmojiKeyboardView extends ConstraintLayout {

    /* renamed from: t */
    public final C20320d f10065t;

    /* renamed from: u */
    public AbstractC20300o f10066u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmojiKeyboardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        C20311f c20311f;
        l.e(context, AnalyticsConstants.CONTEXT);
        ViewGroup.inflate(context, C2886R.layout.view_emoji_keyboard, this);
        View findViewById = findViewById(C2886R.C2888id.tabLayout);
        l.d(findViewById, "findViewById(R.id.tabLayout)");
        TabLayout tabLayout = (TabLayout) findViewById;
        View findViewById2 = findViewById(C2886R.C2888id.backspaceButton);
        l.d(findViewById2, "findViewById(R.id.backspaceButton)");
        View findViewById3 = findViewById(C2886R.C2888id.viewPager);
        l.d(findViewById3, "findViewById(R.id.viewPager)");
        ViewPager2 viewPager2 = (ViewPager2) findViewById3;
        FutureTask<C20311f> futureTask = C20314i.f57127a;
        if (futureTask == null || (c20311f = futureTask.get()) == null) {
            throw new IllegalStateException("Emoji data loader has not been set");
        }
        List<C20310e> list = c20311f.f57125b;
        C20320d c20320d = new C20320d(list);
        this.f10065t = c20320d;
        viewPager2.setAdapter(c20320d);
        new e(tabLayout, viewPager2, new C20323f(list)).a();
        findViewById2.setOnClickListener(new View$OnClickListenerC20324g(this));
        viewPager2.f1520c.f74596a.add(new C20325h(this));
    }

    public final void setOnEmojiClickListener(AbstractC20300o abstractC20300o) {
        this.f10066u = abstractC20300o;
        this.f10065t.f57139c = abstractC20300o;
    }

    public final void setRecentEmoji(AbstractC20301p abstractC20301p) {
        l.e(abstractC20301p, "recentEmoji");
        C20320d c20320d = this.f10065t;
        c20320d.f57137a = abstractC20301p;
        c20320d.notifyDataSetChanged();
    }
}
