package com.callapp.contacts.activity.contact.cards;

import android.app.Activity;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.CallRecordChangedListener;
import com.callapp.contacts.activity.records.CallRecordsActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.CallRecorderUtils;
import com.callapp.contacts.recorder.SeekBarManager;
import com.callapp.contacts.recorder.loader.CallRecorderLoader;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.material.a;
import com.shehabic.droppy.DroppyMenuPopup;
import it.gmariotti.cardslib.library.a.b;
import java.io.File;
import java.util.Date;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard.class */
public class CallRecorderPlayerCard extends ContactCard<PlayerLayoutViewHolder, PlayerCardListObject.Builder> implements PauseListener, CallStateListener {
    private static final long THRESHOLD_LAST_CALL_SECONDS = 120;
    private DroppyMenuPopup droppyMenuPopup;
    private PlayerCardListObject itemObject;
    private CallRecorder recorder;
    private SeekBarManager seekBarManager;
    private CallState currentCallState = CallState.PRE_CALL;
    private boolean hasRecording = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3.class */
    public class AnonymousClass3 extends DefaultInterfaceImplUtils.ClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f11567a;

        /* renamed from: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard$3$1  reason: invalid class name */
        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1.class */
        class AnonymousClass1 implements DialogPopup.IDialogOnClickListener {
            AnonymousClass1() {
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.3.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallRecorderManager.get().a(CallRecorderPlayerCard.this.recorder);
                        CallRecorderPlayerCard.this.recorder = null;
                        CallRecorderLoader.a(CallRecorderPlayerCard.this.presentersContainer.getContact());
                        EventBusManager.f14368a.a((EventType<L, EventType<CallRecordChangedListener, Object>>) CallRecordChangedListener.f12938a, (EventType<CallRecordChangedListener, Object>) EventBusManager.CallAppDataType.CALL_RECORD_CHANGED, false);
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.3.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (CallRecorderPlayerCard.this.seekBarManager != null) {
                                    CallRecorderPlayerCard.this.seekBarManager.a();
                                }
                                CallRecorderPlayerCard.this.hideCard();
                            }
                        });
                    }
                });
            }
        }

        AnonymousClass3(int i) {
            this.f11567a = i;
        }

        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
        public final void a(View view) {
            if (CallRecorderPlayerCard.this.seekBarManager != null) {
                CallRecorderPlayerCard.this.seekBarManager.d();
            }
            if (CallRecorderPlayerCard.this.droppyMenuPopup != null) {
                File file = new File(CallRecorderPlayerCard.this.recorder.getFileName());
                if (file.exists()) {
                    CallRecorderPlayerCard.this.setInitialCardDetails(file);
                    CallRecorderPlayerCard.this.showCard(true);
                }
                CallRecorderPlayerCard.this.droppyMenuPopup.a(true);
            }
            switch (this.f11567a) {
                case 2131886140:
                    CallRecorderManager.get().a(CallRecorderPlayerCard.this.recorder, CallRecorderPlayerCard.this.presentersContainer.getContact());
                    return;
                case 2131886153:
                    PopupManager.get().a(CallRecorderPlayerCard.this.getContext(), new DialogSimpleMessage(Activities.getString(2131886402), Activities.getString(2131886401), Activities.getString(2131886153), Activities.getString(2131886505), ThemeUtils.getColor(2131100108), false, new AnonymousClass1(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.3.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                        }
                    }, null));
                    return;
                case 2131886167:
                    CallRecorderManager.get().a(CallRecorderPlayerCard.this.recorder, CallRecorderPlayerCard.this.presentersContainer.getContact());
                    return;
                case 2131886423:
                    CallRecordsActivity.a(CallRecorderPlayerCard.this.getContext());
                    return;
                case 2131887657:
                    CallRecorderManager.get();
                    CallRecorderManager.a(view.getContext(), CallRecorderPlayerCard.this.recorder);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject.class */
    public static class PlayerCardListObject extends DefaultListObject {

        /* renamed from: a  reason: collision with root package name */
        private final String f11574a;
        private final int g;
        private final int h;
        private final String i;
        private final int j;
        private final int k;
        private final int l;
        private final Integer m;
        private final int n;
        private final Integer o;
        private final View.OnClickListener p;

        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder.class */
        public static class Builder {

            /* renamed from: a  reason: collision with root package name */
            String f11575a;

            /* renamed from: b  reason: collision with root package name */
            int f11576b;

            /* renamed from: c  reason: collision with root package name */
            int f11577c;

            /* renamed from: d  reason: collision with root package name */
            String f11578d;
            int e;
            int f;
            int g;
            Integer h;
            int i;
            Integer j;
            View.OnClickListener k;
        }

        private PlayerCardListObject(b bVar, Builder builder) {
            super(bVar);
            this.f11574a = builder.f11575a;
            this.g = builder.f11576b;
            this.h = builder.f11577c;
            this.i = builder.f11578d;
            this.j = builder.e;
            this.k = builder.f;
            this.l = builder.g;
            this.m = builder.h;
            this.n = builder.i;
            this.o = builder.j;
            this.p = builder.k;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            PlayerCardListObject playerCardListObject = (PlayerCardListObject) obj;
            return this.g == playerCardListObject.g && this.h == playerCardListObject.h && this.j == playerCardListObject.j && this.k == playerCardListObject.k && this.l == playerCardListObject.l && this.n == playerCardListObject.n && Objects.equals(this.f11574a, playerCardListObject.f11574a) && Objects.equals(this.i, playerCardListObject.i) && Objects.equals(this.m, playerCardListObject.m) && Objects.equals(this.o, playerCardListObject.o) && Objects.equals(this.p, playerCardListObject.p);
        }

        public int getDateStyle() {
            return this.g;
        }

        public String getDateTitle() {
            return this.f11574a;
        }

        public int getDateTitleColor() {
            return this.h;
        }

        public int getDurationStyle() {
            return this.j;
        }

        public String getDurationTitle() {
            return this.i;
        }

        public int getDurationTitleColor() {
            return this.k;
        }

        public int getLeftIconResId() {
            return this.n;
        }

        public Integer getLeftIconTintColor() {
            return this.o;
        }

        public View.OnClickListener getRightIconClickListener() {
            return this.p;
        }

        public int getRightIconResId() {
            return this.l;
        }

        public Integer getRightIconTintColor() {
            return this.m;
        }

        public int hashCode() {
            String str = this.f11574a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            int i2 = this.g;
            int i3 = this.h;
            String str2 = this.i;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i4 = this.j;
            int i5 = this.k;
            int i6 = this.l;
            Integer num = this.m;
            int hashCode3 = num != null ? num.hashCode() : 0;
            int i7 = this.n;
            Integer num2 = this.o;
            int hashCode4 = num2 != null ? num2.hashCode() : 0;
            View.OnClickListener onClickListener = this.p;
            if (onClickListener != null) {
                i = onClickListener.hashCode();
            }
            return (((((((((((((((((((hashCode * 31) + i2) * 31) + i3) * 31) + hashCode2) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + hashCode3) * 31) + i7) * 31) + hashCode4) * 31) + i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder.class */
    public class PlayerLayoutViewHolder implements SeekBarManager.OnSeekBarChanged {

        /* renamed from: a  reason: collision with root package name */
        final TextView f11579a;

        /* renamed from: b  reason: collision with root package name */
        final TextView f11580b;

        /* renamed from: c  reason: collision with root package name */
        final ImageView f11581c;
        private final ImageView e;
        private final int f;
        private final SeekBar g;

        public PlayerLayoutViewHolder(View view) {
            int color = ThemeUtils.getColor(2131099784);
            this.f = color;
            this.f11579a = (TextView) view.findViewById(2131362525);
            this.f11580b = (TextView) view.findViewById(2131362647);
            SeekBar seekBar = (SeekBar) view.findViewById(2131363796);
            this.g = seekBar;
            seekBar.getProgressDrawable().setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
            seekBar.getThumb().setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
            this.f11581c = (ImageView) view.findViewById(2131363303);
            ImageView imageView = (ImageView) view.findViewById(2131363519);
            this.e = imageView;
            imageView.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.PlayerLayoutViewHolder.1
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view2) {
                    if (CallRecorderPlayerCard.this.seekBarManager != null) {
                        CallRecorderPlayerCard.this.seekBarManager.b();
                    }
                }
            });
        }

        public final void a(int i, Integer num) {
            a(this.e, i, num);
        }

        final void a(final ImageView imageView, final int i, final Integer num) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.PlayerLayoutViewHolder.2
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setVisibility(i == 0 ? 8 : 0);
                    Integer num2 = num;
                    if (num2 == null) {
                        return;
                    }
                    if (num2.intValue() == 0) {
                        ImageUtils.a(imageView, i, (ColorFilter) null);
                    } else {
                        ImageUtils.a(imageView, i, new PorterDuffColorFilter(num.intValue(), PorterDuff.Mode.SRC_IN));
                    }
                }
            });
        }

        @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
        public void onPlayerPaused() {
            a(2131231841, Integer.valueOf(this.f));
        }

        @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
        public void onPlayerReset() {
            a(2131231841, Integer.valueOf(this.f));
        }

        @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
        public void onPlayerStarted() {
            a(2131231813, Integer.valueOf(this.f));
        }

        @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
        public void seekBarUpdated(int i, int i2) {
            this.f11580b.setText(CallRecorderUtils.a(i, i2));
        }
    }

    public CallRecorderPlayerCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558723);
        presentersContainer.addPauseListener(this);
        presentersContainer.addCallStateListener(this);
    }

    private void addItemWithoutArrow(DroppyMenuPopup.a aVar, int i) {
        com.shehabic.droppy.b bVar = new com.shehabic.droppy.b(2131558896);
        setViewTextAndColor(bVar, i);
        aVar.a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DroppyMenuPopup getDropDownMenu(View view) {
        DroppyMenuPopup.a aVar = new DroppyMenuPopup.a(view.getContext(), view);
        addItemWithoutArrow(aVar, 2131887657);
        if (this.recorder.getStarred()) {
            addItemWithoutArrow(aVar, 2131886167);
        } else {
            addItemWithoutArrow(aVar, 2131886140);
        }
        addItemWithoutArrow(aVar, 2131886153);
        aVar.a();
        com.shehabic.droppy.b bVar = new com.shehabic.droppy.b(2131558895);
        setViewTextAndColor(bVar, 2131886423);
        DroppyMenuPopup c2 = aVar.a(bVar).c();
        this.droppyMenuPopup = c2;
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInitialCardDetails(File file) {
        PlayerCardListObject.Builder builder = new PlayerCardListObject.Builder();
        CallRecorderManager.get();
        long a2 = CallRecorderManager.a(file.getAbsolutePath());
        int color = ThemeUtils.getColor(2131099784);
        int color2 = ThemeUtils.getColor(2131100108);
        builder.f11575a = String.valueOf(DateUtils.c(new Date(file.lastModified())));
        builder.f11576b = 2131951892;
        builder.f11577c = color2;
        builder.f = color2;
        builder.f11578d = a2 != -1 ? CallRecorderUtils.a(0, a2) : "";
        builder.e = 2131951892;
        builder.i = 2131231841;
        builder.j = Integer.valueOf(color);
        builder.g = 2131231557;
        builder.h = Integer.valueOf(color);
        builder.k = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                CallRecorderPlayerCard.this.getDropDownMenu(view).b();
            }
        };
        updateCardData(builder, false);
    }

    private void setViewTextAndColor(com.shehabic.droppy.b bVar, int i) {
        bVar.a(i);
        View a2 = bVar.a(getContext());
        a2.findViewById(2131363268).setBackgroundColor(ThemeUtils.getColor(2131099686));
        ImageView imageView = (ImageView) a2.findViewById(2131362029);
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
        }
        TextView textView = (TextView) a2.findViewById(2131364071);
        if (textView != null) {
            textView.setText(Activities.getString(i));
            textView.setTextColor(ThemeUtils.getColor(2131100140));
        }
        ViewGroup viewGroup = (ViewGroup) a2.findViewById(a.f.container);
        if (viewGroup != null) {
            viewGroup.setOnClickListener(new AnonymousClass3(i));
        }
    }

    private boolean updateCard() {
        List<CallRecorder> records = this.presentersContainer.getContact().getRecords();
        if (CollectionUtils.b(records)) {
            Iterator<CallRecorder> it2 = records.iterator();
            if (it2.hasNext()) {
                this.recorder = it2.next();
            }
        }
        if (this.recorder == null) {
            return false;
        }
        File file = new File(this.recorder.getFileName());
        boolean z = DateUtils.a(new Date(this.recorder.getDate()), new Date(), TimeUnit.SECONDS) < THRESHOLD_LAST_CALL_SECONDS;
        if (!file.exists() || !z) {
            return false;
        }
        setInitialCardDetails(file);
        showCard(true);
        SeekBarManager seekBarManager = this.seekBarManager;
        if (seekBarManager == null) {
            return true;
        }
        seekBarManager.a(this.recorder);
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return CallAppApplication.get().getResources().getDimensionPixelSize(2131166011);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.records);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(PlayerLayoutViewHolder playerLayoutViewHolder) {
        String dateTitle = this.itemObject.getDateTitle();
        if (playerLayoutViewHolder.f11579a != null) {
            playerLayoutViewHolder.f11579a.setText(dateTitle);
        }
        int dateStyle = this.itemObject.getDateStyle();
        if (playerLayoutViewHolder.f11579a != null) {
            playerLayoutViewHolder.f11579a.setGravity(ThemeUtils.a(playerLayoutViewHolder.f11579a.getContext(), dateStyle, 0));
            playerLayoutViewHolder.f11579a.setAllCaps(ThemeUtils.d(playerLayoutViewHolder.f11579a.getContext(), dateStyle));
            ViewUtils.a(playerLayoutViewHolder.f11579a, dateStyle);
        }
        int dateTitleColor = this.itemObject.getDateTitleColor();
        if (playerLayoutViewHolder.f11579a != null) {
            playerLayoutViewHolder.f11579a.setTextColor(dateTitleColor);
        }
        String durationTitle = this.itemObject.getDurationTitle();
        if (playerLayoutViewHolder.f11580b != null) {
            playerLayoutViewHolder.f11580b.setText(durationTitle);
        }
        int durationStyle = this.itemObject.getDurationStyle();
        if (playerLayoutViewHolder.f11580b != null) {
            playerLayoutViewHolder.f11580b.setGravity(ThemeUtils.a(playerLayoutViewHolder.f11580b.getContext(), durationStyle, 0));
            playerLayoutViewHolder.f11580b.setAllCaps(ThemeUtils.d(playerLayoutViewHolder.f11580b.getContext(), durationStyle));
            ViewUtils.a(playerLayoutViewHolder.f11580b, durationStyle);
        }
        int durationTitleColor = this.itemObject.getDurationTitleColor();
        if (playerLayoutViewHolder.f11580b != null) {
            playerLayoutViewHolder.f11580b.setTextColor(durationTitleColor);
        }
        playerLayoutViewHolder.a(this.itemObject.getLeftIconResId(), this.itemObject.getLeftIconTintColor());
        playerLayoutViewHolder.a(playerLayoutViewHolder.f11581c, this.itemObject.getRightIconResId(), this.itemObject.getRightIconTintColor());
        playerLayoutViewHolder.f11581c.setOnClickListener(this.itemObject.getRightIconClickListener());
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        this.currentCallState = callData.getState();
        if (callData.getState() != CallState.POST_CALL) {
            this.hasRecording = false;
            hideCard();
            if (this.seekBarManager != null) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallRecorderPlayerCard.this.seekBarManager.a();
                    }
                });
            }
        } else if (this.hasRecording) {
            this.hasRecording = false;
            updateCard();
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.newContact)) {
            this.hasRecording = false;
            hideCard();
        }
        if (this.presentersContainer.a(contactData)) {
            hideCard();
        } else if (!set.contains(ContactField.records)) {
        } else {
            if (this.currentCallState == CallState.POST_CALL) {
                this.currentCallState = CallState.PRE_CALL;
                if (!updateCard()) {
                    hideCard();
                    return;
                }
                return;
            }
            this.hasRecording = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public PlayerLayoutViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        PlayerLayoutViewHolder playerLayoutViewHolder = new PlayerLayoutViewHolder(viewGroup);
        this.seekBarManager = new SeekBarManager(playerLayoutViewHolder.g, playerLayoutViewHolder, this.recorder, "From CD");
        return playerLayoutViewHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        onPausePlayerCard();
        SeekBarManager seekBarManager = this.seekBarManager;
        if (seekBarManager != null) {
            seekBarManager.a();
        }
    }

    @Override // com.callapp.contacts.event.listener.PauseListener
    public void onPause() {
        onPausePlayerCard();
    }

    public void onPausePlayerCard() {
        SeekBarManager seekBarManager = this.seekBarManager;
        if (seekBarManager != null) {
            seekBarManager.d();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(PlayerCardListObject.Builder builder, boolean z) {
        this.itemObject = new PlayerCardListObject(this, builder);
        if (this.seekBarManager != null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.4
                @Override // java.lang.Runnable
                public void run() {
                    CallRecorderPlayerCard.this.seekBarManager.c();
                }
            });
        }
    }
}
