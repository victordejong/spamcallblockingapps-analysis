package p193e.p194a.p1221t.p1222a.p1225v;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import com.truecaller.android.truemoji.C2886R;
import com.truecaller.android.truemoji.keyboard.EmojiView;
import java.util.Objects;
import p193e.p194a.p1221t.p1222a.AbstractC20300o;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import s1.z.c.l;
/* renamed from: e.a.t.a.v.i */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/v/i.class */
public final class C20326i extends PopupWindow {

    /* renamed from: a */
    public final ViewGroup f57146a;

    /* renamed from: b */
    public AbstractC20300o f57147b;

    /* renamed from: c */
    public final View f57148c;

    /* renamed from: e.a.t.a.v.i$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/v/i$a.class */
    public static final class View$OnClickListenerC20327a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C20309d f57149a;

        /* renamed from: b */
        public final /* synthetic */ C20326i f57150b;

        public View$OnClickListenerC20327a(C20309d c20309d, C20326i c20326i, EmojiView emojiView) {
            this.f57149a = c20309d;
            this.f57150b = c20326i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC20300o abstractC20300o = this.f57150b.f57147b;
            if (abstractC20300o != null) {
                abstractC20300o.mo11244d(this.f57149a);
            }
            this.f57150b.dismiss();
        }
    }

    public C20326i(View view) {
        l.e(view, "parent");
        this.f57148c = view;
        setWidth(-2);
        setHeight(-2);
        setContentView(LayoutInflater.from(view.getContext()).inflate(C2886R.layout.view_emoji_variants_popup, (ViewGroup) null, false));
        View findViewById = getContentView().findViewById(C2886R.C2888id.container);
        l.d(findViewById, "contentView.findViewById(R.id.container)");
        this.f57146a = (ViewGroup) findViewById;
        setOutsideTouchable(true);
    }

    /* renamed from: a */
    public final void m11249a(EmojiView emojiView, C20309d c20309d) {
        C20309d[] c20309dArr;
        l.e(emojiView, "emojiView");
        l.e(c20309d, "emoji");
        this.f57146a.removeAllViews();
        for (C20309d c20309d2 : c20309d.f57120b) {
            View inflate = LayoutInflater.from(emojiView.getContext()).inflate(C2886R.layout.item_emoji, this.f57146a, false);
            Objects.requireNonNull(inflate, "null cannot be cast to non-null type com.truecaller.android.truemoji.keyboard.EmojiView");
            EmojiView emojiView2 = (EmojiView) inflate;
            emojiView2.setEmoji(c20309d2);
            emojiView2.setOnClickListener(new View$OnClickListenerC20327a(c20309d2, this, emojiView));
            this.f57146a.addView(emojiView2);
        }
        int[] iArr = {0, 0};
        emojiView.getLocationOnScreen(iArr);
        this.f57146a.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        showAtLocation(this.f57148c, 0, iArr[0] - ((this.f57146a.getMeasuredWidth() - emojiView.getWidth()) / 2), iArr[1] - this.f57146a.getMeasuredHeight());
    }
}
