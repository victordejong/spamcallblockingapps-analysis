package com.callapp.contacts.activity.records;

import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.format.DateUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.records.CallRecordsAdapter;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.recorder.service.RecordService;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.text.SimpleDateFormat;
import java.util.EnumSet;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecorderViewHolder.class */
public class CallRecorderViewHolder extends BaseContactHolder {

    /* renamed from: v */
    private static final int f23974v = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);

    /* renamed from: B */
    private final TextView f23976B;

    /* renamed from: C */
    private final CallAppRow f23977C;

    /* renamed from: D */
    private CallRecorder f23978D;

    /* renamed from: w */
    private final CallRecordsAdapter.CallRecordRowListener f23980w;

    /* renamed from: y */
    private final TextView f23982y;

    /* renamed from: z */
    private final TextView f23983z;

    /* renamed from: x */
    private final ProfilePictureView f23981x = (ProfilePictureView) this.itemView.findViewById(2131363565);

    /* renamed from: A */
    private final AppCompatImageView f23975A = (AppCompatImageView) this.itemView.findViewById(2131362215);

    /* renamed from: u */
    final ImageView f23979u = (ImageView) this.itemView.findViewById(2131363000);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecorderViewHolder$CallRecorderAdapterDataLoadTask.class */
    class CallRecorderAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        CallRecorderAdapterDataLoadTask() {
            super();
            CallRecorderViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final boolean mo29762a(long j, Phone phone, ContactData contactData) {
            if (CallRecorderViewHolder.this.f23978D == null) {
                return false;
            }
            return j > 0 ? CallRecorderViewHolder.this.f23978D.getContactId() == j : CallRecorderViewHolder.this.f23978D.getPhone().m26101a().equals(phone.m26101a());
        }
    }

    public CallRecorderViewHolder(CallAppRow callAppRow, CallRecordsAdapter.CallRecordRowListener callRecordRowListener) {
        super(callAppRow);
        this.f23980w = callRecordRowListener;
        callAppRow.setSwipeable(false);
        int m27386a = ThemeUtils.m27386a(this.itemView.getContext(), 2131099784);
        int color = ThemeUtils.getColor(2131100108);
        int m27386a2 = ThemeUtils.m27386a(this.itemView.getContext(), 2131100140);
        TextView textView = (TextView) this.itemView.findViewById(2131364130);
        this.f23982y = textView;
        TextView textView2 = (TextView) this.itemView.findViewById(2131364030);
        this.f23983z = textView2;
        TextView textView3 = (TextView) this.itemView.findViewById(2131363686);
        this.f23976B = textView3;
        textView3.setTextColor(m27386a);
        textView.setTextColor(m27386a2);
        textView2.setTextColor(color);
        this.f23977C = callAppRow;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v55, types: [android.text.SpannableString] */
    /* renamed from: a */
    public final void m29764a(final CallRecorder callRecorder, ScrollEvents scrollEvents, boolean z) {
        String str;
        String str2;
        this.f23978D = callRecorder;
        m31503a(callRecorder.getCacheKey(), callRecorder, scrollEvents, callRecorder.getContactId(), PhoneManager.get().m28239a(!StringUtils.m26044b((Object) callRecorder.getPhoneText(), (Object) RecordService.PRIVATE_NUMBER_STRING) ? callRecorder.getPhoneText() : ""));
        getProfilePicture().m26679b(callRecorder.isChecked(), false);
        int i = 1;
        if (callRecorder.isUploaded()) {
            getProfilePicture().m26685a(ViewUtils.getDrawable(2131231465));
            getProfilePicture().m26683a(true);
        } else {
            getProfilePicture().m26683a(false);
        }
        if (StringUtils.m26045b((CharSequence) callRecorder.displayName)) {
            str2 = StringUtils.m26020j(callRecorder.displayName);
            if (z && callRecorder.textHighlights.size() != 0) {
                str2 = ViewUtils.m27307a(str2, callRecorder.textHighlights, f23974v);
            }
            str = StringUtils.m26010r(str2.toString());
        } else {
            str2 = StringUtils.m26044b((Object) callRecorder.getPhoneText(), (Object) RecordService.PRIVATE_NUMBER_STRING) ? Activities.getString(2131886488) : callRecorder.getPhoneText();
            str = "?";
        }
        getProfilePicture().setText(str);
        this.f23982y.setText(str2);
        this.f23983z.setText(new SimpleDateFormat("MMM d, HH:mm a", Locale.getDefault()).format(Long.valueOf(callRecorder.getDate())));
        AppCompatImageView appCompatImageView = this.f23975A;
        if (callRecorder.getCallType() != 1) {
            i = 2;
        }
        ImageUtils.m27529a(appCompatImageView, CallLogUtils.getCallHistoryIcon(i), (ColorFilter) null);
        this.f23976B.setText(DateUtils.formatElapsedTime(callRecorder.getDuration()));
        ImageUtils.m27529a(this.f23979u, 2131231379, new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        this.f23979u.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.records.CallRecorderViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "start call record dialog");
                if (CallRecorderViewHolder.this.f23980w != null) {
                    CallRecorderViewHolder.this.f23980w.mo29709a(callRecorder, true);
                }
            }
        });
    }

    public CallAppRow getCallAppRow() {
        return this.f23977C;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_AND_PHONE_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f23981x;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new CallRecorderAdapterDataLoadTask();
    }
}
