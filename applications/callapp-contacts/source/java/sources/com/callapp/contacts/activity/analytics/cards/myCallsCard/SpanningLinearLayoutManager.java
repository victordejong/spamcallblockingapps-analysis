package com.callapp.contacts.activity.analytics.cards.myCallsCard;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager.class */
public class SpanningLinearLayoutManager extends LinearLayoutManager {

    /* renamed from: a */
    private Context f19836a;

    public SpanningLinearLayoutManager(Context context) {
        super(context);
    }

    public SpanningLinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.f19836a = context;
    }

    /* renamed from: b */
    private RecyclerView.LayoutParams m31645b(RecyclerView.LayoutParams layoutParams) {
        if (getOrientation() == 0) {
            layoutParams.width = (int) Math.round(getHorizontalSpace() / getItemCount());
        } else if (getOrientation() == 1) {
            layoutParams.height = (int) Math.round(getVerticalSpace() / getItemCount());
        }
        return layoutParams;
    }

    private int getHorizontalSpace() {
        return Activities.getScreenWidth(1) - ((int) Activities.m27699a(36.0f));
    }

    private int getVerticalSpace() {
        return (getHeight() - getPaddingBottom()) - getPaddingTop();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final RecyclerView.LayoutParams mo31649a(Context context, AttributeSet attributeSet) {
        return m31645b(super.mo31649a(context, attributeSet));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final RecyclerView.LayoutParams mo31648a(ViewGroup.LayoutParams layoutParams) {
        return m31645b(super.mo31648a(layoutParams));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final boolean mo31647a(RecyclerView.LayoutParams layoutParams) {
        return super.mo31647a(layoutParams);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final RecyclerView.LayoutParams mo31646b() {
        return m31645b(super.mo31646b());
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: e */
    public final boolean mo31644e() {
        return true;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: f */
    public final boolean mo31643f() {
        return false;
    }
}
