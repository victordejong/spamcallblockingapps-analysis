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
import com.google.android.material.C14376a;
import com.shehabic.droppy.C17097b;
import com.shehabic.droppy.DroppyMenuPopup;
import it.gmariotti.cardslib.library.p510a.C18073b;
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

    /* renamed from: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard$3 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3.class */
    public class C59943 extends DefaultInterfaceImplUtils.ClickListener {

        /* renamed from: a */
        final /* synthetic */ int f20981a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard$3$1 */
        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1.class */
        public class C59951 implements DialogPopup.IDialogOnClickListener {
            C59951() {
                C59943.this = r4;
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.3.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallRecorderManager.get().m27877a(CallRecorderPlayerCard.this.recorder);
                        CallRecorderPlayerCard.this.recorder = null;
                        CallRecorderLoader.m27830a(CallRecorderPlayerCard.this.presentersContainer.getContact());
                        EventBusManager.f25138a.m29046a((EventType<L, EventType<CallRecordChangedListener, Object>>) CallRecordChangedListener.f23111a, (EventType<CallRecordChangedListener, Object>) EventBusManager.CallAppDataType.CALL_RECORD_CHANGED, false);
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.3.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (CallRecorderPlayerCard.this.seekBarManager != null) {
                                    CallRecorderPlayerCard.this.seekBarManager.m27849a();
                                }
                                CallRecorderPlayerCard.this.hideCard();
                            }
                        });
                    }
                });
            }
        }

        C59943(int i) {
            CallRecorderPlayerCard.this = r4;
            this.f20981a = i;
        }

        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
        /* renamed from: a */
        public final void mo26371a(View view) {
            if (CallRecorderPlayerCard.this.seekBarManager != null) {
                CallRecorderPlayerCard.this.seekBarManager.m27842d();
            }
            if (CallRecorderPlayerCard.this.droppyMenuPopup != null) {
                File file = new File(CallRecorderPlayerCard.this.recorder.getFileName());
                if (file.exists()) {
                    CallRecorderPlayerCard.this.setInitialCardDetails(file);
                    CallRecorderPlayerCard.this.showCard(true);
                }
                CallRecorderPlayerCard.this.droppyMenuPopup.m5879a(true);
            }
            switch (this.f20981a) {
                case 2131886140:
                    CallRecorderManager.get().m27876a(CallRecorderPlayerCard.this.recorder, CallRecorderPlayerCard.this.presentersContainer.getContact());
                    return;
                case 2131886153:
                    PopupManager.get().m28209a(CallRecorderPlayerCard.this.getContext(), new DialogSimpleMessage(Activities.getString(2131886402), Activities.getString(2131886401), Activities.getString(2131886153), Activities.getString(2131886505), ThemeUtils.getColor(2131100108), false, new C59951(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.3.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                        }
                    }, null));
                    return;
                case 2131886167:
                    CallRecorderManager.get().m27876a(CallRecorderPlayerCard.this.recorder, CallRecorderPlayerCard.this.presentersContainer.getContact());
                    return;
                case 2131886423:
                    CallRecordsActivity.m29758a(CallRecorderPlayerCard.this.getContext());
                    return;
                case 2131887657:
                    CallRecorderManager.get();
                    CallRecorderManager.m27880a(view.getContext(), CallRecorderPlayerCard.this.recorder);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject.class */
    public static class PlayerCardListObject extends DefaultListObject {

        /* renamed from: a */
        private final String f20988a;

        /* renamed from: g */
        private final int f20989g;

        /* renamed from: h */
        private final int f20990h;

        /* renamed from: i */
        private final String f20991i;

        /* renamed from: j */
        private final int f20992j;

        /* renamed from: k */
        private final int f20993k;

        /* renamed from: l */
        private final int f20994l;

        /* renamed from: m */
        private final Integer f20995m;

        /* renamed from: n */
        private final int f20996n;

        /* renamed from: o */
        private final Integer f20997o;

        /* renamed from: p */
        private final View.OnClickListener f20998p;

        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder.class */
        public static class Builder {

            /* renamed from: a */
            String f20999a;

            /* renamed from: b */
            int f21000b;

            /* renamed from: c */
            int f21001c;

            /* renamed from: d */
            String f21002d;

            /* renamed from: e */
            int f21003e;

            /* renamed from: f */
            int f21004f;

            /* renamed from: g */
            int f21005g;

            /* renamed from: h */
            Integer f21006h;

            /* renamed from: i */
            int f21007i;

            /* renamed from: j */
            Integer f21008j;

            /* renamed from: k */
            View.OnClickListener f21009k;
        }

        private PlayerCardListObject(C18073b c18073b, Builder builder) {
            super(c18073b);
            this.f20988a = builder.f20999a;
            this.f20989g = builder.f21000b;
            this.f20990h = builder.f21001c;
            this.f20991i = builder.f21002d;
            this.f20992j = builder.f21003e;
            this.f20993k = builder.f21004f;
            this.f20994l = builder.f21005g;
            this.f20995m = builder.f21006h;
            this.f20996n = builder.f21007i;
            this.f20997o = builder.f21008j;
            this.f20998p = builder.f21009k;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            PlayerCardListObject playerCardListObject = (PlayerCardListObject) obj;
            return this.f20989g == playerCardListObject.f20989g && this.f20990h == playerCardListObject.f20990h && this.f20992j == playerCardListObject.f20992j && this.f20993k == playerCardListObject.f20993k && this.f20994l == playerCardListObject.f20994l && this.f20996n == playerCardListObject.f20996n && Objects.equals(this.f20988a, playerCardListObject.f20988a) && Objects.equals(this.f20991i, playerCardListObject.f20991i) && Objects.equals(this.f20995m, playerCardListObject.f20995m) && Objects.equals(this.f20997o, playerCardListObject.f20997o) && Objects.equals(this.f20998p, playerCardListObject.f20998p);
        }

        public int getDateStyle() {
            return this.f20989g;
        }

        public String getDateTitle() {
            return this.f20988a;
        }

        public int getDateTitleColor() {
            return this.f20990h;
        }

        public int getDurationStyle() {
            return this.f20992j;
        }

        public String getDurationTitle() {
            return this.f20991i;
        }

        public int getDurationTitleColor() {
            return this.f20993k;
        }

        public int getLeftIconResId() {
            return this.f20996n;
        }

        public Integer getLeftIconTintColor() {
            return this.f20997o;
        }

        public View.OnClickListener getRightIconClickListener() {
            return this.f20998p;
        }

        public int getRightIconResId() {
            return this.f20994l;
        }

        public Integer getRightIconTintColor() {
            return this.f20995m;
        }

        public int hashCode() {
            String str = this.f20988a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            int i2 = this.f20989g;
            int i3 = this.f20990h;
            String str2 = this.f20991i;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i4 = this.f20992j;
            int i5 = this.f20993k;
            int i6 = this.f20994l;
            Integer num = this.f20995m;
            int hashCode3 = num != null ? num.hashCode() : 0;
            int i7 = this.f20996n;
            Integer num2 = this.f20997o;
            int hashCode4 = num2 != null ? num2.hashCode() : 0;
            View.OnClickListener onClickListener = this.f20998p;
            if (onClickListener != null) {
                i = onClickListener.hashCode();
            }
            return (((((((((((((((((((hashCode * 31) + i2) * 31) + i3) * 31) + hashCode2) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + hashCode3) * 31) + i7) * 31) + hashCode4) * 31) + i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder.class */
    public class PlayerLayoutViewHolder implements SeekBarManager.OnSeekBarChanged {

        /* renamed from: a */
        final TextView f21010a;

        /* renamed from: b */
        final TextView f21011b;

        /* renamed from: c */
        final ImageView f21012c;

        /* renamed from: e */
        private final ImageView f21014e;

        /* renamed from: f */
        private final int f21015f;

        /* renamed from: g */
        private final SeekBar f21016g;

        public PlayerLayoutViewHolder(View view) {
            CallRecorderPlayerCard.this = r7;
            int color = ThemeUtils.getColor(2131099784);
            this.f21015f = color;
            this.f21010a = (TextView) view.findViewById(2131362525);
            this.f21011b = (TextView) view.findViewById(2131362647);
            SeekBar seekBar = (SeekBar) view.findViewById(2131363796);
            this.f21016g = seekBar;
            seekBar.getProgressDrawable().setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
            seekBar.getThumb().setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
            this.f21012c = (ImageView) view.findViewById(2131363303);
            ImageView imageView = (ImageView) view.findViewById(2131363519);
            this.f21014e = imageView;
            imageView.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.PlayerLayoutViewHolder.1
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view2) {
                    if (CallRecorderPlayerCard.this.seekBarManager != null) {
                        CallRecorderPlayerCard.this.seekBarManager.m27846b();
                    }
                }
            });
        }

        /* renamed from: a */
        public final void m31239a(int i, Integer num) {
            m31238a(this.f21014e, i, num);
        }

        /* renamed from: a */
        final void m31238a(final ImageView imageView, final int i, final Integer num) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.PlayerLayoutViewHolder.2
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setVisibility(i == 0 ? 8 : 0);
                    Integer num2 = num;
                    if (num2 != null) {
                        if (num2.intValue() == 0) {
                            ImageUtils.m27529a(imageView, i, (ColorFilter) null);
                        } else {
                            ImageUtils.m27529a(imageView, i, new PorterDuffColorFilter(num.intValue(), PorterDuff.Mode.SRC_IN));
                        }
                    }
                }
            });
        }

        @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
        public void onPlayerPaused() {
            m31239a(2131231841, Integer.valueOf(this.f21015f));
        }

        @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
        public void onPlayerReset() {
            m31239a(2131231841, Integer.valueOf(this.f21015f));
        }

        @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
        public void onPlayerStarted() {
            m31239a(2131231813, Integer.valueOf(this.f21015f));
        }

        @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
        public void seekBarUpdated(int i, int i2) {
            this.f21011b.setText(CallRecorderUtils.m27852a(i, i2));
        }
    }

    public CallRecorderPlayerCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558723);
        presentersContainer.addPauseListener(this);
        presentersContainer.addCallStateListener(this);
    }

    private void addItemWithoutArrow(DroppyMenuPopup.C17093a c17093a, int i) {
        C17097b c17097b = new C17097b(2131558896);
        setViewTextAndColor(c17097b, i);
        c17093a.m5873a(c17097b);
    }

    public DroppyMenuPopup getDropDownMenu(View view) {
        DroppyMenuPopup.C17093a c17093a = new DroppyMenuPopup.C17093a(view.getContext(), view);
        addItemWithoutArrow(c17093a, 2131887657);
        if (this.recorder.getStarred()) {
            addItemWithoutArrow(c17093a, 2131886167);
        } else {
            addItemWithoutArrow(c17093a, 2131886140);
        }
        addItemWithoutArrow(c17093a, 2131886153);
        c17093a.m5874a();
        C17097b c17097b = new C17097b(2131558895);
        setViewTextAndColor(c17097b, 2131886423);
        DroppyMenuPopup m5871c = c17093a.m5873a(c17097b).m5871c();
        this.droppyMenuPopup = m5871c;
        return m5871c;
    }

    public void setInitialCardDetails(File file) {
        PlayerCardListObject.Builder builder = new PlayerCardListObject.Builder();
        CallRecorderManager.get();
        long m27872a = CallRecorderManager.m27872a(file.getAbsolutePath());
        int color = ThemeUtils.getColor(2131099784);
        int color2 = ThemeUtils.getColor(2131100108);
        builder.f20999a = String.valueOf(DateUtils.m27117c(new Date(file.lastModified())));
        builder.f21000b = 2131951892;
        builder.f21001c = color2;
        builder.f21004f = color2;
        builder.f21002d = m27872a != -1 ? CallRecorderUtils.m27852a(0, m27872a) : "";
        builder.f21003e = 2131951892;
        builder.f21007i = 2131231841;
        builder.f21008j = Integer.valueOf(color);
        builder.f21005g = 2131231557;
        builder.f21006h = Integer.valueOf(color);
        builder.f21009k = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                CallRecorderPlayerCard.this.getDropDownMenu(view).m5878b();
            }
        };
        updateCardData(builder, false);
    }

    private void setViewTextAndColor(C17097b c17097b, int i) {
        c17097b.mo5869a(i);
        View mo5867a = c17097b.mo5867a(getContext());
        mo5867a.findViewById(2131363268).setBackgroundColor(ThemeUtils.getColor(2131099686));
        ImageView imageView = (ImageView) mo5867a.findViewById(2131362029);
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
        }
        TextView textView = (TextView) mo5867a.findViewById(2131364071);
        if (textView != null) {
            textView.setText(Activities.getString(i));
            textView.setTextColor(ThemeUtils.getColor(2131100140));
        }
        ViewGroup viewGroup = (ViewGroup) mo5867a.findViewById(C14376a.C14382f.container);
        if (viewGroup != null) {
            viewGroup.setOnClickListener(new C59943(i));
        }
    }

    private boolean updateCard() {
        List<CallRecorder> records = this.presentersContainer.getContact().getRecords();
        if (CollectionUtils.m26068b(records)) {
            Iterator<CallRecorder> it2 = records.iterator();
            if (it2.hasNext()) {
                this.recorder = it2.next();
            }
        }
        if (this.recorder != null) {
            File file = new File(this.recorder.getFileName());
            boolean z = DateUtils.m27124a(new Date(this.recorder.getDate()), new Date(), TimeUnit.SECONDS) < THRESHOLD_LAST_CALL_SECONDS;
            if (!file.exists() || !z) {
                return false;
            }
            setInitialCardDetails(file);
            showCard(true);
            SeekBarManager seekBarManager = this.seekBarManager;
            if (seekBarManager == null) {
                return true;
            }
            seekBarManager.m27848a(this.recorder);
            return true;
        }
        return false;
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

    public void onBindViewHolder(PlayerLayoutViewHolder playerLayoutViewHolder) {
        String dateTitle = this.itemObject.getDateTitle();
        if (playerLayoutViewHolder.f21010a != null) {
            playerLayoutViewHolder.f21010a.setText(dateTitle);
        }
        int dateStyle = this.itemObject.getDateStyle();
        if (playerLayoutViewHolder.f21010a != null) {
            playerLayoutViewHolder.f21010a.setGravity(ThemeUtils.m27385a(playerLayoutViewHolder.f21010a.getContext(), dateStyle, 0));
            playerLayoutViewHolder.f21010a.setAllCaps(ThemeUtils.m27372d(playerLayoutViewHolder.f21010a.getContext(), dateStyle));
            ViewUtils.m27327a(playerLayoutViewHolder.f21010a, dateStyle);
        }
        int dateTitleColor = this.itemObject.getDateTitleColor();
        if (playerLayoutViewHolder.f21010a != null) {
            playerLayoutViewHolder.f21010a.setTextColor(dateTitleColor);
        }
        String durationTitle = this.itemObject.getDurationTitle();
        if (playerLayoutViewHolder.f21011b != null) {
            playerLayoutViewHolder.f21011b.setText(durationTitle);
        }
        int durationStyle = this.itemObject.getDurationStyle();
        if (playerLayoutViewHolder.f21011b != null) {
            playerLayoutViewHolder.f21011b.setGravity(ThemeUtils.m27385a(playerLayoutViewHolder.f21011b.getContext(), durationStyle, 0));
            playerLayoutViewHolder.f21011b.setAllCaps(ThemeUtils.m27372d(playerLayoutViewHolder.f21011b.getContext(), durationStyle));
            ViewUtils.m27327a(playerLayoutViewHolder.f21011b, durationStyle);
        }
        int durationTitleColor = this.itemObject.getDurationTitleColor();
        if (playerLayoutViewHolder.f21011b != null) {
            playerLayoutViewHolder.f21011b.setTextColor(durationTitleColor);
        }
        playerLayoutViewHolder.m31239a(this.itemObject.getLeftIconResId(), this.itemObject.getLeftIconTintColor());
        playerLayoutViewHolder.m31238a(playerLayoutViewHolder.f21012c, this.itemObject.getRightIconResId(), this.itemObject.getRightIconTintColor());
        playerLayoutViewHolder.f21012c.setOnClickListener(this.itemObject.getRightIconClickListener());
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        this.currentCallState = callData.getState();
        if (callData.getState() == CallState.POST_CALL) {
            if (!this.hasRecording) {
                return;
            }
            this.hasRecording = false;
            updateCard();
            return;
        }
        this.hasRecording = false;
        hideCard();
        if (this.seekBarManager == null) {
            return;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.1
            @Override // java.lang.Runnable
            public void run() {
                CallRecorderPlayerCard.this.seekBarManager.m27849a();
            }
        });
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.newContact)) {
            this.hasRecording = false;
            hideCard();
        }
        if (this.presentersContainer.mo30920a(contactData)) {
            hideCard();
        } else if (!set.contains(ContactField.records)) {
        } else {
            if (this.currentCallState != CallState.POST_CALL) {
                this.hasRecording = true;
                return;
            }
            this.currentCallState = CallState.PRE_CALL;
            if (updateCard()) {
                return;
            }
            hideCard();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public PlayerLayoutViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        PlayerLayoutViewHolder playerLayoutViewHolder = new PlayerLayoutViewHolder(viewGroup);
        this.seekBarManager = new SeekBarManager(playerLayoutViewHolder.f21016g, playerLayoutViewHolder, this.recorder, "From CD");
        return playerLayoutViewHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        onPausePlayerCard();
        SeekBarManager seekBarManager = this.seekBarManager;
        if (seekBarManager != null) {
            seekBarManager.m27849a();
        }
    }

    @Override // com.callapp.contacts.event.listener.PauseListener
    public void onPause() {
        onPausePlayerCard();
    }

    public void onPausePlayerCard() {
        SeekBarManager seekBarManager = this.seekBarManager;
        if (seekBarManager != null) {
            seekBarManager.m27842d();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void updateCardData(PlayerCardListObject.Builder builder, boolean z) {
        this.itemObject = new PlayerCardListObject(this, builder);
        if (this.seekBarManager != null) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard.4
                @Override // java.lang.Runnable
                public void run() {
                    CallRecorderPlayerCard.this.seekBarManager.m27844c();
                }
            });
        }
    }
}
