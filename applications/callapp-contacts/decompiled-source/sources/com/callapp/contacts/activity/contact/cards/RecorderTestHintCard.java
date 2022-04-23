package com.callapp.contacts.activity.contact.cards;

import android.content.Context;
import android.net.Uri;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.interfaces.RecorderTestChangedListener;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.ThemeUtils;
import it.gmariotti.cardslib.library.a.b;
import java.io.File;
import java.io.FileWriter;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u001a\u0012\n\u0012\b\u0018\u00010\u0002R\u00020��\u0012\n\u0012\b\u0018\u00010\u0003R\u00020��0\u00012\u00020\u0004:\u0002OPB\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0006\u0010)\u001a\u00020*J\n\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0010\u0010-\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010.H\u0016J\b\u00100\u001a\u00020\bH\u0016J\u0016\u00101\u001a\u00020*2\f\u00102\u001a\b\u0018\u00010\u0002R\u00020��H\u0014J\"\u00103\u001a\u00020*2\b\u00104\u001a\u0004\u0018\u0001052\u000e\u00106\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010.H\u0016J\u0018\u00107\u001a\b\u0018\u00010\u0002R\u00020��2\b\u00108\u001a\u0004\u0018\u000109H\u0014J\b\u0010:\u001a\u00020*H\u0016J\u001e\u0010;\u001a\u00020*2\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020?\u0018\u00010=H\u0016J\u001e\u0010@\u001a\u00020*2\u0014\u0010A\u001a\u0010\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020B\u0018\u00010=H\u0016J\u0012\u0010C\u001a\u00020*2\b\u0010D\u001a\u0004\u0018\u00010EH\u0016J\u0012\u0010F\u001a\u00020*2\b\u0010G\u001a\u0004\u0018\u00010HH\u0016J\b\u0010I\u001a\u00020*H\u0016J\b\u0010J\u001a\u00020$H\u0016J\u001e\u0010K\u001a\u00020*2\f\u0010L\u001a\b\u0018\u00010\u0003R\u00020��2\u0006\u0010M\u001a\u00020$H\u0014J\u0012\u0010N\u001a\u00020*2\b\u0010D\u001a\u0004\u0018\u00010EH\u0002R\u001e\u0010\n\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001e\u0010 \u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b!\u0010\f\"\u0004\b\"\u0010\u000eR\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006Q"}, d2 = {"Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;", "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;", "Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;", "Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;", "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;", "presentersContainer", "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;", "cardPriority", "", "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V", "cardImage", "getCardImage", "()Ljava/lang/Integer;", "setCardImage", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getCardPriority", "()I", "setCardPriority", "(I)V", "cardTitle", "", "getCardTitle", "()Ljava/lang/CharSequence;", "setCardTitle", "(Ljava/lang/CharSequence;)V", "eventBus", "Lcom/callapp/contacts/event/bus/EventBus;", "getEventBus", "()Lcom/callapp/contacts/event/bus/EventBus;", "setEventBus", "(Lcom/callapp/contacts/event/bus/EventBus;)V", "marginBottom", "getMarginBottom", "setMarginBottom", "showButtons", "", "getShowButtons", "()Z", "setShowButtons", "(Z)V", "contactUsByMail", "", "getHeaderTitle", "", "getListenFields", "", "Lcom/callapp/contacts/model/contact/ContactField;", "getPriority", "onBindViewHolder", "cardViewHolder", "onContactChanged", "contact", "Lcom/callapp/contacts/model/contact/ContactData;", "changedFields", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "onDestroy", "onRecorderTestChanged", "recorderTestData", "Lkotlin/Pair;", "", "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;", "onRecorderTestProgressChanged", "testProgressCounter", "", "onRecorderTestStatusChanged", "testStatus", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;", "setBackground", "cardView", "Landroidx/cardview/widget/CardView;", "setElevation", "showShouldExpandButton", "updateCardData", "data", "forceRefresh", "updateData", "TitleDescriptionImageViewHolder", "TitleImageObject", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/RecorderTestHintCard.class */
public final class RecorderTestHintCard extends ContactCard<TitleDescriptionImageViewHolder, TitleImageObject> implements RecorderTestChangedListener {
    private Integer cardImage;
    private int cardPriority;
    private CharSequence cardTitle;
    private EventBus eventBus;
    private Integer marginBottom;
    private boolean showButtons;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0019\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0019\u0010\u000e\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\rR\u0019\u0010\u0010\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0013\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;", "", "itemView", "Landroid/view/View;", "(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;Landroid/view/View;)V", "cardImageView", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "getCardImageView", "()Landroid/widget/ImageView;", "cardTitleTextView", "Landroid/widget/TextView;", "getCardTitleTextView", "()Landroid/widget/TextView;", "centerBottom", "getCenterBottom", "nothingWorksButtonsContainer", "getNothingWorksButtonsContainer", "()Landroid/view/View;", "titleImageFrame", "getTitleImageFrame", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder.class */
    public final class TitleDescriptionImageViewHolder {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecorderTestHintCard f11748a;

        /* renamed from: b  reason: collision with root package name */
        private final TextView f11749b;

        /* renamed from: c  reason: collision with root package name */
        private final ImageView f11750c;

        /* renamed from: d  reason: collision with root package name */
        private final View f11751d;
        private final TextView e;
        private final View f;

        public TitleDescriptionImageViewHolder(RecorderTestHintCard recorderTestHintCard, View itemView) {
            p.d(itemView, "itemView");
            this.f11748a = recorderTestHintCard;
            this.f11749b = (TextView) itemView.findViewById(2131362260);
            this.f11750c = (ImageView) itemView.findViewById(2131362251);
            this.f11751d = itemView.findViewById(2131364133);
            this.e = (TextView) itemView.findViewById(2131362311);
            this.f = itemView.findViewById(2131363387);
        }

        public final ImageView getCardImageView() {
            return this.f11750c;
        }

        public final TextView getCardTitleTextView() {
            return this.f11749b;
        }

        public final TextView getCenterBottom() {
            return this.e;
        }

        public final View getNothingWorksButtonsContainer() {
            return this.f;
        }

        public final View getTitleImageFrame() {
            return this.f11751d;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\b\u0086\u0004\u0018��2\u00020\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;", "Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;", "parentCard", "Lit/gmariotti/cardslib/library/internal/Card;", "(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;Lit/gmariotti/cardslib/library/internal/Card;)V", "equals", "", "other", "", "hashCode", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject.class */
    public final class TitleImageObject extends DefaultListObject {
        private TitleImageObject(b bVar) {
            super(bVar);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && !(p.a(getClass(), obj.getClass()) ^ true);
        }

        public final int hashCode() {
            return 0;
        }
    }

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/RecorderTestHintCard$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f11753a;

        static {
            int[] iArr = new int[RecorderTestManager.RecorderTestManagerStatus.values().length];
            f11753a = iArr;
            iArr[RecorderTestManager.RecorderTestManagerStatus.FINISHED.ordinal()] = 1;
            iArr[RecorderTestManager.RecorderTestManagerStatus.EMPTY.ordinal()] = 2;
            iArr[RecorderTestManager.RecorderTestManagerStatus.STOPPED.ordinal()] = 3;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecorderTestHintCard(PresentersContainer presentersContainer, int i) {
        super(presentersContainer, 2131558992);
        p.d(presentersContainer, "presentersContainer");
        this.cardPriority = i;
        EventBus eventBus = presentersContainer.getEventBus();
        p.b(eventBus, "presentersContainer.eventBus");
        this.eventBus = eventBus;
        eventBus.a(RecorderTestChangedListener.f12961c, this);
        updateData(RecorderTestManager.f15722b.get().getCurrentTestStatus());
    }

    private final void updateData(RecorderTestManager.RecorderTestManagerStatus recorderTestManagerStatus) {
        if (recorderTestManagerStatus != null) {
            int i = WhenMappings.f11753a[recorderTestManagerStatus.ordinal()];
            if (i == 1) {
                if (RecorderTestManager.f15722b.get().isInRecorderTestMode()) {
                    this.cardTitle = Activities.getText(2131887510);
                    this.cardImage = 2131230904;
                } else {
                    this.showButtons = true;
                    this.cardTitle = Activities.getText(2131887517);
                    this.cardImage = 2131232173;
                }
                showCard(true);
            } else if (i == 2) {
                this.showButtons = true;
                this.cardTitle = Activities.getText(2131887517);
                this.cardImage = 2131232173;
                showCard(true);
            } else if (i == 3) {
                BooleanPref booleanPref = Prefs.gM;
                p.b(booleanPref, "Prefs.recorderTestFinished");
                if (booleanPref.isNotNull()) {
                    this.cardTitle = Activities.getText(2131887516);
                    this.cardImage = 2131232173;
                    showCard(true);
                }
            }
        }
    }

    public final void contactUsByMail() {
        Boolean bool = Prefs.cJ.get();
        p.b(bool, "Prefs.isPremium.get()");
        String string = Activities.getString(bool.booleanValue() ? 2131886901 : 2131886900);
        CallAppApplication callAppApplication = CallAppApplication.get();
        p.b(callAppApplication, "CallAppApplication.get()");
        String a2 = Activities.a(2131886903, callAppApplication.getVersion());
        String string2 = Activities.getString(2131886902);
        Uri uri = null;
        try {
            File file = new File(IoUtils.getCacheFolder(), "callapp_device_info.txt");
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(Activities.getDeviceDataString());
            fileWriter.close();
            CallAppApplication callAppApplication2 = CallAppApplication.get();
            StringBuilder sb = new StringBuilder();
            CallAppApplication callAppApplication3 = CallAppApplication.get();
            p.b(callAppApplication3, "CallAppApplication.get()");
            Context applicationContext = callAppApplication3.getApplicationContext();
            p.b(applicationContext, "CallAppApplication.get().applicationContext");
            sb.append(applicationContext.getPackageName());
            sb.append(".fileprovider");
            uri = IoUtils.a(callAppApplication2, file);
        } catch (Exception e) {
            CLog.a(ContactsListActivity.class, e, "unable to write file: " + e.getMessage());
        }
        Activities.a(CallAppApplication.get(), new String[]{string}, a2, string2, uri);
    }

    public final Integer getCardImage() {
        return this.cardImage;
    }

    public final int getCardPriority() {
        return this.cardPriority;
    }

    public final CharSequence getCardTitle() {
        return this.cardTitle;
    }

    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }

    public final Integer getMarginBottom() {
        return this.marginBottom;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final int getPriority() {
        return this.cardPriority;
    }

    public final boolean getShowButtons() {
        return this.showButtons;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void onBindViewHolder(TitleDescriptionImageViewHolder titleDescriptionImageViewHolder) {
        if (titleDescriptionImageViewHolder != null) {
            int i = 0;
            if (this.showButtons) {
                View nothingWorksButtonsContainer = titleDescriptionImageViewHolder.getNothingWorksButtonsContainer();
                p.b(nothingWorksButtonsContainer, "nothingWorksButtonsContainer");
                nothingWorksButtonsContainer.setVisibility(0);
                DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f15494a;
                DialogMessageWithTopImageNew.Companion.a(titleDescriptionImageViewHolder.getCenterBottom(), 2131232141, Integer.valueOf(ThemeUtils.getColor(2131099784)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 0, Integer.valueOf(ThemeUtils.getColor(2131100228)), new SpannableString(Activities.getString(2131887521)), null, true, true);
                titleDescriptionImageViewHolder.getCenterBottom().setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.cards.RecorderTestHintCard$onBindViewHolder$$inlined$apply$lambda$1
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    public final void a(View view) {
                        AnalyticsManager.get().a(Constants.CALL_RECORDING, "ClickRecTestSupport");
                        RecorderTestHintCard.this.contactUsByMail();
                    }
                });
            }
            CharSequence charSequence = this.cardTitle;
            if (charSequence != null) {
                TextView cardTitleTextView = titleDescriptionImageViewHolder.getCardTitleTextView();
                cardTitleTextView.setTextColor(ThemeUtils.getColor(2131100140));
                cardTitleTextView.setText(charSequence);
                cardTitleTextView.setVisibility(0);
            }
            Integer num = this.cardImage;
            if (num != null) {
                int intValue = num.intValue();
                ImageView cardImageView = titleDescriptionImageViewHolder.getCardImageView();
                cardImageView.setImageResource(intValue);
                cardImageView.setVisibility(0);
            }
            Integer num2 = this.marginBottom;
            if (num2 != null) {
                int intValue2 = num2.intValue();
                View titleImageFrame = titleDescriptionImageViewHolder.getTitleImageFrame();
                ViewGroup.LayoutParams layoutParams = titleImageFrame.getLayoutParams();
                Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                ViewGroup.LayoutParams layoutParams3 = titleImageFrame.getLayoutParams();
                boolean z = layoutParams3 instanceof ViewGroup.MarginLayoutParams;
                ViewGroup.LayoutParams layoutParams4 = null;
                if (!z) {
                    layoutParams3 = null;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams3;
                int i2 = marginLayoutParams != null ? marginLayoutParams.leftMargin : 0;
                ViewGroup.LayoutParams layoutParams5 = titleImageFrame.getLayoutParams();
                ViewGroup.LayoutParams layoutParams6 = layoutParams5;
                if (!(layoutParams5 instanceof ViewGroup.MarginLayoutParams)) {
                    layoutParams6 = null;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams6;
                int i3 = marginLayoutParams2 != null ? marginLayoutParams2.topMargin : 0;
                layoutParams4 = titleImageFrame.getLayoutParams();
                if (!(layoutParams4 instanceof ViewGroup.MarginLayoutParams)) {
                }
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams4;
                if (marginLayoutParams3 != null) {
                    i = marginLayoutParams3.rightMargin;
                }
                layoutParams2.setMargins(i2, i3, i, intValue2);
                titleImageFrame.setLayoutParams(layoutParams2);
            }
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public final void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final TitleDescriptionImageViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        if (viewGroup != null) {
            return new TitleDescriptionImageViewHolder(this, viewGroup);
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public final void onDestroy() {
        super.onDestroy();
        this.eventBus.b(RecorderTestChangedListener.f12961c, this);
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestChanged(n<Long, ? extends RecordConfiguration.STATUS> nVar) {
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestProgressChanged(n<Long, Float> nVar) {
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestStatusChanged(RecorderTestManager.RecorderTestManagerStatus recorderTestManagerStatus) {
        updateData(recorderTestManagerStatus);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final void setBackground(CardView cardView) {
    }

    public final void setCardImage(Integer num) {
        this.cardImage = num;
    }

    public final void setCardPriority(int i) {
        this.cardPriority = i;
    }

    public final void setCardTitle(CharSequence charSequence) {
        this.cardTitle = charSequence;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final void setElevation() {
    }

    public final void setEventBus(EventBus eventBus) {
        p.d(eventBus, "<set-?>");
        this.eventBus = eventBus;
    }

    public final void setMarginBottom(Integer num) {
        this.marginBottom = num;
    }

    public final void setShowButtons(boolean z) {
        this.showButtons = z;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void updateCardData(TitleImageObject titleImageObject, boolean z) {
    }
}
