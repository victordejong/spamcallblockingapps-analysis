package gogolook.callgogolook2.search.views.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.Utils;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.view.RoundImageView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/ResultViewHolder_ViewBinding.class */
public class ResultViewHolder_ViewBinding extends LabelViewHolder_ViewBinding {

    /* renamed from: b */
    public ResultViewHolder f12751b;

    @UiThread
    public ResultViewHolder_ViewBinding(ResultViewHolder resultViewHolder, View view) {
        super(resultViewHolder, view);
        this.f12751b = resultViewHolder;
        resultViewHolder.llItem = view.findViewById(R$id.ll_item);
        resultViewHolder.metaphor = (RoundImageView) Utils.findOptionalViewAsType(view, R$id.iv_metaphor, "field 'metaphor'", RoundImageView.class);
        resultViewHolder.cardSpamIcon = (ImageView) Utils.findOptionalViewAsType(view, R$id.iv_card_spam_icon, "field 'cardSpamIcon'", ImageView.class);
        resultViewHolder.linePrimary = (TextView) Utils.findOptionalViewAsType(view, R$id.line_primary, "field 'linePrimary'", TextView.class);
        resultViewHolder.lineSecondary = (LinearLayout) Utils.findOptionalViewAsType(view, R$id.line_secondary, "field 'lineSecondary'", LinearLayout.class);
        resultViewHolder.lineSecondaryWaiting = view.findViewById(R$id.line_secondary_waiting);
        resultViewHolder.lineSecondaryNumber = (TextView) Utils.findOptionalViewAsType(view, R$id.line_secondary_number, "field 'lineSecondaryNumber'", TextView.class);
        resultViewHolder.lineSecondaryTelecom = (TextView) Utils.findOptionalViewAsType(view, R$id.line_secondary_telecom, "field 'lineSecondaryTelecom'", TextView.class);
        resultViewHolder.lineTertiary = (TextView) Utils.findOptionalViewAsType(view, R$id.line_tertiary, "field 'lineTertiary'", TextView.class);
        resultViewHolder.lineTertiaryContainer = (LinearLayout) Utils.findOptionalViewAsType(view, R$id.ll_line_tertiary, "field 'lineTertiaryContainer'", LinearLayout.class);
        resultViewHolder.lineFourthContainer = (LinearLayout) Utils.findOptionalViewAsType(view, R$id.ll_line_fourth, "field 'lineFourthContainer'", LinearLayout.class);
        resultViewHolder.date = (TextView) Utils.findOptionalViewAsType(view, R$id.tv_date, "field 'date'", TextView.class);
        resultViewHolder.call = (IconFontTextView) Utils.findOptionalViewAsType(view, R$id.iftv_call, "field 'call'", IconFontTextView.class);
        resultViewHolder.callTimes = (TextView) Utils.findOptionalViewAsType(view, R$id.tv_call_times, "field 'callTimes'", TextView.class);
        resultViewHolder.favoriteTimes = (TextView) Utils.findOptionalViewAsType(view, R$id.tv_favorite_times, "field 'favoriteTimes'", TextView.class);
        resultViewHolder.distance = (TextView) Utils.findOptionalViewAsType(view, R$id.tv_distance, "field 'distance'", TextView.class);
        resultViewHolder.subTitle = (TextView) Utils.findOptionalViewAsType(view, R$id.line_sub_title, "field 'subTitle'", TextView.class);
        resultViewHolder.rightMetaphor = (RoundImageView) Utils.findOptionalViewAsType(view, R$id.iv_chevron_metaphor, "field 'rightMetaphor'", RoundImageView.class);
        resultViewHolder.headerText = (TextView) Utils.findOptionalViewAsType(view, R$id.header_text, "field 'headerText'", TextView.class);
    }

    @Override // gogolook.callgogolook2.search.views.view.LabelViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ResultViewHolder resultViewHolder = this.f12751b;
        if (resultViewHolder != null) {
            this.f12751b = null;
            resultViewHolder.llItem = null;
            resultViewHolder.metaphor = null;
            resultViewHolder.cardSpamIcon = null;
            resultViewHolder.linePrimary = null;
            resultViewHolder.lineSecondary = null;
            resultViewHolder.lineSecondaryWaiting = null;
            resultViewHolder.lineSecondaryNumber = null;
            resultViewHolder.lineSecondaryTelecom = null;
            resultViewHolder.lineTertiary = null;
            resultViewHolder.lineTertiaryContainer = null;
            resultViewHolder.lineFourthContainer = null;
            resultViewHolder.date = null;
            resultViewHolder.call = null;
            resultViewHolder.callTimes = null;
            resultViewHolder.favoriteTimes = null;
            resultViewHolder.distance = null;
            resultViewHolder.subTitle = null;
            resultViewHolder.rightMetaphor = null;
            resultViewHolder.headerText = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
