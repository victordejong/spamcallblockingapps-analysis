package com.callapp.contacts.activity.contact.list.search;

import android.graphics.PorterDuff;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneNumberUtils;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchForViewHolder.class */
public class SearchForViewHolder extends BaseCallAppViewHolder {
    private static final String s;
    private static final StyleSpan t = new StyleSpan(1);
    private static final int u;
    private TextView v;

    static {
        String str = Activities.getString(2131886651) + StringUtils.SPACE;
        s = str;
        u = str.length();
    }

    public SearchForViewHolder(View view) {
        super(view);
        int color = ThemeUtils.getColor(2131099784);
        GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder((ImageView) view.findViewById(2131362181), 2131231869, view.getContext()).a(-1, PorterDuff.Mode.SRC_IN);
        a2.g = Integer.valueOf(color);
        a2.i = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165385);
        a2.l = true;
        a2.d();
        TextView textView = (TextView) view.findViewById(2131361982);
        this.v = textView;
        textView.setTextColor(color);
    }

    public final void a(final SearchForItemData searchForItemData) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(s);
        spannableStringBuilder.append((CharSequence) PhoneNumberUtils.f(searchForItemData.getSuffixText()));
        spannableStringBuilder.setSpan(t, u, spannableStringBuilder.length(), 33);
        this.v.setText(spannableStringBuilder);
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.SearchForViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Search Number", Constants.CLICK);
                if (!com.callapp.framework.util.StringUtils.a((CharSequence) searchForItemData.getSuffixText())) {
                    Phone a2 = PhoneManager.get().a(searchForItemData.getSuffixText());
                    SearchForViewHolder.this.itemView.getContext().startActivity(ContactDetailsActivity.createIntent(SearchForViewHolder.this.itemView.getContext(), 0L, a2.getRawNumber(), ExtractedInfo.Builder.getBuilderAccordingToOrigin(a2, IMDataExtractionUtils.RecognizedPersonOrigin.SEARCH).build(), true, DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), DataChangedInfo.POSITION_ALL, 5), "SearchFromContactList", ENTRYPOINT.SEARCH));
                }
            }
        });
    }
}
