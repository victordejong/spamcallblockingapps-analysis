package com.appnext.suggestedappswider.views.templates.grid_suggestedappswider_template;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.appnext.base.C0472a;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/appnext/suggestedappswider/views/templates/grid_suggestedappswider_template/ANGridSuggestedAppsWiderItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "getItemOffsets", "", "outRect", "Landroid/graphics/Rect;", ViewAction.VIEW, "Landroid/view/View;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", "state", "Landroidx/recyclerview/widget/RecyclerView$State;", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.appnext.suggestedappswider.views.templates.grid_suggestedappswider_template.a */
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/templates/grid_suggestedappswider_template/a.class */
public final class C0698a extends RecyclerView.AbstractC0328n {
    private final Context context;

    public C0698a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.context = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(rect, "outRect");
        l.e(view, ViewAction.VIEW);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        super.getItemOffsets(rect, view, recyclerView, c0347z);
        try {
            if (recyclerView.getChildAdapterPosition(view) <= 4) {
                return;
            }
            rect.top = (int) (this.context.getResources().getDisplayMetrics().density * 24.0f);
        } catch (Throwable th) {
            C0472a.m42577a("ANGridCollectionItemDecoration$getItemOffsets", th);
        }
    }
}
