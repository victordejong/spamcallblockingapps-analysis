package gogolook.callgogolook2.search;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchMarker_ViewBinding.class */
public class TextSearchMarker_ViewBinding implements Unbinder {

    /* renamed from: a */
    public TextSearchMarker f12746a;

    @UiThread
    public TextSearchMarker_ViewBinding(TextSearchMarker textSearchMarker, View view) {
        this.f12746a = textSearchMarker;
        textSearchMarker.linePrimary = (TextView) Utils.findRequiredViewAsType(view, R$id.line_primary, "field 'linePrimary'", TextView.class);
        textSearchMarker.lineSecondaryNumber = (TextView) Utils.findRequiredViewAsType(view, R$id.line_secondary_number, "field 'lineSecondaryNumber'", TextView.class);
        textSearchMarker.lineTertiaryContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_line_tertiary, "field 'lineTertiaryContainer'", LinearLayout.class);
        textSearchMarker.lineFourthContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_line_fourth, "field 'lineFourthContainer'", LinearLayout.class);
        textSearchMarker.callContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_right, "field 'callContainer'", LinearLayout.class);
        textSearchMarker.call = (IconFontTextView) Utils.findRequiredViewAsType(view, R$id.iftv_call, "field 'call'", IconFontTextView.class);
        textSearchMarker.callTimes = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_call_times, "field 'callTimes'", TextView.class);
        textSearchMarker.favoriteTimes = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_favorite_times, "field 'favoriteTimes'", TextView.class);
        textSearchMarker.distance = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_distance, "field 'distance'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        TextSearchMarker textSearchMarker = this.f12746a;
        if (textSearchMarker != null) {
            this.f12746a = null;
            textSearchMarker.linePrimary = null;
            textSearchMarker.lineSecondaryNumber = null;
            textSearchMarker.lineTertiaryContainer = null;
            textSearchMarker.lineFourthContainer = null;
            textSearchMarker.callContainer = null;
            textSearchMarker.call = null;
            textSearchMarker.callTimes = null;
            textSearchMarker.favoriteTimes = null;
            textSearchMarker.distance = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
