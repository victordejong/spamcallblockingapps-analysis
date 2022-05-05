package zendesk.support.request;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.text.format.DateUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.zendesk.sdk.C1790R;
import java.util.Date;
import zendesk.support.request.CellType;
import zendesk.support.request.ComponentRequestAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAgentAttachmentGeneric.class */
public class CellAgentAttachmentGeneric extends CellBase implements CellType.Attachment, CellType.Agent {
    private final ResolveInfo appInfo;
    private final Rect insets;
    private boolean isAgentNameVisible = false;
    private final StateRequestAttachment requestAttachment;
    private final StateRequestUser user;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellAgentAttachmentGeneric(CellBindHelper cellBindHelper, StateRequestAttachment stateRequestAttachment, StateRequestUser stateRequestUser, Date date) {
        super(cellBindHelper, C1790R.C1794layout.zs_request_agent_attachment_generic, stateRequestAttachment.getId(), stateRequestUser.getId(), date);
        this.requestAttachment = stateRequestAttachment;
        this.user = stateRequestUser;
        this.appInfo = cellBindHelper.getAppInfo(stateRequestAttachment.getName());
        this.insets = cellBindHelper.getInsets(0, 0, 0, C1790R.dimen.zs_request_message_inset_agent_attachment_bottom);
    }

    private String buildTalkBackString(Context context) {
        return context.getString(C1790R.string.zs_request_message_agent_file_accessibility, this.requestAttachment.getName()) + " " + context.getString(C1790R.string.zs_request_message_agent_sent_accessibility, DateUtils.getRelativeTimeSpanString(context, getTimeStamp().getTime(), true), this.user.getName());
    }

    @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
    public boolean areContentsTheSame(CellType.Base base) {
        return this.utils.areAttachmentCellContentsTheSame(this, base) && this.utils.areAgentCellContentsTheSame(this, base);
    }

    @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
    public void bind(@NonNull ComponentRequestAdapter.RequestViewHolder requestViewHolder) {
        ((TextView) requestViewHolder.findCachedView(C1790R.C1793id.request_agent_attachment_generic_name)).setText(this.requestAttachment.getName());
        this.utils.bindAppInfo(this.appInfo, (TextView) requestViewHolder.findCachedView(C1790R.C1793id.request_agent_attachment_generic_type), (ImageView) requestViewHolder.findCachedView(C1790R.C1793id.request_agent_attachment_generic_icon));
        View findCachedView = requestViewHolder.findCachedView(C1790R.C1793id.request_agent_attachment_generic_container);
        this.utils.addOnClickListenerForFileAttachment(findCachedView, this.requestAttachment);
        this.utils.bindAgentName((TextView) requestViewHolder.findCachedView(C1790R.C1793id.request_agent_attachment_generic_agent_name), this.isAgentNameVisible, this.user);
        findCachedView.setContentDescription(buildTalkBackString(findCachedView.getContext()));
    }

    @Override // zendesk.support.request.CellType.Agent
    public StateRequestUser getAgent() {
        return this.user;
    }

    @Override // zendesk.support.request.CellType.Attachment
    public StateRequestAttachment getAttachment() {
        return this.requestAttachment;
    }

    @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
    public Rect getInsets() {
        return this.insets;
    }

    @Override // zendesk.support.request.CellType.Agent
    public boolean isAgentNameVisible() {
        return this.isAgentNameVisible;
    }

    @Override // zendesk.support.request.CellType.Agent
    public void showAgentName(boolean z) {
        this.isAgentNameVisible = z;
    }
}
