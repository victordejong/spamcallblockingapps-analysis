package com.truecaller.android.truemoji.search;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.android.truemoji.keyboard.EmojiView;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1221t.p1222a.AbstractC20300o;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1225v.C20326i;
import p193e.p194a.p1221t.p1222a.p1227x.C20332d;
import p193e.p194a.p1221t.p1222a.p1227x.C20342j;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b��\u0018��2\u00020\u00012\u00020\u0002J\u001b\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001a\u001a\u00020\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u001f¨\u0006!"}, d2 = {"Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;", "Landroidx/recyclerview/widget/RecyclerView;", "Le/a/t/a/o;", "", "Le/a/t/a/u/d;", "emojis", "Ls1/s;", "setEmojis", "(Ljava/util/List;)V", "listener", "setEmojiClickListener", "(Le/a/t/a/o;)V", "emoji", "d", "(Le/a/t/a/u/d;)V", "Lcom/truecaller/android/truemoji/keyboard/EmojiView;", ViewAction.VIEW, "", AbstractC2405c.f7629a, "(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)Z", C22021b.f61237c, "()V", "Le/a/t/a/v/i;", "Ls1/g;", "getVariantPopup", "()Le/a/t/a/v/i;", "variantPopup", "Le/a/t/a/x/d;", "a", "Le/a/t/a/x/d;", "adapter", "Le/a/t/a/o;", "clickListener", "truemoji_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/truemoji/search/HorizontalEmojiList.class */
public final class HorizontalEmojiList extends RecyclerView implements AbstractC20300o {

    /* renamed from: a */
    public final C20332d f10069a;

    /* renamed from: b */
    public AbstractC20300o f10070b;

    /* renamed from: c */
    public final g f10071c = C25225a.m3978P1(new C20342j(this));

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalEmojiList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        C20332d c20332d = new C20332d(this);
        this.f10069a = c20332d;
        setLayoutManager(new LinearLayoutManager(context, 0, false));
        setItemAnimator(null);
        setAdapter(c20332d);
    }

    private final C20326i getVariantPopup() {
        return (C20326i) this.f10071c.getValue();
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20300o
    /* renamed from: b */
    public void mo11246b() {
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20300o
    /* renamed from: c */
    public boolean mo11245c(EmojiView emojiView, C20309d c20309d) {
        l.e(emojiView, ViewAction.VIEW);
        l.e(c20309d, "emoji");
        getVariantPopup().m11249a(emojiView, c20309d);
        return true;
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20300o
    /* renamed from: d */
    public void mo11244d(C20309d c20309d) {
        l.e(c20309d, "emoji");
        AbstractC20300o abstractC20300o = this.f10070b;
        if (abstractC20300o != null) {
            abstractC20300o.mo11244d(c20309d);
        }
    }

    public final void setEmojiClickListener(AbstractC20300o abstractC20300o) {
        this.f10070b = abstractC20300o;
    }

    public final void setEmojis(List<C20309d> list) {
        l.e(list, "emojis");
        C20332d c20332d = this.f10069a;
        Objects.requireNonNull(c20332d);
        l.e(list, "newEmojis");
        c20332d.f57158a = list;
        c20332d.notifyDataSetChanged();
    }
}
