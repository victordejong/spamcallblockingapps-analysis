package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AbstractC0053Px;
import androidx.annotation.RequiresApi;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import java.util.Iterator;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p630d0.AbstractC14921e;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010)\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u0015\u0010\n\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0086\n\u001a0\u0010\r\u001a\u00020\u000e*\u00020\u00032!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u000e0\u0010H\u0086\b\u001aE\u0010\u0013\u001a\u00020\u000e*\u00020\u000326\u0010\u000f\u001a2\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u000e0\u0014H\u0086\b\u001a\u0015\u0010\u0016\u001a\u00020\u0002*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0007H\u0086\u0002\u001a\r\u0010\u0017\u001a\u00020\u000b*\u00020\u0003H\u0086\b\u001a\r\u0010\u0018\u001a\u00020\u000b*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u001a*\u00020\u0003H\u0086\u0002\u001a\u0015\u0010\u001b\u001a\u00020\u000e*\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\u001c\u001a\u00020\u000e*\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0086\n\u001a\u0017\u0010\u001d\u001a\u00020\u000e*\u00020\u001e2\b\b\u0001\u0010\u0006\u001a\u00020\u0007H\u0086\b\u001a5\u0010\u001f\u001a\u00020\u000e*\u00020\u001e2\b\b\u0003\u0010 \u001a\u00020\u00072\b\b\u0003\u0010!\u001a\u00020\u00072\b\b\u0003\u0010\"\u001a\u00020\u00072\b\b\u0003\u0010#\u001a\u00020\u0007H\u0086\b\u001a5\u0010$\u001a\u00020\u000e*\u00020\u001e2\b\b\u0003\u0010%\u001a\u00020\u00072\b\b\u0003\u0010!\u001a\u00020\u00072\b\b\u0003\u0010&\u001a\u00020\u00072\b\b\u0003\u0010#\u001a\u00020\u0007H\u0087\b\"\u001b\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u0007*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006'"}, m815d2 = {"children", "Lkotlin/sequences/Sequence;", "Landroid/view/View;", "Landroid/view/ViewGroup;", "getChildren", "(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;", "size", "", "getSize", "(Landroid/view/ViewGroup;)I", "contains", "", "view", "forEach", "", "action", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "forEachIndexed", "Lkotlin/Function2;", "index", "get", "isEmpty", "isNotEmpty", "iterator", "", "minusAssign", "plusAssign", "setMargins", "Landroid/view/ViewGroup$MarginLayoutParams;", "updateMargins", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "updateMarginsRelative", "start", "end", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/view/ViewGroupKt.class */
public final class ViewGroupKt {
    public static final boolean contains(ViewGroup viewGroup, View view) {
        C15149k.m377b(viewGroup, "$this$contains");
        C15149k.m377b(view, "view");
        return viewGroup.indexOfChild(view) != -1;
    }

    public static final void forEach(ViewGroup viewGroup, AbstractC15118l<? super View, C14989s> lVar) {
        C15149k.m377b(viewGroup, "$this$forEach");
        C15149k.m377b(lVar, "action");
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            C15149k.m383a((Object) childAt, "getChildAt(index)");
            lVar.invoke(childAt);
        }
    }

    public static final void forEachIndexed(ViewGroup viewGroup, AbstractC15122p<? super Integer, ? super View, C14989s> pVar) {
        C15149k.m377b(viewGroup, "$this$forEachIndexed");
        C15149k.m377b(pVar, "action");
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            C15149k.m383a((Object) childAt, "getChildAt(index)");
            pVar.invoke(Integer.valueOf(i), childAt);
        }
    }

    public static final View get(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "$this$get");
        View childAt = viewGroup.getChildAt(i);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + viewGroup.getChildCount());
    }

    public static final AbstractC14921e<View> getChildren(final ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "$this$children");
        return new AbstractC14921e<View>() { // from class: androidx.core.view.ViewGroupKt$children$1
            @Override // p626l.p630d0.AbstractC14921e
            public Iterator<View> iterator() {
                return ViewGroupKt.iterator(viewGroup);
            }
        };
    }

    public static final int getSize(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "$this$size");
        return viewGroup.getChildCount();
    }

    public static final boolean isEmpty(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "$this$isEmpty");
        return viewGroup.getChildCount() == 0;
    }

    public static final boolean isNotEmpty(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "$this$isNotEmpty");
        return viewGroup.getChildCount() != 0;
    }

    public static final Iterator<View> iterator(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "$this$iterator");
        return new ViewGroupKt$iterator$1(viewGroup);
    }

    public static final void minusAssign(ViewGroup viewGroup, View view) {
        C15149k.m377b(viewGroup, "$this$minusAssign");
        C15149k.m377b(view, "view");
        viewGroup.removeView(view);
    }

    public static final void plusAssign(ViewGroup viewGroup, View view) {
        C15149k.m377b(viewGroup, "$this$plusAssign");
        C15149k.m377b(view, "view");
        viewGroup.addView(view);
    }

    public static final void setMargins(ViewGroup.MarginLayoutParams marginLayoutParams, @AbstractC0053Px int i) {
        C15149k.m377b(marginLayoutParams, "$this$setMargins");
        marginLayoutParams.setMargins(i, i, i, i);
    }

    public static final void updateMargins(ViewGroup.MarginLayoutParams marginLayoutParams, @AbstractC0053Px int i, @AbstractC0053Px int i2, @AbstractC0053Px int i3, @AbstractC0053Px int i4) {
        C15149k.m377b(marginLayoutParams, "$this$updateMargins");
        marginLayoutParams.setMargins(i, i2, i3, i4);
    }

    public static /* synthetic */ void updateMargins$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = marginLayoutParams.leftMargin;
        }
        if ((i5 & 2) != 0) {
            i2 = marginLayoutParams.topMargin;
        }
        if ((i5 & 4) != 0) {
            i3 = marginLayoutParams.rightMargin;
        }
        if ((i5 & 8) != 0) {
            i4 = marginLayoutParams.bottomMargin;
        }
        C15149k.m377b(marginLayoutParams, "$this$updateMargins");
        marginLayoutParams.setMargins(i, i2, i3, i4);
    }

    @RequiresApi(17)
    public static final void updateMarginsRelative(ViewGroup.MarginLayoutParams marginLayoutParams, @AbstractC0053Px int i, @AbstractC0053Px int i2, @AbstractC0053Px int i3, @AbstractC0053Px int i4) {
        C15149k.m377b(marginLayoutParams, "$this$updateMarginsRelative");
        marginLayoutParams.setMarginStart(i);
        marginLayoutParams.topMargin = i2;
        marginLayoutParams.setMarginEnd(i3);
        marginLayoutParams.bottomMargin = i4;
    }

    public static /* synthetic */ void updateMarginsRelative$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = marginLayoutParams.getMarginStart();
        }
        if ((i5 & 2) != 0) {
            i2 = marginLayoutParams.topMargin;
        }
        if ((i5 & 4) != 0) {
            i3 = marginLayoutParams.getMarginEnd();
        }
        if ((i5 & 8) != 0) {
            i4 = marginLayoutParams.bottomMargin;
        }
        C15149k.m377b(marginLayoutParams, "$this$updateMarginsRelative");
        marginLayoutParams.setMarginStart(i);
        marginLayoutParams.topMargin = i2;
        marginLayoutParams.setMarginEnd(i3);
        marginLayoutParams.bottomMargin = i4;
    }
}
