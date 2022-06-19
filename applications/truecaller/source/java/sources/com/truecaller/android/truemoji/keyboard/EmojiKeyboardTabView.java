package com.truecaller.android.truemoji.keyboard;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.truemoji.C2886R;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1221t.p1222a.AbstractC20300o;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1225v.C20316a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\u00020\u0001J/\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\r\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0003X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;", "Landroidx/recyclerview/widget/RecyclerView;", "", "w", "h", "oldw", "oldh", "Ls1/s;", "onSizeChanged", "(IIII)V", "", "Le/a/t/a/u/d;", "emojis", "setEmojis", "([Lcom/truecaller/android/truemoji/data/Emoji;)V", "Le/a/t/a/o;", "listener", "setOnEmojiClickListener", "(Le/a/t/a/o;)V", "Landroidx/recyclerview/widget/GridLayoutManager;", "a", "Landroidx/recyclerview/widget/GridLayoutManager;", "gridLayoutManager", "Le/a/t/a/v/a;", C22021b.f61237c, "Le/a/t/a/v/a;", "emojiAdapter", AbstractC2405c.f7629a, "I", "emojiSize", "truemoji_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView.class */
public final class EmojiKeyboardTabView extends RecyclerView {

    /* renamed from: a */
    public final GridLayoutManager f10062a;

    /* renamed from: b */
    public final C20316a f10063b;

    /* renamed from: c */
    public final int f10064c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmojiKeyboardTabView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, 1);
        gridLayoutManager.setRecycleChildrenOnDetach(true);
        this.f10062a = gridLayoutManager;
        C20316a c20316a = new C20316a();
        this.f10063b = c20316a;
        this.f10064c = context.getResources().getDimensionPixelSize(C2886R.dimen.emoji_size);
        setLayoutManager(gridLayoutManager);
        setAdapter(c20316a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f10062a.setSpanCount(Math.max(i / this.f10064c, 1));
    }

    public final void setEmojis(C20309d[] c20309dArr) {
        l.e(c20309dArr, "emojis");
        C20316a c20316a = this.f10063b;
        Objects.requireNonNull(c20316a);
        l.e(c20309dArr, "emojis");
        c20316a.f57129a = c20309dArr;
        this.f10063b.notifyDataSetChanged();
    }

    public final void setOnEmojiClickListener(AbstractC20300o abstractC20300o) {
        this.f10063b.f57130b = abstractC20300o;
    }
}
