package com.callapp.contacts.popup;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.C0790b;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.marketplace.videoRingtone.CarouselAdapter;
import com.callapp.contacts.activity.marketplace.videoRingtone.ItemSnapHelper;
import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemDetailsData;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.facebook.C10181g;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p520b.C18299a;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002:\u0001QB#\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010:\u001a\u00020\tH\u0005J\b\u0010;\u001a\u00020<H\u0016J\u000e\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0012\u0010>\u001a\u00020?2\b\u0010@\u001a\u0004\u0018\u00010)H\u0016J\u0012\u0010A\u001a\u00020?2\b\u0010B\u001a\u0004\u0018\u00010CH\u0014J\u0012\u0010D\u001a\u00020?2\b\u0010B\u001a\u0004\u0018\u00010CH\u0014J\u001a\u0010E\u001a\u00020)2\u0006\u0010F\u001a\u00020G2\b\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0010\u0010J\u001a\u00020?2\u0006\u0010K\u001a\u00020LH\u0016J\u0010\u0010M\u001a\u00020?2\u0006\u0010N\u001a\u00020)H\u0002J\u0018\u0010O\u001a\u00020?2\u0006\u0010N\u001a\u00020)2\u0006\u0010\b\u001a\u00020\tH\u0002J\u0010\u0010P\u001a\u00020?2\u0006\u0010N\u001a\u00020)H\u0002R\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086.¢\u0006\u000e\n��\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020)X\u0086.¢\u0006\u000e\n��\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b2\u00103\"\u0004\b4\u00105R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006R"}, m4298d2 = {"Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;", "Lcom/callapp/contacts/manager/popup/DialogPopup;", "Landroid/view/View$OnClickListener;", "videoUrlDetailsData", "", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "shareVideoRingtonePopUpInterface", "Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;", "type", "", "(Ljava/util/List;Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;I)V", "carouselRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getCarouselRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setCarouselRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "itemAdapter", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;", "getItemAdapter", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;", "itemAdapter$delegate", "Lkotlin/Lazy;", "multiTaskRunner", "Lcom/callapp/contacts/framework/util/MultiTaskRunner;", "getMultiTaskRunner", "()Lcom/callapp/contacts/framework/util/MultiTaskRunner;", "setMultiTaskRunner", "(Lcom/callapp/contacts/framework/util/MultiTaskRunner;)V", "personalStoreItemDetailsData", "getPersonalStoreItemDetailsData", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "setPersonalStoreItemDetailsData", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V", EventConstants.PROGRESS, "Landroid/widget/ProgressBar;", "getProgress", "()Landroid/widget/ProgressBar;", "setProgress", "(Landroid/widget/ProgressBar;)V", "rightShareButtonFrame", "Landroid/view/View;", "getRightShareButtonFrame", "()Landroid/view/View;", "setRightShareButtonFrame", "(Landroid/view/View;)V", "getShareVideoRingtonePopUpInterface", "()Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;", "setShareVideoRingtonePopUpInterface", "(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;)V", "getType", "()I", "setType", "(I)V", "getVideoUrlDetailsData", "()Ljava/util/List;", "setVideoUrlDetailsData", "(Ljava/util/List;)V", "getLayoutResource", "getPopupType", "Lcom/callapp/contacts/manager/popup/Popup$DialogType;", "initShareData", "onClick", "", "v", "onDialogCancelled", "dialog", "Landroid/content/DialogInterface;", "onDialogDismissed", "ovViewCreated", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setDialogWindowSize", "window", "Landroid/view/Window;", "setupCommonViews", "itemView", "setupMultiContactsViews", "setupSingleContactViews", "ShareVideoRingtonePopUpInterface", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareVideoRingtonePopup.class */
public final class ShareVideoRingtonePopup extends DialogPopup implements View.OnClickListener {

    /* renamed from: a */
    public RecyclerView f26941a;

    /* renamed from: b */
    public ProgressBar f26942b;

    /* renamed from: c */
    public PersonalStoreItemDetailsData f26943c;

    /* renamed from: d */
    public View f26944d;

