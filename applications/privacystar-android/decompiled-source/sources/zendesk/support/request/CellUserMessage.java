package zendesk.support.request;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.text.format.DateUtils;
import android.view.View;
import android.widget.TextView;
import com.zendesk.sdk.C1790R;
import java.util.List;
import zendesk.support.UiUtils;
import zendesk.support.request.CellType;
import zendesk.support.request.ComponentRequestAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellUserMessage.class */
public class CellUserMessage extends CellBase implements CellType.Message, CellType.Stateful {
    private final List<StateMessage> erroredMessages;
    private final Rect insets;
    private final boolean lastErrorCellOfBlock;
    private final boolean markAsDelivered;
    private final StateMessage message;
    private final boolean showError;
    private final CharSequence textMessage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellUserMessage(CellBindHelper cellBindHelper, StateMessage stateMessage, boolean z, boolean z2, CharSequence charSequence, List<StateMessage> list, boolean z3) {
        super(cellBindHelper, C1790R.C1794layout.zs_request_user_message, stateMessage.getId(), -2147483647L, stateMessage.getDate());
        this.textMessage = charSequence;
        this.message = stateMessage;
        this.markAsDelivered = z;
        this.showError = z2;
        this.insets = cellBindHelper.getInsets(0, 0, 0, C1790R.dimen.zs_request_message_inset_user_bottom);
        this.erroredMessages = list;
        this.lastErrorCellOfBlock = z3;
    }

    private String buildTalkBackString(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getString(C1790R.string.zs_request_message_user_text_accessibility, this.textMessage));
        sb.append(" ");
        if (!this.showError) {
            sb.append(context.getString(C1790R.string.zs_request_message_user_sent_accessibility, DateUtils.getRelativeTimeSpanString(context, this.message.getDate().getTime(), true)));
        } else {
            sb.append(context.getString(C1790R.string.zs_request_message_user_error_accessibility));
        }
        return sb.toString();
    }

    @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
    public boolean areContentsTheSame(CellType.Base base) {
        return this.utils.areMessageContentsTheSame(this, base) && this.utils.areStatefulCellContentsTheSame(this, base);
    }

    @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
    public void bind(@NonNull ComponentRequestAdapter.RequestViewHolder requestViewHolder) {
        ViewRequestText viewRequestText = (ViewRequestText) requestViewHolder.findCachedView(C1790R.C1793id.request_user_message_text);
        viewRequestText.setText(this.textMessage);
        TextView textView = (TextView) requestViewHolder.findCachedView(C1790R.C1793id.request_user_message_status);
        this.utils.bindStatusLabel(textView, this.lastErrorCellOfBlock, this.markAsDelivered);
        View findCachedView = requestViewHolder.findCachedView(C1790R.C1793id.request_user_message_bubble);
        View.OnClickListener errorClickListener = this.utils.errorClickListener(this.showError, this.erroredMessages);
        UiUtils.setTint(this.utils.colorForError(isErrorShown()), findCachedView.getBackground(), findCachedView);
        requestViewHolder.itemView.setOnClickListener(errorClickListener);
        findCachedView.setOnClickListener(errorClickListener);
        viewRequestText.setOnClickListener(errorClickListener);
        textView.setOnClickListener(errorClickListener);
        findCachedView.setContentDescription(buildTalkBackString(findCachedView.getContext()));
    }

    @Override // zendesk.support.request.CellType.Stateful
    public List<StateMessage> getErrorGroupMessages() {
        return this.erroredMessages;
    }

    @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
    public Rect getInsets() {
        return this.insets;
    }

    @Override // zendesk.support.request.CellType.Message
    public String getMessage() {
        return this.message.getBody();
    }

    @Override // zendesk.support.request.CellType.Stateful
    public StateMessage getStateMessage() {
        return this.message;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public boolean isErrorShown() {
        return this.showError;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public boolean isLastErrorCellOfBlock() {
        return this.lastErrorCellOfBlock;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public boolean isMarkedAsDelivered() {
        return this.markAsDelivered;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public CellType.Stateful markAsDelivered() {
        CellUserMessage cellUserMessage = new CellUserMessage(this.utils, this.message, true, this.showError, this.textMessage, this.erroredMessages, this.lastErrorCellOfBlock);
        cellUserMessage.setPositionType(getPositionType());
        return cellUserMessage;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public CellType.Stateful markAsErrored(List<StateMessage> list, boolean z) {
        CellUserMessage cellUserMessage = new CellUserMessage(this.utils, this.message, this.markAsDelivered, true, this.textMessage, list, z);
        cellUserMessage.setPositionType(getPositionType());
        return cellUserMessage;
    }
}
