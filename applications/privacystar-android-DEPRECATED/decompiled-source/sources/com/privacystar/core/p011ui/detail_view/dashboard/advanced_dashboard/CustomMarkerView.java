package com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.mikephil.charting.components.MarkerView;
import com.github.mikephil.charting.data.CandleEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.privacystar.core.C1566R;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0016J\u001c\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/CustomMarkerView;", "Lcom/github/mikephil/charting/components/MarkerView;", "context", "Landroid/content/Context;", "layoutResource", "", "lastEntry", "(Landroid/content/Context;II)V", "root", "Landroid/widget/RelativeLayout;", "tvContent", "Landroid/widget/TextView;", "getOffset", "Lcom/github/mikephil/charting/utils/MPPointF;", "refreshContent", "", "e", "Lcom/github/mikephil/charting/data/Entry;", "highlight", "Lcom/github/mikephil/charting/highlight/Highlight;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.CustomMarkerView */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/CustomMarkerView.class */
public final class CustomMarkerView extends MarkerView {
    private HashMap _$_findViewCache;
    private final int lastEntry;
    private final RelativeLayout root;
    private final TextView tvContent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomMarkerView(@NotNull Context context, int i, int i2) {
        super(context, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View findViewById = findViewById(C1566R.C1569id.custom_marker_view_tv);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(R.id.custom_marker_view_tv)");
        this.tvContent = (TextView) findViewById;
        View findViewById2 = findViewById(C1566R.C1569id.custom_marker_view_root);
        Intrinsics.checkExpressionValueIsNotNull(findViewById2, "findViewById(R.id.custom_marker_view_root)");
        this.root = (RelativeLayout) findViewById2;
        this.lastEntry = i2;
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.github.mikephil.charting.components.MarkerView, com.github.mikephil.charting.components.IMarker
    @NotNull
    public MPPointF getOffset() {
        return new MPPointF(-(getWidth() / 2), -getHeight());
    }

    @Override // com.github.mikephil.charting.components.MarkerView, com.github.mikephil.charting.components.IMarker
    public void refreshContent(@Nullable Entry entry, @Nullable Highlight highlight) {
        if (entry instanceof CandleEntry) {
            TextView textView = this.tvContent;
            textView.setText("" + Utils.formatNumber(((CandleEntry) entry).getHigh(), 0, true));
        } else if (entry == null || ((int) entry.getX()) != this.lastEntry) {
            this.root.setVisibility(0);
            TextView textView2 = this.tvContent;
            StringBuilder sb = new StringBuilder();
            sb.append("");
            if (entry == null) {
                Intrinsics.throwNpe();
            }
            sb.append(Utils.formatNumber(entry.getY(), 0, true));
            textView2.setText(sb.toString());
        } else {
            this.root.setVisibility(8);
        }
        super.refreshContent(entry, highlight);
    }
}
