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
    private static final int v = ThemeUtils.a(CallAppApplication.get(), 2131099784);
    private final TextView B;
    private final CallAppRow C;
    private CallRecorder D;
    private final CallRecordsAdapter.CallRecordRowListener w;
    private final TextView y;
    private final TextView z;
    private final ProfilePictureView x = (ProfilePictureView) this.itemView.findViewById(2131363565);
    private final AppCompatImageView A = (AppCompatImageView) this.itemView.findViewById(2131362215);
    final ImageView u = (ImageView) this.itemView.findViewById(2131363000);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecorderViewHolder$CallRecorderAdapterDataLoadTask.class */
    class CallRecorderAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        CallRecorderAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final boolean a(long j, Phone phone, ContactData contactData) {
            if (CallRecorderViewHolder.this.D == null) {
                return false;
            }
            return j > 0 ? CallRecorderViewHolder.this.D.getContactId() == j : CallRecorderViewHolder.this.D.getPhone().a().equals(phone.a());
        }
    }

    public CallRecorderViewHolder(CallAppRow callAppRow, CallRecordsAdapter.CallRecordRowListener callRecordRowListener) {
        super(callAppRow);
        this.w = callRecordRowListener;
        callAppRow.setSwipeable(false);
        int a2 = ThemeUtils.a(this.itemView.getContext(), 2131099784);
        int color = ThemeUtils.getColor(2131100108);
        int a3 = ThemeUtils.a(this.itemView.getContext(), 2131100140);
        TextView textView = (TextView) this.itemView.findViewById(2131364130);
        this.y = textView;
        TextView textView2 = (TextView) this.itemView.findViewById(2131364030);
        this.z = textView2;
        TextView textView3 = (TextView) this.itemView.findViewById(2131363686);
        this.B = textView3;
        textView3.setTextColor(a2);
        textView.setTextColor(a3);
        textView2.setTextColor(color);
        this.C = callAppRow;
    }

    public final void a(final CallRecorder callRecorder, ScrollEvents scrollEvents, boolean z) {
        String str;
        CharSequence charSequence;
        this.D = callRecorder;
        a(callRecorder.getCacheKey(), callRecorder, scrollEvents, callRecorder.getContactId(), PhoneManager.get().a(!StringUtils.b((Object) callRecorder.getPhoneText(), (Object) RecordService.PRIVATE_NUMBER_STRING) ? callRecorder.getPhoneText() : ""));
        getProfilePicture().b(callRecorder.isChecked(), false);
        int i = 1;
        if (callRecorder.isUploaded()) {
            getProfilePicture().a(ViewUtils.getDrawable(2131231465));
            getProfilePicture().a(true);
        } else {
            getProfilePicture().a(false);
        }
        if (StringUtils.b((CharSequence) callRecorder.displayName)) {
            String j = StringUtils.j(callRecorder.displayName);
            CharSequence charSequence2 = j;
            if (z) {
                charSequence2 = j;
                if (callRecorder.textHighlights.size() != 0) {
                    charSequence2 = ViewUtils.a(j, callRecorder.textHighlights, v);
                }
            }
            str = StringUtils.r(charSequence2.toString());
            charSequence = charSequence2;
        } else {
            str = "?";
            charSequence = StringUtils.b((Object) callRecorder.getPhoneText(), (Object) RecordService.PRIVATE_NUMBER_STRING) ? Activities.getString(2131886488) : callRecorder.getPhoneText();
        }
        getProfilePicture().setText(str);
        this.y.setText(charSequence);
        this.z.setText(new SimpleDateFormat("MMM d, HH:mm a", Locale.getDefault()).format(Long.valueOf(callRecorder.getDate())));
        AppCompatImageView appCompatImageView = this.A;
        if (callRecorder.getCallType() != 1) {
            i = 2;
        }
        ImageUtils.a(appCompatImageView, CallLogUtils.getCallHistoryIcon(i), (ColorFilter) null);
        this.B.setText(DateUtils.formatElapsedTime(callRecorder.getDuration()));
        ImageUtils.a(this.u, 2131231379, new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        this.u.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.records.CallRecorderViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                AnalyticsManager.get().a(Constants.CALL_RECORDER, "start call record dialog");
                if (CallRecorderViewHolder.this.w != null) {
                    CallRecorderViewHolder.this.w.a(callRecorder, true);
                }
            }
        });
    }

    public CallAppRow getCallAppRow() {
        return this.C;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_AND_PHONE_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.x;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new CallRecorderAdapterDataLoadTask();
    }
}
