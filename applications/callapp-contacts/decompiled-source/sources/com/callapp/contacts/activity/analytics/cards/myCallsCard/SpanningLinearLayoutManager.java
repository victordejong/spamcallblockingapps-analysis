package com.callapp.contacts.activity.analytics.cards.myCallsCard;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager.class */
public class SpanningLinearLayoutManager extends LinearLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    private Context f10858a;

    public SpanningLinearLayoutManager(Context context) {
        super(context);
    }

    public SpanningLinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.f10858a = context;
    }

    private RecyclerView.LayoutParams b(RecyclerView.LayoutParams layoutParams) {
        if (getOrientation() == 0) {
            layoutParams.width = (int) Math.round(getHorizontalSpace() / getItemCount());
        } else if (getOrientation() == 1) {
            layoutParams.height = (int) Math.round(getVerticalSpace() / getItemCount());
        }
        return layoutParams;
    }

    private int getHorizontalSpace() {
        return Activities.getScreenWidth(1) - ((int) Activities.a(36.0f));
    }

    private int getVerticalSpace() {
        return (getHeight() - getPaddingBottom()) - getPaddingTop();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final RecyclerView.LayoutParams a(Context context, AttributeSet attributeSet) {
        return b(super.a(context, attributeSet));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final RecyclerView.LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        return b(super.a(layoutParams));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final boolean a(RecyclerView.LayoutParams layoutParams) {
        return super.a(layoutParams);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final RecyclerView.LayoutParams b() {
        return b(super.b());
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final boolean e() {
        return true;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final boolean f() {
        return false;
    }
}