    /* renamed from: e */
    private MultiTaskRunner f26945e;

    /* renamed from: f */
    private final Lazy f26946f = C18399h.m3897a(new ShareVideoRingtonePopup$itemAdapter$2(this));

    /* renamed from: g */
    private List<PersonalStoreItemDetailsData> f26947g;

    /* renamed from: h */
    private ShareVideoRingtonePopUpInterface f26948h;

    /* renamed from: i */
    private int f26949i;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m4298d2 = {"Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;", "", "onContactSelected", "", "personalStoreItemDetailsData", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface.class */
    public interface ShareVideoRingtonePopUpInterface {
        /* renamed from: a */
        void mo28026a(PersonalStoreItemDetailsData personalStoreItemDetailsData);
    }

    public ShareVideoRingtonePopup(List<PersonalStoreItemDetailsData> videoUrlDetailsData, ShareVideoRingtonePopUpInterface shareVideoRingtonePopUpInterface, int i) {
        C18524p.m3840d(videoUrlDetailsData, "videoUrlDetailsData");
        C18524p.m3840d(shareVideoRingtonePopUpInterface, "shareVideoRingtonePopUpInterface");
        this.f26947g = videoUrlDetailsData;
        this.f26948h = shareVideoRingtonePopUpInterface;
        this.f26949i = i;
    }

    /* renamed from: a */
    public static final /* synthetic */ List m28029a() {
        ArrayList arrayList = new ArrayList();
        Stack<AggregateCallLogData> callLogData = CallLogUtils.getCallLog();
        C18524p.m3843b(callLogData, "callLogData");
        for (AggregateCallLogData aggregateCallLogData : callLogData) {
            if (aggregateCallLogData instanceof AggregateCallLogData) {
                arrayList.add(aggregateCallLogData.f20274c);
            }
        }
        final ArrayList arrayList2 = new ArrayList();
        MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
        final ReentrantLock reentrantLock = new ReentrantLock();
        List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
        final ContactLoader loadOnlyFromCache = new ContactLoader().addFields(ContactField.fullName, ContactField.deviceId, ContactField.photoUrl).addDeviceIdAndPhotoLoaders().setLoadOnlyFromCache();
        for (final MemoryContactItem mci : contactsWithPhoneNumber) {
            C18524p.m3843b(mci, "mci");
            Phone phone = mci.getPhone();
            C18524p.m3843b(phone, "mci.phone");
            if (phone.getLineType() == PhoneNumberUtil.EnumC16104d.MOBILE && (mci.f22603c || CollectionUtils.m26073a(arrayList, mci.getPhone()))) {
                multiTaskRunner.m28974a(new Task() { // from class: com.callapp.contacts.popup.ShareVideoRingtonePopup$initShareData$2
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        try {
                            ContactLoader contactLoader = ContactLoader.this;
                            MemoryContactItem mci2 = mci;
                            C18524p.m3843b(mci2, "mci");
                            ContactData load = contactLoader.load(mci2.getPhone(), mci.getContactId());
                            C18524p.m3843b(load, "contactLoader.load(mci.phone, mci.getContactId())");
                            reentrantLock.lock();
                            ArrayList arrayList3 = arrayList2;
                            String nameOrNumber = load.getNameOrNumber();
                            C18524p.m3843b(nameOrNumber, "contactData.nameOrNumber");
                            arrayList3.add(new PersonalStoreItemDetailsData(nameOrNumber, load.getPhotoUrl(), false, 4, null));
                        } finally {
                            reentrantLock.unlock();
                        }
                    }
                });
            }
        }
        multiTaskRunner.m28975a();
        return C18282n.m4145a((Iterable) arrayList2, new Comparator<T>() { // from class: com.callapp.contacts.popup.ShareVideoRingtonePopup$initShareData$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return C18299a.m4103a(((PersonalStoreItemDetailsData) t).getName(), ((PersonalStoreItemDetailsData) t2).getName());
            }
        });
    }

    /* renamed from: a */
    private final void m28028a(View view, int i) {
        Object obj;
        View multiContactShareFrame = view.findViewById(2131363338);
        TextView shareVideoTitle = (TextView) view.findViewById(2131363854);
        TextView shareVideoBody = (TextView) view.findViewById(2131363851);
        TextView carouselTitle = (TextView) view.findViewById(2131362296);
        ImageView shareVideoBodyImage = (ImageView) view.findViewById(2131363853);
        View findViewById = view.findViewById(2131362614);
        View findViewById2 = view.findViewById(2131362612);
        C18524p.m3843b(multiContactShareFrame, "multiContactShareFrame");
        multiContactShareFrame.setVisibility(0);
        C18524p.m3843b(shareVideoBodyImage, "shareVideoBodyImage");
        shareVideoBodyImage.setVisibility(0);
        View findViewById3 = view.findViewById(2131362295);
        C18524p.m3843b(findViewById3, "itemView.findViewById(R.id.carouselRecyclerView)");
        this.f26941a = (RecyclerView) findViewById3;
        View findViewById4 = view.findViewById(2131363575);
        C18524p.m3843b(findViewById4, "itemView.findViewById(R.id.progressBar)");
        this.f26942b = (ProgressBar) findViewById4;
        ItemSnapHelper itemSnapHelper = new ItemSnapHelper();
        RecyclerView recyclerView = this.f26941a;
        if (recyclerView == null) {
            C18524p.m3848a("carouselRecyclerView");
        }
        itemSnapHelper.mo29891a(recyclerView);
        C18524p.m3843b(shareVideoTitle, "shareVideoTitle");
        shareVideoTitle.setText(Activities.getString(2131886504));
        C18524p.m3843b(shareVideoBody, "shareVideoBody");
        shareVideoBody.setText(Activities.getText(2131886502));
        C18524p.m3843b(carouselTitle, "carouselTitle");
        carouselTitle.setText(Activities.getString(2131886270));
        shareVideoTitle.setTextColor(ThemeUtils.getColor(2131100140));
        shareVideoBody.setTextColor(ThemeUtils.getColor(2131100140));
        findViewById.setBackgroundColor(ThemeUtils.getColor(2131099891));
        findViewById2.setBackgroundColor(ThemeUtils.getColor(2131099891));
        carouselTitle.setTextColor(ThemeUtils.getColor(2131099784));
        RecyclerView recyclerView2 = this.f26941a;
        if (recyclerView2 == null) {
            C18524p.m3848a("carouselRecyclerView");
        }
        recyclerView2.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        RecyclerView recyclerView3 = this.f26941a;
        if (recyclerView3 == null) {
            C18524p.m3848a("carouselRecyclerView");
        }
        recyclerView3.setHasFixedSize(true);
        RecyclerView recyclerView4 = this.f26941a;
        if (recyclerView4 == null) {
            C18524p.m3848a("carouselRecyclerView");
        }
        recyclerView4.setAdapter(getItemAdapter());
        Iterator<T> it2 = this.f26947g.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((PersonalStoreItemDetailsData) obj).isHighLight()) {
                break;
            }
        }
        PersonalStoreItemDetailsData personalStoreItemDetailsData = (PersonalStoreItemDetailsData) obj;
        int indexOf = personalStoreItemDetailsData != null ? this.f26947g.indexOf(personalStoreItemDetailsData) : 0;
        if (i == Integer.MAX_VALUE) {
            ProgressBar progressBar = this.f26942b;
            if (progressBar == null) {
                C18524p.m3848a(EventConstants.PROGRESS);
            }
            progressBar.setVisibility(0);
            new ShareVideoRingtonePopup$setupMultiContactsViews$1(this, indexOf).execute();
            return;
        }
        this.f26943c = this.f26947g.get(indexOf);
        getItemAdapter().m29894a(this.f26947g, Integer.valueOf(indexOf));
        View view2 = this.f26944d;
        if (view2 == null) {
            C18524p.m3848a("rightShareButtonFrame");
        }
        view2.setVisibility(0);
    }

    public final CarouselAdapter getItemAdapter() {
        return (CarouselAdapter) this.f26946f.mo1102a();
    }

    private final void setupCommonViews(View view) {
        View findViewById = view.findViewById(2131363685);
        C18524p.m3843b(findViewById, "itemView.findViewById(R.id.rightShareButtonFrame)");
        this.f26944d = findViewById;
        View findViewById2 = view.findViewById(2131363185);
        TextView rightShareButton = (TextView) view.findViewById(2131363684);
        TextView leftShareButton = (TextView) view.findViewById(2131363184);
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(2131362577);
        C18524p.m3843b(rightShareButton, "rightShareButton");
        rightShareButton.setText(Activities.getString(2131887657));
        C18524p.m3843b(leftShareButton, "leftShareButton");
        leftShareButton.setText(Activities.getString(2131887314));
        leftShareButton.setTextColor(ThemeUtils.getColor(2131100140));
        View view2 = this.f26944d;
        if (view2 == null) {
            C18524p.m3848a("rightShareButtonFrame");
        }
        ShareVideoRingtonePopup shareVideoRingtonePopup = this;
        view2.setOnClickListener(shareVideoRingtonePopup);
        findViewById2.setOnClickListener(shareVideoRingtonePopup);
        constraintLayout.setBackgroundColor(ThemeUtils.getColor(2131099686));
        Drawable m44502a = C0790b.m44502a(C10181g.m23290i(), 2131231879);
        if (m44502a != null) {
            m44502a.setTint(ThemeUtils.getColor(2131100228));
        }
        rightShareButton.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, m44502a, (Drawable) null);
    }

    private final void setupSingleContactViews(View view) {
        this.f26943c = this.f26947g.get(0);
        ConstraintLayout dialogFrame = (ConstraintLayout) view.findViewById(2131362577);
        View singleContactShareFrame = view.findViewById(2131363874);
        TextView shareVideoTitle = (TextView) view.findViewById(2131363854);
        TextView shareVideoBody = (TextView) view.findViewById(2131363851);
        TextView contactNameToShare = (TextView) view.findViewById(2131362446);
        ProfilePictureView profilePictureView = (ProfilePictureView) view.findViewById(2131363873);
        TextView infoTexSingle = (TextView) view.findViewById(2131363098);
        C18524p.m3843b(singleContactShareFrame, "singleContactShareFrame");
        singleContactShareFrame.setVisibility(0);
        C0680c c0680c = new C0680c();
        c0680c.m44701a(dialogFrame);
        C18524p.m3843b(dialogFrame, "dialogFrame");
        c0680c.m44709a(2131363854, 7, dialogFrame.getId(), 7, 0);
        c0680c.m44709a(2131363852, 7, dialogFrame.getId(), 7, 0);
        c0680c.m44693b(dialogFrame);
        C18524p.m3843b(shareVideoTitle, "shareVideoTitle");
        shareVideoTitle.setText(Activities.getString(2131887668));
        shareVideoTitle.setAllCaps(true);
        C18524p.m3843b(shareVideoBody, "shareVideoBody");
        shareVideoBody.setText(Activities.getString(2131887658));
        String string = Activities.getString(2131888243);
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append(StringUtils.SPACE);
        PersonalStoreItemDetailsData personalStoreItemDetailsData = this.f26943c;
        if (personalStoreItemDetailsData == null) {
            C18524p.m3848a("personalStoreItemDetailsData");
        }
        sb.append(personalStoreItemDetailsData.getName());
        String sb2 = sb.toString();
        SpannableString spannableString = new SpannableString(sb2);
        spannableString.setSpan(new StyleSpan(1), string.length(), sb2.length(), 33);
        C18524p.m3843b(contactNameToShare, "contactNameToShare");
        contactNameToShare.setText(spannableString);
        PersonalStoreItemDetailsData personalStoreItemDetailsData2 = this.f26943c;
        if (personalStoreItemDetailsData2 == null) {
            C18524p.m3848a("personalStoreItemDetailsData");
        }
        profilePictureView.setText(com.callapp.framework.util.StringUtils.m26010r(personalStoreItemDetailsData2.getName()));
        PersonalStoreItemDetailsData personalStoreItemDetailsData3 = this.f26943c;
        if (personalStoreItemDetailsData3 == null) {
            C18524p.m3848a("personalStoreItemDetailsData");
        }
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(personalStoreItemDetailsData3.getPhotoUrl());
        glideRequestBuilder.f28244j = true;
        glideRequestBuilder.f28246l = true;
        profilePictureView.m26684a(glideRequestBuilder);
        profilePictureView.m26682a(true, false);
        C18524p.m3843b(infoTexSingle, "infoTexSingle");
        infoTexSingle.setText(Activities.getText(2131886503));
        shareVideoTitle.setTextColor(ThemeUtils.getColor(2131100140));
        shareVideoBody.setTextColor(ThemeUtils.getColor(2131100140));
        infoTexSingle.setTextColor(ThemeUtils.getColor(2131100140));
        contactNameToShare.setTextColor(ThemeUtils.getColor(2131100140));
        View view2 = this.f26944d;
        if (view2 == null) {
            C18524p.m3848a("rightShareButtonFrame");
        }
        view2.setVisibility(0);
    }

    protected final int getLayoutResource() {
        return 2131559020;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final Popup.DialogType getPopupType() {
        return Popup.DialogType.roundedCenter;
    }

    public final ProgressBar getProgress() {
        ProgressBar progressBar = this.f26942b;
        if (progressBar == null) {
            C18524p.m3848a(EventConstants.PROGRESS);
        }
        return progressBar;
    }

    public final View getRightShareButtonFrame() {
        View view = this.f26944d;
        if (view == null) {
            C18524p.m3848a("rightShareButtonFrame");
        }
        return view;
    }

    public final List<PersonalStoreItemDetailsData> getVideoUrlDetailsData() {
        return this.f26947g;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf == null || valueOf.intValue() != 2131363685) {
            if (valueOf == null || valueOf.intValue() != 2131363185) {
                return;
            }
            dismiss();
            return;
        }
        ShareVideoRingtonePopUpInterface shareVideoRingtonePopUpInterface = this.f26948h;
        PersonalStoreItemDetailsData personalStoreItemDetailsData = this.f26943c;
        if (personalStoreItemDetailsData == null) {
            C18524p.m3848a("personalStoreItemDetailsData");
        }
        shareVideoRingtonePopUpInterface.mo28026a(personalStoreItemDetailsData);
        dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void onDialogCancelled(DialogInterface dialogInterface) {
        super.onDialogCancelled(dialogInterface);
        dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void onDialogDismissed(DialogInterface dialogInterface) {
        MultiTaskRunner multiTaskRunner = this.f26945e;
        if (multiTaskRunner != null) {
            multiTaskRunner.m28971d();
        }
        super.onDialogDismissed(dialogInterface);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final View ovViewCreated(LayoutInflater inflater, ViewGroup viewGroup) {
        C18524p.m3840d(inflater, "inflater");
        View view = inflater.inflate(getLayoutResource(), (ViewGroup) null);
        C18524p.m3843b(view, "view");
        setupCommonViews(view);
        int i = this.f26949i;
        if (i != 1) {
            if (i == Integer.MAX_VALUE) {
                m28028a(view, i);
            }
        } else if (this.f26947g.size() == 1) {
            setupSingleContactViews(view);
        } else {
            m28028a(view, this.f26949i);
        }
        return view;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void setDialogWindowSize(Window window) {
        C18524p.m3840d(window, "window");
        window.setLayout(-1, -2);
    }

    public final void setPersonalStoreItemDetailsData(PersonalStoreItemDetailsData personalStoreItemDetailsData) {
        C18524p.m3840d(personalStoreItemDetailsData, "<set-?>");
        this.f26943c = personalStoreItemDetailsData;
    }

    public final void setVideoUrlDetailsData(List<PersonalStoreItemDetailsData> list) {
        C18524p.m3840d(list, "<set-?>");
        this.f26947g = list;
    }
}
