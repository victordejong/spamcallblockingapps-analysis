package com.privacystar.core.p011ui.detail_view.caller_details;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0010¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/caller_details/CallerDetailsTagButton;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getText", "", "setAllCaps", "", "enable", "", "setText", "text", "", "setTextColor", "color", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsTagButton */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/caller_details/CallerDetailsTagButton.class */
public final class CallerDetailsTagButton extends FrameLayout {
    private HashMap _$_findViewCache;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallerDetailsTagButton(@NotNull Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        FrameLayout.inflate(context, C1566R.C1571layout.caller_details_tag_button, this);
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

    @NotNull
    public final CharSequence getText() {
        View findViewById = findViewById(C1566R.C1569id.caller_details_tag_text);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById<TextView>(R….caller_details_tag_text)");
        CharSequence text = ((TextView) findViewById).getText();
        Intrinsics.checkExpressionValueIsNotNull(text, "findViewById<TextView>(R…er_details_tag_text).text");
        return text;
    }

    public final void setAllCaps(boolean z) {
        View findViewById = findViewById(C1566R.C1569id.caller_details_tag_text);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById<TextView>(R….caller_details_tag_text)");
        ((TextView) findViewById).setAllCaps(z);
    }

    public final void setText(@NotNull String text) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        View findViewById = findViewById(C1566R.C1569id.caller_details_tag_text);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById<TextView>(R….caller_details_tag_text)");
        ((TextView) findViewById).setText(text);
    }

    public final void setTextColor(int i) {
        ((TextView) findViewById(C1566R.C1569id.caller_details_tag_text)).setTextColor(i);
    }
}
