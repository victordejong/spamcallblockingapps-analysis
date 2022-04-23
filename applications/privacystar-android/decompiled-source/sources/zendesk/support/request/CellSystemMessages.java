package zendesk.support.request;

import android.support.annotation.NonNull;
import android.widget.TextView;
import com.zendesk.sdk.C1790R;
import java.util.Date;
import zendesk.support.RequestStatus;
import zendesk.support.request.CellType;
import zendesk.support.request.ComponentRequestAdapter;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellSystemMessages.class */
class CellSystemMessages {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellSystemMessages$CellDateMessage.class */
    public static class CellDateMessage extends CellBase {
        /* JADX INFO: Access modifiers changed from: package-private */
        public CellDateMessage(CellBindHelper cellBindHelper, long j, Date date) {
            super(cellBindHelper, C1790R.C1794layout.zs_request_date_message, j, -2147483648L, date);
        }

        @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
        public boolean areContentsTheSame(CellType.Base base) {
            return getTimeStamp().equals(base.getTimeStamp());
        }

        @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
        public void bind(@NonNull ComponentRequestAdapter.RequestViewHolder requestViewHolder) {
            this.utils.bindDate((TextView) requestViewHolder.findCachedView(C1790R.C1793id.request_date_message_text), getTimeStamp());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellSystemMessages$CellRequestStatus.class */
    public static class CellRequestStatus extends CellBase {
        private final RequestStatus requestStatus;

        /* JADX INFO: Access modifiers changed from: package-private */
        public CellRequestStatus(CellBindHelper cellBindHelper, RequestStatus requestStatus) {
            super(cellBindHelper, C1790R.C1794layout.zs_request_system_message, -9223372036854775807L, -2147483648L, new Date());
            this.requestStatus = requestStatus;
        }

        @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
        public boolean areContentsTheSame(CellType.Base base) {
            return base instanceof CellRequestStatus;
        }

        @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
        public void bind(@NonNull ComponentRequestAdapter.RequestViewHolder requestViewHolder) {
            TextView textView = (TextView) requestViewHolder.findCachedView(C1790R.C1793id.request_system_message_text);
            if (this.requestStatus == RequestStatus.Closed) {
                textView.setText(C1790R.string.request_system_message_closed_ticket);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellSystemMessages$CellSystemMessage.class */
    public static class CellSystemMessage extends CellBase {
        private final String message;

        /* JADX INFO: Access modifiers changed from: package-private */
        public CellSystemMessage(Date date, String str) {
            super(null, C1790R.C1794layout.zs_request_system_message, Long.MIN_VALUE, -2147483648L, date);
            this.message = str;
        }

        @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
        public boolean areContentsTheSame(CellType.Base base) {
            return base instanceof CellSystemMessage;
        }

        @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
        public void bind(@NonNull ComponentRequestAdapter.RequestViewHolder requestViewHolder) {
            ((TextView) requestViewHolder.findCachedView(C1790R.C1793id.request_system_message_text)).setText(this.message);
        }
    }

    CellSystemMessages() {
    }
}
