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
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018�� \"2\u00020\u0001:\u0003\"#$B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\f\u0010\u0011\u001a\u00060\u0012R\u00020\u0001H\u0014J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0014J\n\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020!H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006%"}, m4298d2 = {"Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;", "Lcom/callapp/contacts/activity/base/BaseContactHolder;", "callAppRow", "Lcom/callapp/contacts/activity/base/CallAppRow;", "l", "Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener;", "(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener;)V", "bottomButton", "Landroid/widget/TextView;", "checkBox", "Lcom/callapp/contacts/widget/CallAppCheckBox;", "listener", "name", "profilePictureView", "Lcom/callapp/contacts/widget/ProfilePictureView;", "secondaryRow", "topButton", "createAdapterDataLoadTask", "Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;", "getLoaderLoadFields", "Ljava/util/EnumSet;", "Lcom/callapp/contacts/model/contact/ContactField;", "getProfilePicture", "onBind", "", "data", "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;", "scrollEvents", "Lcom/callapp/contacts/activity/base/ScrollEvents;", "onItemClick", "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;", "setReferAndEarnView", "globalNumber", "", "Companion", "ContactListAdapterDataLoadTask", "OnInviteCheckChangeListener", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder.class */
public final class InviteVerticalViewHolder extends BaseContactHolder {

    /* renamed from: A */
    private TextView f23167A;

    /* renamed from: B */
    private final OnInviteCheckChangeListener f23168B;

    /* renamed from: C */
    private final CallAppRow f23169C;

    /* renamed from: v */
    private ProfilePictureView f23170v;

    /* renamed from: w */
    private TextView f23171w;

    /* renamed from: x */
    private TextView f23172x;

    /* renamed from: y */
    private CallAppCheckBox f23173y;

    /* renamed from: z */
    private TextView f23174z;

    /* renamed from: u */
    public static final Companion f23166u = new Companion(null);

    /* renamed from: D */
    private static final int f23165D = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$Companion;", "", "()V", "foregroundColor", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\b\u0082\u0004\u0018��2\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m4298d2 = {"Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$ContactListAdapterDataLoadTask;", "Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;", "Lcom/callapp/contacts/activity/base/BaseContactHolder;", "(Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;)V", "addContactLoaderStack", "", "contactLoader", "Lcom/callapp/contacts/loader/api/ContactLoader;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$ContactListAdapterDataLoadTask.class */
    final class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ContactListAdapterDataLoadTask() {
            super();
            InviteVerticalViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            C18524p.m3840d(contactLoader, "contactLoader");
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u001c\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener;", "", "onCheckChanged", "", "onGreyCheckChanged", "memoryContactItem", "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;", "callAppCheckBox", "Lcom/callapp/contacts/widget/CallAppCheckBox;", "onShareClicked", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener.class */
    public interface OnInviteCheckChangeListener {
        /* renamed from: a */
        void mo30182a(BadgeMemoryContactItem badgeMemoryContactItem);

        /* renamed from: a */
        void mo30181a(BadgeMemoryContactItem badgeMemoryContactItem, CallAppCheckBox callAppCheckBox);

        /* renamed from: e */
        void mo30180e();
    }

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f23176a;

        static {
            int[] iArr = new int[ReferAndEarnUserData.STATUS.values().length];
            f23176a = iArr;
            iArr[ReferAndEarnUserData.STATUS.IDLE.ordinal()] = 1;
            iArr[ReferAndEarnUserData.STATUS.PENDING.ordinal()] = 2;
            iArr[ReferAndEarnUserData.STATUS.INSTALLED.ordinal()] = 3;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InviteVerticalViewHolder(CallAppRow callAppRow, OnInviteCheckChangeListener l) {
        super(callAppRow);
        C18524p.m3840d(callAppRow, "callAppRow");
        C18524p.m3840d(l, "l");
        this.f23169C = callAppRow;
        View findViewById = this.itemView.findViewById(2131363565);
        Objects.requireNonNull(findViewById, "null cannot be cast to non-null type com.callapp.contacts.widget.ProfilePictureView");
        ProfilePictureView profilePictureView = (ProfilePictureView) findViewById;
        this.f23170v = profilePictureView;
        if (profilePictureView != null) {
            profilePictureView.setClickable(true);
        }
        View findViewById2 = this.itemView.findViewById(2131363348);
        Objects.requireNonNull(findViewById2, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) findViewById2;
        this.f23171w = textView;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.getColor(2131100140));
        }
        View findViewById3 = this.itemView.findViewById(2131363500);
        Objects.requireNonNull(findViewById3, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView2 = (TextView) findViewById3;
        this.f23172x = textView2;
        if (textView2 != null) {
            textView2.setTextColor(ThemeUtils.getColor(2131100108));
        }
        this.f23173y = (CallAppCheckBox) this.itemView.findViewById(2131362340);
        TextView textView3 = (TextView) this.itemView.findViewById(2131364171);
        this.f23174z = textView3;
        if (textView3 != null) {
            textView3.setClickable(true);
        }
        TextView textView4 = (TextView) this.itemView.findViewById(2131362118);
        this.f23167A = textView4;
        if (textView4 != null) {
            textView4.setClickable(true);
        }
        CallAppCheckBox callAppCheckBox = this.f23173y;
        if (callAppCheckBox != null) {
            callAppCheckBox.setChangeColorAccordingToTheme(true);
        }
        this.f23168B = l;
        callAppRow.setSwipeable(false);
    }

    /* renamed from: a */
    public static final /* synthetic */ void m30184a(InviteVerticalViewHolder inviteVerticalViewHolder, MemoryContactItem memoryContactItem) {
        if (inviteVerticalViewHolder.getItemViewType() == 24) {
            OnInviteCheckChangeListener onInviteCheckChangeListener = inviteVerticalViewHolder.f23168B;
            Objects.requireNonNull(memoryContactItem, "null cannot be cast to non-null type com.callapp.contacts.activity.invite.BadgeMemoryContactItem");
            onInviteCheckChangeListener.mo30182a((BadgeMemoryContactItem) memoryContactItem);
            return;
        }
        boolean z = !memoryContactItem.isChecked();
        if (z && (memoryContactItem instanceof BadgeMemoryContactItem)) {
            BadgeMemoryContactItem badgeMemoryContactItem = (BadgeMemoryContactItem) memoryContactItem;
            if (badgeMemoryContactItem.isShouldGrey()) {
                inviteVerticalViewHolder.f23168B.mo30181a(badgeMemoryContactItem, inviteVerticalViewHolder.f23173y);
                return;
            }
        }
        memoryContactItem.setChecked(z);
        CallAppCheckBox callAppCheckBox = inviteVerticalViewHolder.f23173y;
        if (callAppCheckBox != null) {
            callAppCheckBox.setChecked(z);
        }
        inviteVerticalViewHolder.f23168B.mo30180e();
    }

    private final void setReferAndEarnView(String str) {
        TextView textView;
        String str2;
        TextView textView2 = this.f23174z;
        if (textView2 != null) {
            textView2.setBackgroundResource(0);
        }
        TextView textView3 = this.f23167A;
        if (textView3 != null) {
            textView3.setBackgroundResource(0);
        }
        TextView textView4 = this.f23167A;
        if (textView4 != null) {
            textView4.setOnClickListener(InviteVerticalViewHolder$setReferAndEarnView$1.f23183a);
        }
        TextView textView5 = this.f23174z;
        if (textView5 != null) {
            textView5.setOnClickListener(InviteVerticalViewHolder$setReferAndEarnView$2.f23184a);
        }
        int i = WhenMappings.f23176a[ReferAndEarnDataManager.Companion.getReferStatus(str).ordinal()];
        if (i == 1) {
            TextView textView6 = this.f23174z;
            if (textView6 != null) {
                textView6.setVisibility(8);
            }
            DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f27121a;
            DialogMessageWithTopImageNew.Companion.m27968a(this.f23167A, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131100098)), Integer.valueOf(ThemeUtils.getColor(2131100098)), 0, Integer.valueOf(ThemeUtils.getColor(2131100228)), new SpannableString(Activities.getString(2131887065)), null, true, true);
            TextView textView7 = this.f23167A;
            if (textView7 == null) {
                return;
            }
            textView7.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder$setReferAndEarnView$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    InviteVerticalViewHolder.OnInviteCheckChangeListener onInviteCheckChangeListener;
                    BaseAdapterItemData baseAdapterItemData;
                    onInviteCheckChangeListener = InviteVerticalViewHolder.this.f23168B;
                    baseAdapterItemData = InviteVerticalViewHolder.this.f20280t;
                    Objects.requireNonNull(baseAdapterItemData, "null cannot be cast to non-null type com.callapp.contacts.activity.invite.BadgeMemoryContactItem");
                    onInviteCheckChangeListener.mo30182a((BadgeMemoryContactItem) baseAdapterItemData);
                }
            });
        } else if (i == 2) {
            TextView textView8 = this.f23174z;
            if (textView8 != null) {
                textView8.setVisibility(0);
                textView8.setAllCaps(false);
                textView8.setTextColor(ThemeUtils.getColor(2131100140));
                textView8.setText(Activities.getString(2131887545));
            }
            DialogMessageWithTopImageNew.Companion companion2 = DialogMessageWithTopImageNew.f27121a;
            DialogMessageWithTopImageNew.Companion.m27968a(this.f23167A, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131100228)), Integer.valueOf(ThemeUtils.getColor(2131100098)), 2, Integer.valueOf(ThemeUtils.getColor(2131100098)), new SpannableString(Activities.getString(2131887547)), null, true, true);
            TextView textView9 = this.f23167A;
            if (textView9 == null) {
                return;
            }
            textView9.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder$setReferAndEarnView$5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    InviteVerticalViewHolder.OnInviteCheckChangeListener onInviteCheckChangeListener;
                    BaseAdapterItemData baseAdapterItemData;
                    onInviteCheckChangeListener = InviteVerticalViewHolder.this.f23168B;
                    baseAdapterItemData = InviteVerticalViewHolder.this.f20280t;
                    Objects.requireNonNull(baseAdapterItemData, "null cannot be cast to non-null type com.callapp.contacts.activity.invite.BadgeMemoryContactItem");
                    onInviteCheckChangeListener.mo30182a((BadgeMemoryContactItem) baseAdapterItemData);
                }
            });
        } else if (i != 3 || (textView = this.f23174z) == null) {
        } else {
            textView.setVisibility(0);
            TextView textView10 = this.f23167A;
            if (textView10 != null) {
                textView10.setVisibility(8);
            }
            Long installedDate = ReferAndEarnDataManager.Companion.getInstalledDate(str);
            if (installedDate != null) {
                long longValue = installedDate.longValue();
                String str3 = (Activities.getString(2131887537) + StringUtils.f67179LF) + new SimpleDateFormat("MM/dd/yyyy").format(new Date(longValue));
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

    /* renamed from: a */
    public final void m30186a(final BadgeMemoryContactItem data, ScrollEvents scrollEvents) {
        ProfilePictureView profilePictureView;
        C18524p.m3840d(data, "data");
        m31503a(data.getCacheKey(), data, scrollEvents, data.getContactId(), data.getPhone());
        SpannableString spannableString = new SpannableString(ContactUtils.m28319a(data.normalNumbers, data.getPhone()));
        String m26020j = com.callapp.framework.util.StringUtils.m26020j(data.displayName);
        SparseIntArray sparseIntArray = data.textHighlights;
        int i = f23165D;
        CharSequence m27307a = ViewUtils.m27307a(m26020j, sparseIntArray, i);
        C18524p.m3843b(m27307a, "ViewUtils.getSpannableCo…hlights, foregroundColor)");
        CharSequence charSequence = m27307a;
        CharSequence charSequence2 = charSequence;
        if (com.callapp.framework.util.StringUtils.m26059a(charSequence)) {
            CharSequence m26020j2 = com.callapp.framework.util.StringUtils.m26020j(data.displayName);
            C18524p.m3843b(m26020j2, "StringUtils.capitalizeName(data.displayName)");
            charSequence2 = m26020j2;
        }
        int i2 = data.numberMatchIndexStart;
        int i3 = data.numberMatchIndexEnd;
        if (i2 >= 0 && i3 >= 0 && i3 <= spannableString.length() && i2 <= spannableString.length()) {
            spannableString.setSpan(new ForegroundColorSpan(i), i2, i3, 18);
        }
        ProfilePictureView profilePictureView2 = this.f23170v;
        if (profilePictureView2 != null) {
            profilePictureView2.setText(com.callapp.framework.util.StringUtils.m26010r(charSequence2.toString()));
        }
        if (data.getBadgeResId() != 0 && (profilePictureView = this.f23170v) != null) {
            profilePictureView.m26685a(ViewUtils.getDrawable(data.getBadgeResId()));
        }
        TextView textView = this.f23171w;
        if (textView != null) {
            textView.setText(charSequence2);
        }
        if (data.getBadgeResId() == 2131231896 || data.f22604d == null) {
            TextView textView2 = this.f23172x;
            if (textView2 != null) {
                Phone phone = data.getPhone();
                C18524p.m3843b(phone, "data.phone");
                textView2.setText(phone.getRawNumber());
            }
        } else {
            TextView textView3 = this.f23172x;
            if (textView3 != null) {
                JSONEmail next = data.f22604d.iterator().next();
                C18524p.m3843b(next, "data.emails.iterator().next()");
                textView3.setText(next.getEmail());
            }
        }
        if (getItemViewType() == 24) {
            String m26101a = data.getPhone().m26101a();
            C18524p.m3843b(m26101a, "data.phone.asGlobalNumber()");
            setReferAndEarnView(m26101a);
        } else {
            CallAppCheckBox callAppCheckBox = this.f23173y;
            if (callAppCheckBox != null) {
                callAppCheckBox.setChecked(data.isChecked());
            }
            if (data.isShouldGrey()) {
                this.f23169C.setAlpha(0.4f);
            } else {
                this.f23169C.setAlpha(1.0f);
            }
            CallAppCheckBox callAppCheckBox2 = this.f23173y;
            if (callAppCheckBox2 != null) {
                callAppCheckBox2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder$onBind$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        InviteVerticalViewHolder.m30184a(InviteVerticalViewHolder.this, data);
                    }
                });
            }
        }
        this.f23169C.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder$onBind$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InviteVerticalViewHolder.m30184a(InviteVerticalViewHolder.this, data);
            }
        });
        ProfilePictureView profilePictureView3 = this.f23170v;
        if (profilePictureView3 != null) {
            profilePictureView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder$onBind$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    InviteVerticalViewHolder.m30184a(InviteVerticalViewHolder.this, data);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final EnumSet<ContactField> getLoaderLoadFields() {
        EnumSet<ContactField> enumSet = ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD;
        C18524p.m3843b(enumSet, "ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD");
        return enumSet;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final ProfilePictureView getProfilePicture() {
        return this.f23170v;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new ContactListAdapterDataLoadTask();
    }
}
