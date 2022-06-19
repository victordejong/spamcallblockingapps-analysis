package com.telguarder.features.phoneEventHistory;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.telguarder.C2083R;
import com.telguarder.features.numberLookup.PhoneEvent;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.dateUtils.DateTimeFormatter;
import com.telguarder.helpers.dateUtils.DateUtils;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.FontManager;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.Calendar;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneEventHistory/PhoneEventLogAdapter.class */
public class PhoneEventLogAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final OnItemClickListener clickListener;
    private boolean detailLoading = false;
    private int focusedPosition;
    private Handler mActionDownHandler;
    private List<PhoneEvent> values;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener.class */
    public interface OnItemClickListener {
        void onItemClick(int i);

        boolean onItemLongClick(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder.class */
    public class ViewHolder extends RecyclerView.ViewHolder {
        public ProgressBar callLoading;
        public ImageView callType;
        public TextView dateTime;
        public TextView name;
        public TextView phoneNumber;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View view) {
            super(view);
            PhoneEventLogAdapter.this = r5;
            this.name = (TextView) view.findViewById(C2083R.C2086id.call_log_name);
            this.phoneNumber = (TextView) view.findViewById(C2083R.C2086id.call_log_phone_number);
            this.callType = (ImageView) view.findViewById(C2083R.C2086id.call_log_call_type);
            this.callLoading = (ProgressBar) view.findViewById(C2083R.C2086id.call_log_call_loading);
            this.dateTime = (TextView) view.findViewById(C2083R.C2086id.call_log_date_time);
        }

        public void bind(final int i, final OnItemClickListener onItemClickListener) {
            PhoneEvent phoneEvent = (PhoneEvent) PhoneEventLogAdapter.this.values.get(i);
            this.name.setText(phoneEvent.name);
            this.name.setTextDirection((TextUtils.isEmpty(phoneEvent.name) || phoneEvent.name.contains("[a-zA-Z]+")) ? 5 : 3);
            this.itemView.setOnTouchListener(new View.OnTouchListener() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventLogAdapter.ViewHolder.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        PhoneEventLogAdapter.this.mActionDownHandler = new Handler();
                        PhoneEventLogAdapter.this.mActionDownHandler.postDelayed(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventLogAdapter.ViewHolder.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ViewHolder.this.itemView.setBackgroundColor(UiHelper.getColorWrapper(ViewHolder.this.itemView.getContext(), C2083R.C2084color.colorPrimaryDark));
                            }
                        }, 100L);
                        return false;
                    } else if (action == 1) {
                        ViewHolder.this.itemView.postDelayed(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventLogAdapter.ViewHolder.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (PhoneEventLogAdapter.this.detailLoading || PhoneEventLogAdapter.this.focusedPosition == i) {
                                    return;
                                }
                                ViewHolder.this.itemView.setBackgroundColor(UiHelper.getColorWrapper(ViewHolder.this.itemView.getContext(), C2083R.C2084color.transparent));
                            }
                        }, 500L);
                        return false;
                    } else if (action != 3) {
                        return false;
                    } else {
                        if (PhoneEventLogAdapter.this.mActionDownHandler != null) {
                            PhoneEventLogAdapter.this.mActionDownHandler.removeCallbacksAndMessages(null);
                        }
                        ViewHolder.this.itemView.setBackgroundColor(UiHelper.getColorWrapper(ViewHolder.this.itemView.getContext(), C2083R.C2084color.transparent));
                        return false;
                    }
                }
            });
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventLogAdapter.ViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onItemClickListener.onItemClick(i);
                }
            });
            this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventLogAdapter.ViewHolder.3
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    return onItemClickListener.onItemLongClick(i);
                }
            });
            if (!PhoneEventLogAdapter.this.detailLoading || PhoneEventLogAdapter.this.focusedPosition != i) {
                this.itemView.setBackgroundColor(UiHelper.getColorWrapper(this.itemView.getContext(), C2083R.C2084color.transparent));
                this.callLoading.setVisibility(4);
                this.callType.setVisibility(0);
            } else {
                this.itemView.setBackgroundColor(UiHelper.getColorWrapper(this.itemView.getContext(), C2083R.C2084color.colorPrimaryDark));
                this.callType.setVisibility(4);
                this.callLoading.setVisibility(0);
            }
            int i2 = 2131034393;
            String str = "";
            if (phoneEvent.isSpam()) {
                Context context = this.itemView.getContext();
                if (!phoneEvent.isSpamCommunityOrange()) {
                    i2 = 2131034392;
                }
                int colorWrapper = UiHelper.getColorWrapper(context, i2);
                this.name.setTextColor(colorWrapper);
                this.phoneNumber.setTextColor(colorWrapper);
                this.phoneNumber.setAlpha(0.6f);
            } else if (phoneEvent.calledPhoneNumber == null || !phoneEvent.calledPhoneNumber.equals("")) {
                this.name.setTextColor(UiHelper.getColorWrapper(this.itemView.getContext(), C2083R.C2084color.text_medium));
                this.phoneNumber.setTextColor(UiHelper.getColorWrapper(this.itemView.getContext(), C2083R.C2084color.text_hint_medium));
                this.phoneNumber.setAlpha(1.0f);
            } else {
                int colorWrapper2 = UiHelper.getColorWrapper(this.itemView.getContext(), C2083R.C2084color.spam_warning_call_background);
                this.name.setTextColor(colorWrapper2);
                this.phoneNumber.setTextColor(colorWrapper2);
                this.phoneNumber.setAlpha(0.6f);
            }
            if (!TextUtils.isEmpty(phoneEvent.name)) {
                this.name.setText(phoneEvent.name);
                this.name.setTextDirection((TextUtils.isEmpty(phoneEvent.name) || phoneEvent.name.contains("[a-zA-Z]+")) ? 5 : 3);
            } else if (phoneEvent.isSpam() && !TextUtils.isEmpty(phoneEvent.getLastSpamComment()) && !TextUtils.isEmpty(phoneEvent.phoneNumberForDisplaying)) {
                this.name.setText(phoneEvent.phoneNumberForDisplaying);
                this.name.setTextDirection(3);
            } else if (!TextUtils.isEmpty(phoneEvent.calledPhoneNumber)) {
                this.name.setText(ContactUtils.getUnknownNumberWithRegionDisplayName(this.itemView.getContext(), phoneEvent.calledPhoneNumber));
                this.name.setTextDirection(5);
            } else {
                this.name.setText(ContactUtils.getHiddenNumberDisplayName(this.itemView.getContext()));
                this.name.setTextDirection(5);
            }
            if (phoneEvent.counter > 1) {
                this.name.append(" (" + phoneEvent.counter + ")");
            }
            if (TextUtils.isEmpty(phoneEvent.getLastSpamComment())) {
                this.phoneNumber.setTypeface(null, 0);
                this.phoneNumber.setSingleLine(true);
                this.phoneNumber.setMaxLines(1);
                if (!TextUtils.isEmpty(phoneEvent.phoneNumberForDisplaying)) {
                    this.phoneNumber.setText(phoneEvent.phoneNumberForDisplaying);
                    this.phoneNumber.setVisibility(0);
                } else if (phoneEvent.calledPhoneNumber == null || !phoneEvent.calledPhoneNumber.equals("")) {
                    this.phoneNumber.setText("");
                    this.phoneNumber.setVisibility(4);
                } else {
                    this.phoneNumber.setTypeface(null, 2);
                    this.phoneNumber.setSingleLine(false);
                    this.phoneNumber.setMaxLines(2);
                    this.phoneNumber.setText(AppUtil.getStringResource(this.itemView.getContext(), C2083R.string.hidden_number_callerid_text));
                    this.phoneNumber.setVisibility(0);
                }
            } else {
                this.phoneNumber.setTypeface(null, 2);
                this.phoneNumber.setSingleLine(false);
                this.phoneNumber.setMaxLines(2);
                String lastSpamDateShort = phoneEvent.getLastSpamDateShort();
                TextView textView = this.phoneNumber;
                StringBuilder sb = new StringBuilder();
                if (!TextUtils.isEmpty(lastSpamDateShort)) {
                    str = lastSpamDateShort + ": ";
                }
                sb.append(str);
                sb.append('\"');
                sb.append(phoneEvent.getLastSpamComment());
                sb.append('\"');
                textView.setText(sb.toString());
                this.phoneNumber.setVisibility(0);
            }
            PhoneEventLogAdapter.this.applyTypeFaceOnViews(this);
            PhoneEventLogAdapter.this.setCallType(this, phoneEvent);
            PhoneEventLogAdapter.this.setCallTime(this, phoneEvent);
        }
    }

    public PhoneEventLogAdapter(List<PhoneEvent> list, OnItemClickListener onItemClickListener) {
        this.values = list;
        this.clickListener = onItemClickListener;
    }

    public void applyTypeFaceOnViews(ViewHolder viewHolder) {
        Context context = viewHolder.name.getContext();
        viewHolder.name.setTypeface(FontManager.getInstance().getRegularTypeFace(context));
        viewHolder.phoneNumber.setTypeface(FontManager.getInstance().getRegularTypeFace(context));
        viewHolder.dateTime.setTypeface(FontManager.getInstance().getRegularTypeFace(context));
    }

    public void setCallTime(ViewHolder viewHolder, PhoneEvent phoneEvent) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(phoneEvent.dateTimeInMillis);
        viewHolder.dateTime.setText(DateUtils.isToday(calendar) ? DateTimeFormatter.getTime(viewHolder.dateTime.getContext(), calendar) : DateUtils.isCurrentWeek(calendar) ? DateTimeFormatter.getDayName(calendar) : DateTimeFormatter.getDate(viewHolder.dateTime.getContext(), calendar));
    }

    public void setCallType(ViewHolder viewHolder, PhoneEvent phoneEvent) {
        int i = phoneEvent.type;
        if (i == 1) {
            viewHolder.callType.setImageResource(C2083R.C2085drawable.call_incoming);
        } else if (i == 2) {
            viewHolder.callType.setImageResource(C2083R.C2085drawable.call_outgoing);
        } else if (i == 3) {
            viewHolder.callType.setImageResource(C2083R.C2085drawable.call_missed);
        } else if (i == 5) {
            viewHolder.callType.setImageResource(C2083R.C2085drawable.call_rejected);
        } else if (i == 6) {
            viewHolder.callType.setImageResource(C2083R.C2085drawable.call_rejected);
        } else {
            Logger.debug("Unhandled call actorType!");
            viewHolder.callType.setImageResource(C2083R.C2085drawable.call_outgoing);
        }
    }

    public void add(int i, PhoneEvent phoneEvent) {
        this.values.add(i, phoneEvent);
        notifyItemInserted(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.values.size();
    }

    public void hideItemDetailLoadingProgress() {
        this.detailLoading = false;
        notifyDataSetChanged();
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        viewHolder.bind(i, this.clickListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.list_item_call_log, viewGroup, false));
    }

    public void remove(int i) {
        this.values.remove(i);
        notifyItemRemoved(i);
    }

    public void showItemDetailLoadingProgress(int i) {
        this.focusedPosition = i;
        this.detailLoading = true;
        notifyItemChanged(i);
    }
}
