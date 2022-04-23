package com.callapp.contacts.activity.invite.viewholder;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.model.invites.ReferAndEarnUserData;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.CallAppCheckBox;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.EnumSet;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018�� \"2\u00020\u0001:\u0003\"#$B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\f\u0010\u0011\u001a\u00060\u0012R\u00020\u0001H\u0014J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0014J\n\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020!H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006%"}, d2 = {"Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;", "Lcom/callapp/contacts/activity/base/BaseContactHolder;", "callAppRow", "Lcom/callapp/contacts/activity/base/CallAppRow;", "l", "Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener;", "(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener;)V", "bottomButton", "Landroid/widget/TextView;", "checkBox", "Lcom/callapp/contacts/widget/CallAppCheckBox;", "listener", "name", "profilePictureView", "Lcom/callapp/contacts/widget/ProfilePictureView;", "secondaryRow", "topButton", "createAdapterDataLoadTask", "Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;", "getLoaderLoadFields", "Ljava/util/EnumSet;", "Lcom/callapp/contacts/model/contact/ContactField;", "getProfilePicture", "onBind", "", "data", "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;", "scrollEvents", "Lcom/callapp/contacts/activity/base/ScrollEvents;", "onItemClick", "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;", "setReferAndEarnView", "globalNumber", "", "Companion", "ContactListAdapterDataLoadTask", "OnInviteCheckChangeListener", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder.class */
public final class InviteVerticalViewHolder extends BaseContactHolder {
    private TextView A;
    private final OnInviteCheckChangeListener B;
    private final CallAppRow C;
    private ProfilePictureView v;
    private TextView w;
    private TextView x;
    private CallAppCheckBox y;
    private TextView z;
    public static final Companion u = new Companion(null);
    private static final int D = ThemeUtils.a(CallAppApplication.get(), 2131099784);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$Companion;", "", "()V", "foregroundColor", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\b\u0082\u0004\u0018��2\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$ContactListAdapterDataLoadTask;", "Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;", "Lcom/callapp/contacts/activity/base/BaseContactHolder;", "(Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;)V", "addContactLoaderStack", "", "contactLoader", "Lcom/callapp/contacts/loader/api/ContactLoader;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$ContactListAdapterDataLoadTask.class */
    final class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        public ContactListAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            p.d(contactLoader, "contactLoader");
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u001c\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener;", "", "onCheckChanged", "", "onGreyCheckChanged", "memoryContactItem", "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;", "callAppCheckBox", "Lcom/callapp/contacts/widget/CallAppCheckBox;", "onShareClicked", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener.class */
    public interface OnInviteCheckChangeListener {
        void a(BadgeMemoryContactItem badgeMemoryContactItem);

        void a(BadgeMemoryContactItem badgeMemoryContactItem, CallAppCheckBox callAppCheckBox);

        void e();
    }

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f12980a;

        static {
            int[] iArr = new int[ReferAndEarnUserData.STATUS.values().length];
            f12980a = iArr;
            iArr[ReferAndEarnUserData.STATUS.IDLE.ordinal()] = 1;
            iArr[ReferAndEarnUserData.STATUS.PENDING.ordinal()] = 2;
            iArr[ReferAndEarnUserData.STATUS.INSTALLED.ordinal()] = 3;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InviteVerticalViewHolder(CallAppRow callAppRow, OnInviteCheckChangeListener l) {
        super(callAppRow);
        p.d(callAppRow, "callAppRow");
        p.d(l, "l");
        this.C = callAppRow;
        View findViewById = this.itemView.findViewById(2131363565);
        Objects.requireNonNull(findViewById, "null cannot be cast to non-null type com.callapp.contacts.widget.ProfilePictureView");
        ProfilePictureView profilePictureView = (ProfilePictureView) findViewById;
        this.v = profilePictureView;
        if (profilePictureView != null) {
            profilePictureView.setClickable(true);
        }
        View findViewById2 = this.itemView.findViewById(2131363348);
        Objects.requireNonNull(findViewById2, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) findViewById2;
        this.w = textView;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.getColor(2131100140));
        }
        View findViewById3 = this.itemView.findViewById(2131363500);
        Objects.requireNonNull(findViewById3, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView2 = (TextView) findViewById3;
        this.x = textView2;
        if (textView2 != null) {
            textView2.setTextColor(ThemeUtils.getColor(2131100108));
        }
        this.y = (CallAppCheckBox) this.itemView.findViewById(2131362340);
        TextView textView3 = (TextView) this.itemView.findViewById(2131364171);
        this.z = textView3;
        if (textView3 != null) {
            textView3.setClickable(true);
        }
        TextView textView4 = (TextView) this.itemView.findViewById(2131362118);
        this.A = textView4;
        if (textView4 != null) {
            textView4.setClickable(true);
        }
        CallAppCheckBox callAppCheckBox = this.y;
        if (callAppCheckBox != null) {
            callAppCheckBox.setChangeColorAccordingToTheme(true);
        }
        this.B = l;
        callAppRow.setSwipeable(false);
    }

    public static final /* synthetic */ void a(InviteVerticalViewHolder inviteVerticalViewHolder, MemoryContactItem memoryContactItem) {
        if (inviteVerticalViewHolder.getItemViewType() == 24) {
            OnInviteCheckChangeListener onInviteCheckChangeListener = inviteVerticalViewHolder.B;
            Objects.requireNonNull(memoryContactItem, "null cannot be cast to non-null type com.callapp.contacts.activity.invite.BadgeMemoryContactItem");
            onInviteCheckChangeListener.a((BadgeMemoryContactItem) memoryContactItem);
            return;
        }
        boolean z = !memoryContactItem.isChecked();
        if (z && (memoryContactItem instanceof BadgeMemoryContactItem)) {
            BadgeMemoryContactItem badgeMemoryContactItem = (BadgeMemoryContactItem) memoryContactItem;
            if (badgeMemoryContactItem.isShouldGrey()) {
                inviteVerticalViewHolder.B.a(badgeMemoryContactItem, inviteVerticalViewHolder.y);
                return;
            }
        }
        memoryContactItem.setChecked(z);
        CallAppCheckBox callAppCheckBox = inviteVerticalViewHolder.y;
        if (callAppCheckBox != null) {
            callAppCheckBox.setChecked(z);
        }
        inviteVerticalViewHolder.B.e();
    }

    private final void setReferAndEarnView(String str) {
        TextView textView;
        String str2;
        TextView textView2 = this.z;
        if (textView2 != null) {
            textView2.setBackgroundResource(0);
        }
        TextView textView3 = this.A;
        if (textView3 != null) {
            textView3.setBackgroundResource(0);
        }
        TextView textView4 = this.A;
        if (textView4 != null) {
            textView4.setOnClickListener(InviteVerticalViewHolder$setReferAndEarnView$1.f12987a);
        }
        TextView textView5 = this.z;
        if (textView5 != null) {
            textView5.setOnClickListener(InviteVerticalViewHolder$setReferAndEarnView$2.f12988a);
        }
        int i = WhenMappings.f12980a[ReferAndEarnDataManager.Companion.getReferStatus(str).ordinal()];
        if (i == 1) {
            TextView textView6 = this.z;
            if (textView6 != null) {
                textView6.setVisibility(8);
            }
            DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f15494a;
            DialogMessageWithTopImageNew.Companion.a(this.A, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131100098)), Integer.valueOf(ThemeUtils.getColor(2131100098)), 0, Integer.valueOf(ThemeUtils.getColor(2131100228)), new SpannableString(Activities.getString(2131887065)), null, true, true);
            TextView textView7 = this.A;
            if (textView7 != null) {
                textView7.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder$setReferAndEarnView$3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        InviteVerticalViewHolder.OnInviteCheckChangeListener onInviteCheckChangeListener;
                        BaseAdapterItemData baseAdapterItemData;
                        onInviteCheckChangeListener = InviteVerticalViewHolder.this.B;
                        baseAdapterItemData = InviteVerticalViewHolder.this.t;
                        Objects.requireNonNull(baseAdapterItemData, "null cannot be cast to non-null type com.callapp.contacts.activity.invite.BadgeMemoryContactItem");
                        onInviteCheckChangeListener.a((BadgeMemoryContactItem) baseAdapterItemData);
                    }
                });
            }
        } else if (i == 2) {
            TextView textView8 = this.z;
            if (textView8 != null) {
                textView8.setVisibility(0);
                textView8.setAllCaps(false);
                textView8.setTextColor(ThemeUtils.getColor(2131100140));
                textView8.setText(Activities.getString(2131887545));
            }
            DialogMessageWithTopImageNew.Companion companion2 = DialogMessageWithTopImageNew.f15494a;
            DialogMessageWithTopImageNew.Companion.a(this.A, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131100228)), Integer.valueOf(ThemeUtils.getColor(2131100098)), 2, Integer.valueOf(ThemeUtils.getColor(2131100098)), new SpannableString(Activities.getString(2131887547)), null, true, true);
            TextView textView9 = this.A;
            if (textView9 != null) {
                textView9.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder$setReferAndEarnView$5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        InviteVerticalViewHolder.OnInviteCheckChangeListener onInviteCheckChangeListener;
                        BaseAdapterItemData baseAdapterItemData;
                        onInviteCheckChangeListener = InviteVerticalViewHolder.this.B;
                        baseAdapterItemData = InviteVerticalViewHolder.this.t;
                        Objects.requireNonNull(baseAdapterItemData, "null cannot be cast to non-null type com.callapp.contacts.activity.invite.BadgeMemoryContactItem");
                        onInviteCheckChangeListener.a((BadgeMemoryContactItem) baseAdapterItemData);
                    }
                });
            }
        } else if (i == 3 && (textView = this.z) != null) {
            textView.setVisibility(0);
            TextView textView10 = this.A;
            if (textView10 != null) {
                textView10.setVisibility(8);
            }
            Long installedDate = ReferAndEarnDataManager.Companion.getInstalledDate(str);
            if (installedDate != null) {
                long longValue = installedDate.longValue();
                String str3 = (Activities.getString(2131887537) + StringUtils.LF) + new SimpleDateFormat("MM/dd/yyyy").format(new Date(longValue));
                if (str3 != null) {
                    str2 = str3;
                    textView.setText(str2);
                    textView.setTextColor(ThemeUtils.getColor(2131100098));
                }
            }
            str2 = Activities.getString(2131887537);
            textView.setText(str2);
            textView.setTextColor(ThemeUtils.getColor(2131100098));
        }
    }

    public final void a(final BadgeMemoryContactItem data, ScrollEvents scrollEvents) {
        ProfilePictureView profilePictureView;
        p.d(data, "data");
        a(data.getCacheKey(), data, scrollEvents, data.getContactId(), data.getPhone());
        SpannableString spannableString = new SpannableString(ContactUtils.a(data.normalNumbers, data.getPhone()));
        String j = com.callapp.framework.util.StringUtils.j(data.displayName);
        SparseIntArray sparseIntArray = data.textHighlights;
        int i = D;
        SpannableString a2 = ViewUtils.a(j, sparseIntArray, i);
        p.b(a2, "ViewUtils.getSpannableCo…hlights, foregroundColor)");
        SpannableString spannableString2 = a2;
        String str = spannableString2;
        if (com.callapp.framework.util.StringUtils.a(spannableString2)) {
            String j2 = com.callapp.framework.util.StringUtils.j(data.displayName);
            p.b(j2, "StringUtils.capitalizeName(data.displayName)");
            str = j2;
        }
        int i2 = data.numberMatchIndexStart;
        int i3 = data.numberMatchIndexEnd;
        if (i2 >= 0 && i3 >= 0 && i3 <= spannableString.length() && i2 <= spannableString.length()) {
            spannableString.setSpan(new ForegroundColorSpan(i), i2, i3, 18);
        }
        ProfilePictureView profilePictureView2 = this.v;
        if (profilePictureView2 != null) {
            profilePictureView2.setText(com.callapp.framework.util.StringUtils.r(str.toString()));
        }
        if (!(data.getBadgeResId() == 0 || (profilePictureView = this.v) == null)) {
            profilePictureView.a(ViewUtils.getDrawable(data.getBadgeResId()));
        }
        TextView textView = this.w;
        if (textView != null) {
            textView.setText(str);
        }
        if (data.getBadgeResId() == 2131231896 || data.f12646d == null) {
            TextView textView2 = this.x;
            if (textView2 != null) {
                Phone phone = data.getPhone();
                p.b(phone, "data.phone");
                textView2.setText(phone.getRawNumber());
            }
        } else {
            TextView textView3 = this.x;
            if (textView3 != null) {
                JSONEmail next = data.f12646d.iterator().next();
                p.b(next, "data.emails.iterator().next()");
                textView3.setText(next.getEmail());
            }
        }
        if (getItemViewType() == 24) {
            String a3 = data.getPhone().a();
            p.b(a3, "data.phone.asGlobalNumber()");
            setReferAndEarnView(a3);
        } else {
            CallAppCheckBox callAppCheckBox = this.y;
            if (callAppCheckBox != null) {
                callAppCheckBox.setChecked(data.isChecked());
            }
            if (data.isShouldGrey()) {
                this.C.setAlpha(0.4f);
            } else {
                this.C.setAlpha(1.0f);
            }
            CallAppCheckBox callAppCheckBox2 = this.y;
            if (callAppCheckBox2 != null) {
                callAppCheckBox2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder$onBind$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        InviteVerticalViewHolder.a(InviteVerticalViewHolder.this, data);
                    }
                });
            }
        }
        this.C.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder$onBind$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InviteVerticalViewHolder.a(InviteVerticalViewHolder.this, data);
            }
        });
        ProfilePictureView profilePictureView3 = this.v;
        if (profilePictureView3 != null) {
            profilePictureView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder$onBind$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    InviteVerticalViewHolder.a(InviteVerticalViewHolder.this, data);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final EnumSet<ContactField> getLoaderLoadFields() {
        EnumSet<ContactField> enumSet = ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD;
        p.b(enumSet, "ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD");
        return enumSet;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final ProfilePictureView getProfilePicture() {
        return this.v;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new ContactListAdapterDataLoadTask();
    }
}
