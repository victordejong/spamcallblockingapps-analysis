package com.privacystar.core.data.call.call_event;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.call_event.CallHistoryHelper;
import com.privacystar.core.data.call.call_event.LogItem;
import com.privacystar.core.util.FormatUtil;
import java.util.Date;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/CallHistoryAdapter.class */
public class CallHistoryAdapter extends RecyclerView.Adapter<ViewHolder> {
    private List<LogItem> logItems;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.data.call.call_event.CallHistoryAdapter$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/CallHistoryAdapter$1.class */
    public static /* synthetic */ class C15811 {

        /* renamed from: $SwitchMap$com$privacystar$core$data$call$call_event$CallHistoryHelper$CallDirection */
        static final /* synthetic */ int[] f245x242913a = new int[CallHistoryHelper.CallDirection.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f245x242913a[CallHistoryHelper.CallDirection.INCOMING_MISSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f245x242913a[CallHistoryHelper.CallDirection.INCOMING_RECEIVED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f245x242913a[CallHistoryHelper.CallDirection.OUTGOING_MISSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f245x242913a[CallHistoryHelper.CallDirection.OUTGOING_RECEIVED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/CallHistoryAdapter$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(C1566R.C1569id.caller_details_history_item_direction)
        ImageView direction;
        @BindView(C1566R.C1569id.caller_details_history_item_number)
        TextView number;
        @BindView(C1566R.C1569id.caller_details_history_item_type)
        ImageView typeIcon;

        public ViewHolder(View view) {
            super(view);
            ButterKnife.bind(this, view);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/CallHistoryAdapter$ViewHolder_ViewBinding.class */
    public class ViewHolder_ViewBinding implements Unbinder {
        private ViewHolder target;

        @UiThread
        public ViewHolder_ViewBinding(ViewHolder viewHolder, View view) {
            this.target = viewHolder;
            viewHolder.number = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_history_item_number, "field 'number'", TextView.class);
            viewHolder.direction = (ImageView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_history_item_direction, "field 'direction'", ImageView.class);
            viewHolder.typeIcon = (ImageView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_history_item_type, "field 'typeIcon'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ViewHolder viewHolder = this.target;
            if (viewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.target = null;
            viewHolder.number = null;
            viewHolder.direction = null;
            viewHolder.typeIcon = null;
        }
    }

    public CallHistoryAdapter(List<LogItem> list) {
        Timber.m37d("Creating data adapter for Call History.", new Object[0]);
        this.logItems = list;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.logItems != null) {
            return this.logItems.size();
        }
        Timber.m25w("CallHistoryList entries is null but attempted getItemCount().", new Object[0]);
        return 0;
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        if (this.logItems == null) {
            Timber.m25w("CallHistory is null.", new Object[0]);
            return;
        }
        Timber.m28v("CallHistory ViewHolder bound to log item, populating with data at position %d.", Integer.valueOf(i));
        LogItem logItem = this.logItems.get(i);
        if (logItem == null) {
            Timber.m37d("CallHistory ViewHolder has a empty dataset.", new Object[0]);
            return;
        }
        Timber.m28v("CallHistory item data read. Rendering from data payload.", new Object[0]);
        Date date = new Date(logItem.getDate());
        String shortDateString = FormatUtil.getShortDateString(PSApplication.context(), date);
        Timber.m28v("LogItem timestamp was: %s, formatting as: %s", date.toString(), shortDateString);
        viewHolder.number.setText(shortDateString);
        if (logItem.getType() != LogItem.LogItemType.SMS) {
            boolean wasBlocked = logItem.wasBlocked();
            int i2 = C1566R.C1568drawable.ic_call_received_black_24dp;
            int i3 = C1566R.color.ps3_green_300;
            if (wasBlocked) {
                Timber.m28v("LogItem was blocked, drawing as blocked", new Object[0]);
                i2 = C1566R.C1568drawable.ic_block_black_24dp;
            } else {
                switch (C15811.f245x242913a[logItem.getDirection().ordinal()]) {
                    case 1:
                        i2 = C1566R.C1568drawable.ic_call_missed_black_24dp;
                        Timber.m28v("LogItem direction is incoming, drawing as missed/incoming.", new Object[0]);
                        break;
                    case 2:
                        Timber.m28v("LogItem direction is incoming, drawing as received/incoming.", new Object[0]);
                        break;
                    case 3:
                        i2 = C1566R.C1568drawable.ic_call_missed_outgoing_black_24dp;
                        Timber.m28v("LogItem direction is outgoing, drawing as missed/outgoing.", new Object[0]);
                        break;
                    case 4:
                        i2 = C1566R.C1568drawable.ic_call_made_black_24dp;
                        Timber.m28v("LogItem direction is outgoing, drawing as received/outgoing.", new Object[0]);
                        break;
                    default:
                        Timber.m28v("LogItem direction is undefined, drawing as received/incoming.", new Object[0]);
                        break;
                }
                viewHolder.direction.setImageResource(i2);
                viewHolder.direction.setColorFilter(ContextCompat.getColor(PSApplication.context(), i3));
            }
            i3 = C1566R.color.ps3_red_300;
            viewHolder.direction.setImageResource(i2);
            viewHolder.direction.setColorFilter(ContextCompat.getColor(PSApplication.context(), i3));
        } else {
            viewHolder.direction.setVisibility(4);
        }
        viewHolder.typeIcon.setImageResource(logItem.getType() == LogItem.LogItemType.SMS ? C1566R.C1568drawable.ic_message_black_24dp : C1566R.C1568drawable.phone_icon);
        viewHolder.typeIcon.setColorFilter(ContextCompat.getColor(PSApplication.context(), C1566R.color.ps3_grey_400));
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C1566R.C1571layout.caller_details_history_item, viewGroup, false);
        Timber.m28v("CallHistory ViewHolder item inflated into %s.", viewGroup.toString());
        return new ViewHolder(inflate);
    }
}
