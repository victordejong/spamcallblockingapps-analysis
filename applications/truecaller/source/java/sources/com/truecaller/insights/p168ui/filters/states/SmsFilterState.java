package com.truecaller.insights.p168ui.filters.states;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.insightsui.CategoryModel;
import com.truecaller.insights.models.updates.UpdateCategory;
import com.truecaller.insights.smartcards.SmartCardCategory;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.a.a.a.v0.f.d;
import s1.u.i;
import s1.u.u;
import s1.z.c.f0;
import s1.z.c.l;
/* renamed from: com.truecaller.insights.ui.filters.states.SmsFilterState */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/filters/states/SmsFilterState.class */
public final class SmsFilterState {

    /* renamed from: a */
    public a1<Set<AbstractC10836e>> f12726a;

    /* renamed from: b */
    public final i1<Set<AbstractC10836e>> f12727b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;", "", "<init>", "(Ljava/lang/String;I)V", "ADD", "REMOVE", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.insights.ui.filters.states.SmsFilterState$EditFilterMode */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode.class */
    public enum EditFilterMode {
        ADD,
        REMOVE
    }

    public SmsFilterState() {
        a1<Set<AbstractC10836e>> a = k1.a(u.a);
        this.f12726a = a;
        this.f12727b = d.E(a);
    }

    /* renamed from: a */
    public final void m35207a() {
        a1<Set<AbstractC10836e>> a1Var = this.f12726a;
        a1Var.e(a1Var.getValue(), u.a);
    }

    /* renamed from: b */
    public final void m35206b(CategoryModel categoryModel, EditFilterMode editFilterMode) {
        l.e(categoryModel, "categoryModel");
        l.e(editFilterMode, AnalyticsConstants.MODE);
        Iterable iterable = (Iterable) this.f12726a.getValue();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : iterable) {
            if (((AbstractC10836e) obj) instanceof AbstractC10836e.C10839c) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList2) {
            if (((AbstractC10836e) obj2) instanceof AbstractC10836e.C10840d) {
                arrayList3.add(obj2);
            } else {
                arrayList4.add(obj2);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        for (Object obj3 : arrayList4) {
            if (((AbstractC10836e) obj3) instanceof AbstractC10836e.C10837a) {
                arrayList5.add(obj3);
            } else {
                arrayList6.add(obj3);
            }
        }
        Set<UpdateCategory> updateCategories = categoryModel.getUpdateCategories();
        ArrayList arrayList7 = new ArrayList(C25225a.m4004J(updateCategories, 10));
        for (UpdateCategory updateCategory : updateCategories) {
            arrayList7.add(new AbstractC10836e.C10840d(updateCategory));
        }
        SmartCardCategory tagCategory = categoryModel.getTagCategory();
        if (!categoryModel.getUseTagCategory()) {
            tagCategory = null;
        }
        AbstractC10836e.C10837a c10837a = tagCategory != null ? new AbstractC10836e.C10837a(tagCategory) : null;
        String grammarCategory = categoryModel.getGrammarCategory();
        if (!(!i.T(new String[]{"Skip", "Updates"}).contains(grammarCategory))) {
            grammarCategory = null;
        }
        AbstractC10836e.C10838b c10838b = null;
        if (grammarCategory != null) {
            c10838b = new AbstractC10836e.C10838b(grammarCategory);
        }
        Set c1 = i.c1(arrayList3);
        EditFilterMode editFilterMode2 = EditFilterMode.ADD;
        if (editFilterMode == editFilterMode2) {
            c1.addAll(arrayList7);
        } else {
            c1.removeAll(arrayList7);
        }
        Set c12 = i.c1(arrayList5);
        if (c10837a != null) {
            if (editFilterMode == editFilterMode2) {
                c12.add(c10837a);
            } else {
                c12.remove(c10837a);
            }
        }
        Set c13 = i.c1(arrayList6);
        if (c10838b != null) {
            if (editFilterMode == editFilterMode2) {
                c13.add(c10838b);
            } else {
                c13.remove(c10838b);
            }
        }
        f0 f0Var = new f0(4);
        Object[] array = c1.toArray(new AbstractC10836e[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        f0Var.a(array);
        Object[] array2 = c12.toArray(new AbstractC10836e[0]);
        Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
        f0Var.a(array2);
        Object[] array3 = c13.toArray(new AbstractC10836e[0]);
        Objects.requireNonNull(array3, "null cannot be cast to non-null type kotlin.Array<T>");
        f0Var.a(array3);
        Object[] array4 = arrayList.toArray(new AbstractC10836e[0]);
        Objects.requireNonNull(array4, "null cannot be cast to non-null type kotlin.Array<T>");
        f0Var.a(array4);
        Set z0 = i.z0((AbstractC10836e[]) f0Var.a.toArray(new AbstractC10836e[f0Var.b()]));
        a1<Set<AbstractC10836e>> a1Var = this.f12726a;
        a1Var.e(a1Var.getValue(), z0);
    }

    /* renamed from: c */
    public final void m35205c(Set<AbstractC10836e.C10839c> set, EditFilterMode editFilterMode) {
        l.e(set, "senders");
        l.e(editFilterMode, AnalyticsConstants.MODE);
        Iterable iterable = (Iterable) this.f12726a.getValue();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : iterable) {
            if (((AbstractC10836e) obj) instanceof AbstractC10836e.C10839c) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Set c1 = i.c1(arrayList);
        if (editFilterMode == EditFilterMode.ADD) {
            c1.addAll(set);
        } else {
            c1.removeAll(set);
        }
        f0 f0Var = new f0(2);
        Object[] array = arrayList2.toArray(new AbstractC10836e[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        f0Var.a(array);
        Object[] array2 = c1.toArray(new AbstractC10836e[0]);
        Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
        f0Var.a(array2);
        Set z0 = i.z0((AbstractC10836e[]) f0Var.a.toArray(new AbstractC10836e[f0Var.b()]));
        a1<Set<AbstractC10836e>> a1Var = this.f12726a;
        a1Var.e(a1Var.getValue(), z0);
    }

    /* renamed from: d */
    public final Set<AbstractC10836e> m35204d() {
        return (Set) this.f12727b.getValue();
    }
}
