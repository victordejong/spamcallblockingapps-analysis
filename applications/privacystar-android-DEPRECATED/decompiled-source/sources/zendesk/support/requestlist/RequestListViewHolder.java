package zendesk.support.requestlist;

import android.content.Context;
import android.graphics.Typeface;
import android.support.annotation.NonNull;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import zendesk.support.UiUtils;
import zendesk.support.ZendeskAvatarView;
import zendesk.support.requestlist.RequestListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListViewHolder.class */
public class RequestListViewHolder extends RecyclerView.ViewHolder {
    private final int avatarRadius;
    private final ZendeskAvatarView avatarView;
    private final TextView commentText;
    private final Context context;
    private final RequestListView.OnItemClick listener;
    private final Picasso picasso;
    private final TextView subjectText;
    private final TextView timeText;
    private final TextView userText;

    private RequestListViewHolder(View view, RequestListView.OnItemClick onItemClick, Picasso picasso) {
        super(view);
        this.listener = onItemClick;
        this.picasso = picasso;
        this.context = view.getContext();
        this.avatarView = (ZendeskAvatarView) view.findViewById(C1790R.C1793id.request_list_item_avatar);
        this.timeText = (TextView) view.findViewById(C1790R.C1793id.request_list_item_time);
        this.userText = (TextView) view.findViewById(C1790R.C1793id.request_list_item_user);
        this.subjectText = (TextView) view.findViewById(C1790R.C1793id.request_list_item_subject);
        this.commentText = (TextView) view.findViewById(C1790R.C1793id.request_list_item_body);
        this.avatarRadius = this.context.getResources().getDimensionPixelOffset(C1790R.dimen.zs_request_list_avatar_radius);
    }

    private void bindAvatar(boolean z, List<String> list, String str) {
        if (!z) {
            this.avatarView.showUserWithIdentifier(Integer.valueOf(C1790R.string.request_list_me));
        } else if (StringUtils.hasLength(str)) {
            this.avatarView.showUserWithAvatarImage(this.picasso, str, list.get(0), this.avatarRadius);
        } else {
            this.avatarView.showUserWithName(list.get(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RequestListViewHolder create(Context context, ViewGroup viewGroup, RequestListView.OnItemClick onItemClick, Picasso picasso) {
        return new RequestListViewHolder(LayoutInflater.from(context).inflate(C1790R.C1794layout.zs_request_list_ticket_item, viewGroup, false), onItemClick, picasso);
    }

    @NonNull
    private String generateUserText(String str, List<String> list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(str);
        return TextUtils.join(", ", arrayList);
    }

    private CharSequence getDateTimeString(@NonNull Date date) {
        return DateUtils.getRelativeTimeSpanString(this.context, date.getTime(), false);
    }

    private void style(boolean z, boolean z2, boolean z3) {
        if (z) {
            this.subjectText.setTypeface(Typeface.defaultFromStyle(1));
            this.userText.setTypeface(Typeface.defaultFromStyle(1));
            this.commentText.setTextColor(ContextCompat.getColor(this.context, C1790R.color.zs_request_list_dark_text_color));
            this.timeText.setTextColor(UiUtils.themeAttributeToColor(C1790R.C1791attr.colorPrimary, this.context, C1790R.color.zs_request_list_light_text_color));
        } else {
            this.subjectText.setTypeface(Typeface.defaultFromStyle(0));
            this.userText.setTypeface(Typeface.defaultFromStyle(0));
            this.commentText.setTextColor(ContextCompat.getColor(this.context, C1790R.color.zs_request_list_light_text_color));
            this.timeText.setTextColor(ContextCompat.getColor(this.context, C1790R.color.zs_request_list_light_text_color));
        }
        if (z2) {
            this.commentText.setTextColor(ContextCompat.getColor(this.context, C1790R.color.zs_request_cell_label_color_error));
        }
        this.itemView.setBackgroundColor(ContextCompat.getColor(this.context, z3 ? C1790R.color.zs_request_list_default_item_background : C1790R.color.zs_request_list_white));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bind(@NonNull final RequestListItem requestListItem) {
        this.userText.setText(generateUserText(this.context.getString(C1790R.string.request_list_me), requestListItem.getLastCommentingAgentNames()));
        this.subjectText.setText(requestListItem.hasAgentReplied() ? this.context.getString(C1790R.string.request_list_re, requestListItem.getFirstMessage()) : requestListItem.getFirstMessage());
        if (requestListItem.isClosed()) {
            this.commentText.setText(C1790R.string.request_list_ticket_closed);
        } else if (requestListItem.isFailed()) {
            this.commentText.setText(C1790R.string.ask_request_list_failed_request_message);
        } else {
            this.commentText.setText(requestListItem.getLastMessage());
        }
        this.timeText.setText(getDateTimeString(requestListItem.getLastUpdated()));
        bindAvatar(requestListItem.hasAgentReplied(), requestListItem.getLastCommentingAgentNames(), requestListItem.getAvatar());
        style(requestListItem.isUnread(), requestListItem.isFailed(), requestListItem.isClosed());
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.requestlist.RequestListViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RequestListViewHolder.this.listener.onClick(requestListItem);
            }
        });
    }
}
