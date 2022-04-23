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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import androidx.core.content.b;
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
import com.facebook.g;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.b.a;
import kotlin.h;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002:\u0001QB#\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010:\u001a\u00020\tH\u0005J\b\u0010;\u001a\u00020<H\u0016J\u000e\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0012\u0010>\u001a\u00020?2\b\u0010@\u001a\u0004\u0018\u00010)H\u0016J\u0012\u0010A\u001a\u00020?2\b\u0010B\u001a\u0004\u0018\u00010CH\u0014J\u0012\u0010D\u001a\u00020?2\b\u0010B\u001a\u0004\u0018\u00010CH\u0014J\u001a\u0010E\u001a\u00020)2\u0006\u0010F\u001a\u00020G2\b\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0010\u0010J\u001a\u00020?2\u0006\u0010K\u001a\u00020LH\u0016J\u0010\u0010M\u001a\u00020?2\u0006\u0010N\u001a\u00020)H\u0002J\u0018\u0010O\u001a\u00020?2\u0006\u0010N\u001a\u00020)2\u0006\u0010\b\u001a\u00020\tH\u0002J\u0010\u0010P\u001a\u00020?2\u0006\u0010N\u001a\u00020)H\u0002R\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086.¢\u0006\u000e\n��\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020)X\u0086.¢\u0006\u000e\n��\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b2\u00103\"\u0004\b4\u00105R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006R"}, d2 = {"Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;", "Lcom/callapp/contacts/manager/popup/DialogPopup;", "Landroid/view/View$OnClickListener;", "videoUrlDetailsData", "", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "shareVideoRingtonePopUpInterface", "Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;", "type", "", "(Ljava/util/List;Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;I)V", "carouselRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getCarouselRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setCarouselRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "itemAdapter", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;", "getItemAdapter", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;", "itemAdapter$delegate", "Lkotlin/Lazy;", "multiTaskRunner", "Lcom/callapp/contacts/framework/util/MultiTaskRunner;", "getMultiTaskRunner", "()Lcom/callapp/contacts/framework/util/MultiTaskRunner;", "setMultiTaskRunner", "(Lcom/callapp/contacts/framework/util/MultiTaskRunner;)V", "personalStoreItemDetailsData", "getPersonalStoreItemDetailsData", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "setPersonalStoreItemDetailsData", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V", EventConstants.PROGRESS, "Landroid/widget/ProgressBar;", "getProgress", "()Landroid/widget/ProgressBar;", "setProgress", "(Landroid/widget/ProgressBar;)V", "rightShareButtonFrame", "Landroid/view/View;", "getRightShareButtonFrame", "()Landroid/view/View;", "setRightShareButtonFrame", "(Landroid/view/View;)V", "getShareVideoRingtonePopUpInterface", "()Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;", "setShareVideoRingtonePopUpInterface", "(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;)V", "getType", "()I", "setType", "(I)V", "getVideoUrlDetailsData", "()Ljava/util/List;", "setVideoUrlDetailsData", "(Ljava/util/List;)V", "getLayoutResource", "getPopupType", "Lcom/callapp/contacts/manager/popup/Popup$DialogType;", "initShareData", "onClick", "", "v", "onDialogCancelled", "dialog", "Landroid/content/DialogInterface;", "onDialogDismissed", "ovViewCreated", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setDialogWindowSize", "window", "Landroid/view/Window;", "setupCommonViews", "itemView", "setupMultiContactsViews", "setupSingleContactViews", "ShareVideoRingtonePopUpInterface", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareVideoRingtonePopup.class */
public final class ShareVideoRingtonePopup extends DialogPopup implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public RecyclerView f15371a;

    /* renamed from: b  reason: collision with root package name */
    public ProgressBar f15372b;

    /* renamed from: c  reason: collision with root package name */
    public PersonalStoreItemDetailsData f15373c;

    /* renamed from: d  reason: collision with root package name */
    public View f15374d;
    private MultiTaskRunner e;
    private final Lazy f = h.a(new ShareVideoRingtonePopup$itemAdapter$2(this));
    private List<PersonalStoreItemDetailsData> g;
    private ShareVideoRingtonePopUpInterface h;
    private int i;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;", "", "onContactSelected", "", "personalStoreItemDetailsData", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface.class */
    public interface ShareVideoRingtonePopUpInterface {
        void a(PersonalStoreItemDetailsData personalStoreItemDetailsData);
    }

    public ShareVideoRingtonePopup(List<PersonalStoreItemDetailsData> videoUrlDetailsData, ShareVideoRingtonePopUpInterface shareVideoRingtonePopUpInterface, int i) {
        p.d(videoUrlDetailsData, "videoUrlDetailsData");
        p.d(shareVideoRingtonePopUpInterface, "shareVideoRingtonePopUpInterface");
        this.g = videoUrlDetailsData;
        this.h = shareVideoRingtonePopUpInterface;
        this.i = i;
    }

    public static final /* synthetic */ List a() {
        ArrayList arrayList = new ArrayList();
        Stack<AggregateCallLogData> callLogData = CallLogUtils.getCallLog();
        p.b(callLogData, "callLogData");
        for (AggregateCallLogData aggregateCallLogData : callLogData) {
            if (aggregateCallLogData instanceof AggregateCallLogData) {
                arrayList.add(aggregateCallLogData.f11101c);
            }
        }
        final ArrayList arrayList2 = new ArrayList();
        MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
        final ReentrantLock reentrantLock = new ReentrantLock();
        List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
        final ContactLoader loadOnlyFromCache = new ContactLoader().addFields(ContactField.fullName, ContactField.deviceId, ContactField.photoUrl).addDeviceIdAndPhotoLoaders().setLoadOnlyFromCache();
        for (final MemoryContactItem mci : contactsWithPhoneNumber) {
            p.b(mci, "mci");
            Phone phone = mci.getPhone();
            p.b(phone, "mci.phone");
            if (phone.getLineType() == PhoneNumberUtil.d.MOBILE && (mci.f12645c || CollectionUtils.a(arrayList, mci.getPhone()))) {
                multiTaskRunner.a(new Task() { // from class: com.callapp.contacts.popup.ShareVideoRingtonePopup$initShareData$2
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        try {
                            ContactLoader contactLoader = ContactLoader.this;
                            MemoryContactItem mci2 = mci;
                            p.b(mci2, "mci");
                            ContactData load = contactLoader.load(mci2.getPhone(), mci.getContactId());
                            p.b(load, "contactLoader.load(mci.phone, mci.getContactId())");
                            reentrantLock.lock();
                            ArrayList arrayList3 = arrayList2;
                            String nameOrNumber = load.getNameOrNumber();
                            p.b(nameOrNumber, "contactData.nameOrNumber");
                            arrayList3.add(new PersonalStoreItemDetailsData(nameOrNumber, load.getPhotoUrl(), false, 4, null));
                        } finally {
                            reentrantLock.unlock();
                        }
                    }
                });
            }
        }
        multiTaskRunner.a();
        return n.a((Iterable) arrayList2, new Comparator<T>() { // from class: com.callapp.contacts.popup.ShareVideoRingtonePopup$initShareData$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return a.a(((PersonalStoreItemDetailsData) t).getName(), ((PersonalStoreItemDetailsData) t2).getName());
            }
        });
    }

    private final void a(View view, int i) {
        Object obj;
        View multiContactShareFrame = view.findViewById(2131363338);
        TextView shareVideoTitle = (TextView) view.findViewById(2131363854);
        TextView shareVideoBody = (TextView) view.findViewById(2131363851);
        TextView carouselTitle = (TextView) view.findViewById(2131362296);
        ImageView shareVideoBodyImage = (ImageView) view.findViewById(2131363853);
        View findViewById = view.findViewById(2131362614);
        View findViewById2 = view.findViewById(2131362612);
        p.b(multiContactShareFrame, "multiContactShareFrame");
        multiContactShareFrame.setVisibility(0);
        p.b(shareVideoBodyImage, "shareVideoBodyImage");
        shareVideoBodyImage.setVisibility(0);
        View findViewById3 = view.findViewById(2131362295);
        p.b(findViewById3, "itemView.findViewById(R.id.carouselRecyclerView)");
        this.f15371a = (RecyclerView) findViewById3;
        View findViewById4 = view.findViewById(2131363575);
        p.b(findViewById4, "itemView.findViewById(R.id.progressBar)");
        this.f15372b = (ProgressBar) findViewById4;
        ItemSnapHelper itemSnapHelper = new ItemSnapHelper();
        RecyclerView recyclerView = this.f15371a;
        if (recyclerView == null) {
            p.a("carouselRecyclerView");
        }
        itemSnapHelper.a(recyclerView);
        p.b(shareVideoTitle, "shareVideoTitle");
        shareVideoTitle.setText(Activities.getString(2131886504));
        p.b(shareVideoBody, "shareVideoBody");
        shareVideoBody.setText(Activities.getText(2131886502));
        p.b(carouselTitle, "carouselTitle");
        carouselTitle.setText(Activities.getString(2131886270));
        shareVideoTitle.setTextColor(ThemeUtils.getColor(2131100140));
        shareVideoBody.setTextColor(ThemeUtils.getColor(2131100140));
        findViewById.setBackgroundColor(ThemeUtils.getColor(2131099891));
        findViewById2.setBackgroundColor(ThemeUtils.getColor(2131099891));
        carouselTitle.setTextColor(ThemeUtils.getColor(2131099784));
        RecyclerView recyclerView2 = this.f15371a;
        if (recyclerView2 == null) {
            p.a("carouselRecyclerView");
        }
        recyclerView2.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        RecyclerView recyclerView3 = this.f15371a;
        if (recyclerView3 == null) {
            p.a("carouselRecyclerView");
        }
        recyclerView3.setHasFixedSize(true);
        RecyclerView recyclerView4 = this.f15371a;
        if (recyclerView4 == null) {
            p.a("carouselRecyclerView");
        }
        recyclerView4.setAdapter(getItemAdapter());
        Iterator<T> it2 = this.g.iterator();
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
        int indexOf = personalStoreItemDetailsData != null ? this.g.indexOf(personalStoreItemDetailsData) : 0;
        if (i == Integer.MAX_VALUE) {
            ProgressBar progressBar = this.f15372b;
            if (progressBar == null) {
                p.a(EventConstants.PROGRESS);
            }
            progressBar.setVisibility(0);
            new ShareVideoRingtonePopup$setupMultiContactsViews$1(this, indexOf).execute();
            return;
        }
        this.f15373c = this.g.get(indexOf);
        getItemAdapter().a(this.g, Integer.valueOf(indexOf));
        View view2 = this.f15374d;
        if (view2 == null) {
            p.a("rightShareButtonFrame");
        }
        view2.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CarouselAdapter getItemAdapter() {
        return (CarouselAdapter) this.f.a();
    }

    private final void setupCommonViews(View view) {
        View findViewById = view.findViewById(2131363685);
        p.b(findViewById, "itemView.findViewById(R.id.rightShareButtonFrame)");
        this.f15374d = findViewById;
        View findViewById2 = view.findViewById(2131363185);
        TextView rightShareButton = (TextView) view.findViewById(2131363684);
        TextView leftShareButton = (TextView) view.findViewById(2131363184);
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(2131362577);
        p.b(rightShareButton, "rightShareButton");
        rightShareButton.setText(Activities.getString(2131887657));
        p.b(leftShareButton, "leftShareButton");
        leftShareButton.setText(Activities.getString(2131887314));
        leftShareButton.setTextColor(ThemeUtils.getColor(2131100140));
        View view2 = this.f15374d;
        if (view2 == null) {
            p.a("rightShareButtonFrame");
        }
        ShareVideoRingtonePopup shareVideoRingtonePopup = this;
        view2.setOnClickListener(shareVideoRingtonePopup);
        findViewById2.setOnClickListener(shareVideoRingtonePopup);
        constraintLayout.setBackgroundColor(ThemeUtils.getColor(2131099686));
        Drawable a2 = b.a(g.i(), 2131231879);
        if (a2 != null) {
            a2.setTint(ThemeUtils.getColor(2131100228));
        }
        rightShareButton.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, a2, (Drawable) null);
    }

    private final void setupSingleContactViews(View view) {
        this.f15373c = this.g.get(0);
        ConstraintLayout dialogFrame = (ConstraintLayout) view.findViewById(2131362577);
        View singleContactShareFrame = view.findViewById(2131363874);
        TextView shareVideoTitle = (TextView) view.findViewById(2131363854);
        TextView shareVideoBody = (TextView) view.findViewById(2131363851);
        TextView contactNameToShare = (TextView) view.findViewById(2131362446);
        ProfilePictureView profilePictureView = (ProfilePictureView) view.findViewById(2131363873);
        TextView infoTexSingle = (TextView) view.findViewById(2131363098);
        p.b(singleContactShareFrame, "singleContactShareFrame");
        singleContactShareFrame.setVisibility(0);
        c cVar = new c();
        cVar.a(dialogFrame);
        p.b(dialogFrame, "dialogFrame");
        cVar.a(2131363854, 7, dialogFrame.getId(), 7, 0);
        cVar.a(2131363852, 7, dialogFrame.getId(), 7, 0);
        cVar.b(dialogFrame);
        p.b(shareVideoTitle, "shareVideoTitle");
        shareVideoTitle.setText(Activities.getString(2131887668));
        shareVideoTitle.setAllCaps(true);
        p.b(shareVideoBody, "shareVideoBody");
        shareVideoBody.setText(Activities.getString(2131887658));
        String string = Activities.getString(2131888243);
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append(StringUtils.SPACE);
        PersonalStoreItemDetailsData personalStoreItemDetailsData = this.f15373c;
        if (personalStoreItemDetailsData == null) {
            p.a("personalStoreItemDetailsData");
        }
        sb.append(personalStoreItemDetailsData.getName());
        String sb2 = sb.toString();
        SpannableString spannableString = new SpannableString(sb2);
        spannableString.setSpan(new StyleSpan(1), string.length(), sb2.length(), 33);
        p.b(contactNameToShare, "contactNameToShare");
        contactNameToShare.setText(spannableString);
        PersonalStoreItemDetailsData personalStoreItemDetailsData2 = this.f15373c;
        if (personalStoreItemDetailsData2 == null) {
            p.a("personalStoreItemDetailsData");
        }
        profilePictureView.setText(com.callapp.framework.util.StringUtils.r(personalStoreItemDetailsData2.getName()));
        PersonalStoreItemDetailsData personalStoreItemDetailsData3 = this.f15373c;
        if (personalStoreItemDetailsData3 == null) {
            p.a("personalStoreItemDetailsData");
        }
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(personalStoreItemDetailsData3.getPhotoUrl());
        glideRequestBuilder.j = true;
        glideRequestBuilder.l = true;
        profilePictureView.a(glideRequestBuilder);
        profilePictureView.a(true, false);
        p.b(infoTexSingle, "infoTexSingle");
        infoTexSingle.setText(Activities.getText(2131886503));
        shareVideoTitle.setTextColor(ThemeUtils.getColor(2131100140));
        shareVideoBody.setTextColor(ThemeUtils.getColor(2131100140));
        infoTexSingle.setTextColor(ThemeUtils.getColor(2131100140));
        contactNameToShare.setTextColor(ThemeUtils.getColor(2131100140));
        View view2 = this.f15374d;
        if (view2 == null) {
            p.a("rightShareButtonFrame");
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
        ProgressBar progressBar = this.f15372b;
        if (progressBar == null) {
            p.a(EventConstants.PROGRESS);
        }
        return progressBar;
    }

    public final View getRightShareButtonFrame() {
        View view = this.f15374d;
        if (view == null) {
            p.a("rightShareButtonFrame");
        }
        return view;
    }

    public final List<PersonalStoreItemDetailsData> getVideoUrlDetailsData() {
        return this.g;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == 2131363685) {
            ShareVideoRingtonePopUpInterface shareVideoRingtonePopUpInterface = this.h;
            PersonalStoreItemDetailsData personalStoreItemDetailsData = this.f15373c;
            if (personalStoreItemDetailsData == null) {
                p.a("personalStoreItemDetailsData");
            }
            shareVideoRingtonePopUpInterface.a(personalStoreItemDetailsData);
            dismiss();
        } else if (valueOf != null && valueOf.intValue() == 2131363185) {
            dismiss();
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void onDialogCancelled(DialogInterface dialogInterface) {
        super.onDialogCancelled(dialogInterface);
        dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void onDialogDismissed(DialogInterface dialogInterface) {
        MultiTaskRunner multiTaskRunner = this.e;
        if (multiTaskRunner != null) {
            multiTaskRunner.d();
        }
        super.onDialogDismissed(dialogInterface);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final View ovViewCreated(LayoutInflater inflater, ViewGroup viewGroup) {
        p.d(inflater, "inflater");
        View view = inflater.inflate(getLayoutResource(), (ViewGroup) null);
        p.b(view, "view");
        setupCommonViews(view);
        int i = this.i;
        if (i != 1) {
            if (i == Integer.MAX_VALUE) {
                a(view, i);
            }
        } else if (this.g.size() == 1) {
            setupSingleContactViews(view);
        } else {
            a(view, this.i);
        }
        return view;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void setDialogWindowSize(Window window) {
        p.d(window, "window");
        window.setLayout(-1, -2);
    }

    public final void setPersonalStoreItemDetailsData(PersonalStoreItemDetailsData personalStoreItemDetailsData) {
        p.d(personalStoreItemDetailsData, "<set-?>");
        this.f15373c = personalStoreItemDetailsData;
    }

    public final void setVideoUrlDetailsData(List<PersonalStoreItemDetailsData> list) {
        p.d(list, "<set-?>");
        this.g = list;
    }
}
