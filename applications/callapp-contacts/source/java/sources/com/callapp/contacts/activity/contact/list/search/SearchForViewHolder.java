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

    /* renamed from: s */
    private static final String f22875s;

    /* renamed from: t */
    private static final StyleSpan f22876t = new StyleSpan(1);

    /* renamed from: u */
    private static final int f22877u;

    /* renamed from: v */
    private TextView f22878v;

    static {
        String str = Activities.getString(2131886651) + StringUtils.SPACE;
        f22875s = str;
        f22877u = str.length();
    }

    public SearchForViewHolder(View view) {
        super(view);
        int color = ThemeUtils.getColor(2131099784);
        GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder((ImageView) view.findViewById(2131362181), 2131231869, view.getContext()).m27025a(-1, PorterDuff.Mode.SRC_IN);
        m27025a.f28241g = Integer.valueOf(color);
        m27025a.f28243i = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165385);
        m27025a.f28246l = true;
        m27025a.m27013d();
        TextView textView = (TextView) view.findViewById(2131361982);
        this.f22878v = textView;
        textView.setTextColor(color);
    }

    /* renamed from: a */
    public final void m30365a(final SearchForItemData searchForItemData) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(f22875s);
        spannableStringBuilder.append((CharSequence) PhoneNumberUtils.m26078f(searchForItemData.getSuffixText()));
        spannableStringBuilder.setSpan(f22876t, f22877u, spannableStringBuilder.length(), 33);
        this.f22878v.setText(spannableStringBuilder);
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.SearchForViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Search Number", Constants.CLICK);
                if (com.callapp.framework.util.StringUtils.m26059a((CharSequence) searchForItemData.getSuffixText())) {
                    return;
                }
                Phone m28239a = PhoneManager.get().m28239a(searchForItemData.getSuffixText());
                SearchForViewHolder.this.itemView.getContext().startActivity(ContactDetailsActivity.createIntent(SearchForViewHolder.this.itemView.getContext(), 0L, m28239a.getRawNumber(), ExtractedInfo.Builder.getBuilderAccordingToOrigin(m28239a, IMDataExtractionUtils.RecognizedPersonOrigin.SEARCH).build(), true, DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), DataChangedInfo.POSITION_ALL, 5), "SearchFromContactList", ENTRYPOINT.SEARCH));
            }
        });
    }
}
