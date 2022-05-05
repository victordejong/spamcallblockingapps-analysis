package com.privacystar.core.p011ui.home;

import android.content.Context;
import android.support.p001v4.text.HtmlCompat;
import android.text.Spanned;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.privacystar.core.C1566R;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u000f\u001a\u00020\u0006H\u0016J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0002R\u001a\u0010\n\u001a\u00020\u0002X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomeActivityHistoryArrayAdapter;", "Landroid/widget/ArrayAdapter;", "", "context", "Landroid/content/Context;", "resource", "", "objects", "", "(Landroid/content/Context;ILjava/util/List;)V", "textBeingSearched", "getTextBeingSearched", "()Ljava/lang/String;", "setTextBeingSearched", "(Ljava/lang/String;)V", "getCount", "getView", "Landroid/view/View;", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "convertView", "parent", "Landroid/view/ViewGroup;", "highlight", "Landroid/text/Spanned;", "text", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.home.HomeActivityHistoryArrayAdapter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeActivityHistoryArrayAdapter.class */
public final class HomeActivityHistoryArrayAdapter extends ArrayAdapter<String> {
    @NotNull
    private String textBeingSearched = "";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeActivityHistoryArrayAdapter(@NotNull Context context, int i, @NotNull List<String> objects) {
        super(context, i, objects);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(objects, "objects");
    }

    private final Spanned highlight(String str) {
        if (Intrinsics.areEqual(this.textBeingSearched, "")) {
            return null;
        }
        List split$default = StringsKt.split$default((CharSequence) str, new String[]{this.textBeingSearched}, false, 0, 6, (Object) null);
        return HtmlCompat.fromHtml(CollectionsKt.joinToString$default(split$default, "<strong>" + this.textBeingSearched + "</strong>", null, null, 0, null, null, 62, null), 0);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return Math.min(5, super.getCount());
    }

    @NotNull
    public final String getTextBeingSearched() {
        return this.textBeingSearched;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    @NotNull
    public View getView(int i, @Nullable View view, @NotNull ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View view2 = super.getView(i, view, parent);
        TextView tv = (TextView) view2.findViewById(C1566R.C1569id.home_activity_search_history_number_tv);
        Intrinsics.checkExpressionValueIsNotNull(tv, "tv");
        Spanned highlight = highlight(tv.getText().toString());
        if (highlight != null) {
            tv.setText(highlight);
        }
        Intrinsics.checkExpressionValueIsNotNull(view2, "view");
        return view2;
    }

    public final void setTextBeingSearched(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.textBeingSearched = str;
    }
}
