package com.callapp.contacts.activity.contact.cards;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.cardview.widget.CardView;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.RecorderTestCard;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.RecorderTestChangedListener;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.recorder.SeekBarManager;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestData;
import com.callapp.contacts.recorder.recordertest.RecorderTestDataManager;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import io.objectbox.C17944a;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.C18538n;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018�� P2\u001a\u0012\n\u0012\b\u0018\u00010\u0002R\u00020��\u0012\n\u0012\b\u0018\u00010\u0003R\u00020��0\u00012\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007:\u0003PQRB\u0015\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010%\u001a\u00020&H\u0016J\u0010\u0010'\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(H\u0016J\b\u0010*\u001a\u00020\u001eH\u0016J\b\u0010+\u001a\u00020\u001eH\u0016J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0002J\u0016\u00100\u001a\u00020-2\f\u00101\u001a\b\u0018\u00010\u0002R\u00020��H\u0014J\u0010\u00102\u001a\u00020-2\u0006\u00103\u001a\u000204H\u0016J\"\u00105\u001a\u00020-2\b\u00106\u001a\u0004\u0018\u0001072\u000e\u00108\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(H\u0016J\u0018\u00109\u001a\b\u0018\u00010\u0002R\u00020��2\b\u0010:\u001a\u0004\u0018\u00010;H\u0014J\b\u0010<\u001a\u00020-H\u0016J\b\u0010=\u001a\u00020-H\u0016J\u001c\u0010>\u001a\u00020-2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020@0?H\u0016J\u001c\u0010A\u001a\u00020-2\u0012\u0010B\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u000e0?H\u0016J\u0012\u0010C\u001a\u00020-2\b\u0010D\u001a\u0004\u0018\u00010EH\u0016J\b\u0010F\u001a\u00020-H\u0016J\u0006\u0010G\u001a\u00020-J\u0016\u0010H\u001a\u00020-2\f\u00101\u001a\b\u0018\u00010\u0002R\u00020��H\u0002J\u0016\u0010I\u001a\u00020-2\f\u00101\u001a\b\u0018\u00010\u0002R\u00020��H\u0002J\u0016\u0010J\u001a\u00020-2\f\u00101\u001a\b\u0018\u00010\u0002R\u00020��H\u0002J\b\u0010K\u001a\u00020LH\u0016J\u001e\u0010M\u001a\u00020-2\f\u0010N\u001a\b\u0018\u00010\u0003R\u00020��2\u0006\u0010O\u001a\u00020LH\u0014R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006S"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;", "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;", "Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;", "Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardObject;", "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;", "Lcom/callapp/contacts/event/listener/PauseListener;", "Lcom/callapp/contacts/event/listener/ResumeListener;", "Landroid/view/View$OnClickListener;", "presentersContainer", "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;", "recorderTestData", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;", "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V", "currentTestProgress", "", "getCurrentTestProgress", "()F", "setCurrentTestProgress", "(F)V", "eventBus", "Lcom/callapp/contacts/event/bus/EventBus;", "getEventBus", "()Lcom/callapp/contacts/event/bus/EventBus;", "setEventBus", "(Lcom/callapp/contacts/event/bus/EventBus;)V", "getRecorderTestData", "()Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;", "setRecorderTestData", "(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V", "salt", "", "seekBarManager", "Lcom/callapp/contacts/recorder/SeekBarManager;", "getSeekBarManager", "()Lcom/callapp/contacts/recorder/SeekBarManager;", "setSeekBarManager", "(Lcom/callapp/contacts/recorder/SeekBarManager;)V", "getHeaderTitle", "", "getListenFields", "", "Lcom/callapp/contacts/model/contact/ContactField;", "getPriority", "getSalt", "onApplyClicked", "", "recorderTestId", "", "onBindViewHolder", "cardViewHolder", "onClick", "v", "Landroid/view/View;", "onContactChanged", "contact", "Lcom/callapp/contacts/model/contact/ContactData;", "changedFields", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "onDestroy", "onPause", "onRecorderTestChanged", "Lkotlin/Pair;", "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;", "onRecorderTestProgressChanged", "testProgressCounter", "onRecorderTestStatusChanged", "testStatus", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;", "onResume", "setCardBackgroundColor", "setSeekBarColor", "showFinishedView", "showProgressView", "showShouldExpandButton", "", "updateCardData", "data", "forceRefresh", "Companion", "RecorderTestCardObject", "RecorderTestCardViewHolder", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/RecorderTestCard.class */
public final class RecorderTestCard extends ContactCard<RecorderTestCardViewHolder, RecorderTestCardObject> implements View.OnClickListener, RecorderTestChangedListener, PauseListener, ResumeListener {
    public static final Companion Companion = new Companion(null);
    private static final AtomicInteger saltCounter = new AtomicInteger(1);
    private float currentTestProgress;
    private EventBus eventBus;
    private RecorderTestData recorderTestData;
    private int salt = saltCounter.incrementAndGet();
    private SeekBarManager seekBarManager;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$Companion;", "", "()V", "saltCounter", "Ljava/util/concurrent/atomic/AtomicInteger;", "getSaltCounter", "()Ljava/util/concurrent/atomic/AtomicInteger;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/RecorderTestCard$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\b\u0086\u0004\u0018��2\u00020\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardObject;", "Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;", "parentCard", "Lit/gmariotti/cardslib/library/internal/Card;", "(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;Lit/gmariotti/cardslib/library/internal/Card;)V", "equals", "", "other", "", "hashCode", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardObject.class */
    public final class RecorderTestCardObject extends DefaultListObject {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private RecorderTestCardObject(C18073b c18073b) {
            super(c18073b);
            RecorderTestCard.this = r4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && !(C18524p.m3850a(getClass(), obj.getClass()) ^ true);
        }

        public final int hashCode() {
            return 0;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0019\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\tR\u0019\u0010\f\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u000f\u001a\n \u0007*\u0004\u0018\u00010\u00100\u0010¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0013\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u000eR\u0019\u0010\u0015\u001a\n \u0007*\u0004\u0018\u00010\u00160\u0016¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u0019\u0010\u0019\u001a\n \u0007*\u0004\u0018\u00010\u00160\u0016¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u0018R\u0019\u0010\u001b\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\tR\u0019\u0010\u001d\u001a\n \u0007*\u0004\u0018\u00010\u001e0\u001e¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 ¨\u0006!"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;", "", "itemView", "Landroid/view/View;", "(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;Landroid/view/View;)V", "applyRecordTestConfiguration", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "getApplyRecordTestConfiguration", "()Landroid/widget/ImageView;", "deleteRecordTestConfiguration", "getDeleteRecordTestConfiguration", "doneRecorderCard", "getDoneRecorderCard", "()Landroid/view/View;", "playerSeekBar", "Landroidx/appcompat/widget/AppCompatSeekBar;", "getPlayerSeekBar", "()Landroidx/appcompat/widget/AppCompatSeekBar;", "progressRecorderCard", "getProgressRecorderCard", "recordTestTime", "Landroid/widget/TextView;", "getRecordTestTime", "()Landroid/widget/TextView;", "recorderTestDurationText", "getRecorderTestDurationText", "recorderTestPlayButton", "getRecorderTestPlayButton", "recorderTestProgressBar", "Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;", "getRecorderTestProgressBar", "()Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder.class */
    public final class RecorderTestCardViewHolder {

        /* renamed from: a */
        final /* synthetic */ RecorderTestCard f21198a;

        /* renamed from: b */
        private final View f21199b;

        /* renamed from: c */
        private final View f21200c;

        /* renamed from: d */
        private final RoundCornerProgressBar f21201d;

        /* renamed from: e */
        private final TextView f21202e;

        /* renamed from: f */
        private final TextView f21203f;

        /* renamed from: g */
        private final ImageView f21204g;

        /* renamed from: h */
        private final ImageView f21205h;

        /* renamed from: i */
        private final AppCompatSeekBar f21206i;

        /* renamed from: j */
        private final ImageView f21207j;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"com/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1", "Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;", "onPlayerPaused", "", "onPlayerReset", "onPlayerStarted", "seekBarUpdated", "currentPosition", "", VastIconXmlManager.DURATION, "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
        /* renamed from: com.callapp.contacts.activity.contact.cards.RecorderTestCard$RecorderTestCardViewHolder$1 */
        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1.class */
        public static final class C60681 implements SeekBarManager.OnSeekBarChanged {
            C60681() {
                RecorderTestCardViewHolder.this = r4;
            }

            @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
            public final void onPlayerPaused() {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerPaused$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecorderTestCard.RecorderTestCardViewHolder.this.getRecorderTestPlayButton().setImageResource(2131231841);
                    }
                });
            }

            @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
            public final void onPlayerReset() {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerReset$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecorderTestCard.RecorderTestCardViewHolder.this.getRecorderTestPlayButton().setImageResource(2131231841);
                    }
                });
            }

            @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
            public final void onPlayerStarted() {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerStarted$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecorderTestCard.RecorderTestCardViewHolder.this.getRecorderTestPlayButton().setImageResource(2131231813);
                    }
                });
            }

            @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
            public final void seekBarUpdated(int i, int i2) {
            }
        }

        public RecorderTestCardViewHolder(RecorderTestCard recorderTestCard, View itemView) {
            C18524p.m3840d(itemView, "itemView");
            this.f21198a = recorderTestCard;
            this.f21199b = itemView.findViewById(2131363582);
            this.f21200c = itemView.findViewById(2131362622);
            RoundCornerProgressBar recorderTestProgressBar = (RoundCornerProgressBar) itemView.findViewById(2131363634);
            this.f21201d = recorderTestProgressBar;
            TextView recorderTestDurationText = (TextView) itemView.findViewById(2131363632);
            this.f21202e = recorderTestDurationText;
            TextView textView = (TextView) itemView.findViewById(2131363628);
            this.f21203f = textView;
            ImageView imageView = (ImageView) itemView.findViewById(2131362021);
            this.f21204g = imageView;
            ImageView imageView2 = (ImageView) itemView.findViewById(2131362548);
            this.f21205h = imageView2;
            AppCompatSeekBar playerSeekBar = (AppCompatSeekBar) itemView.findViewById(2131363636);
            this.f21206i = playerSeekBar;
            ImageView imageView3 = (ImageView) itemView.findViewById(2131363633);
            this.f21207j = imageView3;
            C18524p.m3843b(recorderTestDurationText, "recorderTestDurationText");
            recorderTestDurationText.setText(Activities.getString(2131887505));
            recorderTestDurationText.setTextColor(ThemeUtils.getColor(2131100140));
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            C18524p.m3843b(recorderTestProgressBar, "recorderTestProgressBar");
            recorderTestProgressBar.setProgressColor(ThemeUtils.getColor(2131099784));
            C18524p.m3843b(recorderTestProgressBar, "recorderTestProgressBar");
            recorderTestProgressBar.setProgressBackgroundColor(ThemeUtils.getColor(2131099891));
            C18524p.m3843b(playerSeekBar, "playerSeekBar");
            Drawable progressDrawable = playerSeekBar.getProgressDrawable();
            C18524p.m3843b(progressDrawable, "playerSeekBar.progressDrawable");
            progressDrawable.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.MULTIPLY));
            C18524p.m3843b(playerSeekBar, "playerSeekBar");
            Drawable thumb = playerSeekBar.getThumb();
            C18524p.m3843b(thumb, "playerSeekBar.thumb");
            thumb.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
            if (imageView3 != null) {
                imageView3.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN));
            }
            if (imageView != null) {
                imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN));
            }
            if (imageView2 != null) {
                imageView2.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN));
            }
            recorderTestCard.setSeekBarManager(new SeekBarManager(playerSeekBar, new C60681(), "From Recorder Test"));
        }

        public final ImageView getApplyRecordTestConfiguration() {
            return this.f21204g;
        }

        public final ImageView getDeleteRecordTestConfiguration() {
            return this.f21205h;
        }

        public final View getDoneRecorderCard() {
            return this.f21200c;
        }

        public final AppCompatSeekBar getPlayerSeekBar() {
            return this.f21206i;
        }

        public final View getProgressRecorderCard() {
            return this.f21199b;
        }

        public final TextView getRecordTestTime() {
            return this.f21203f;
        }

        public final ImageView getRecorderTestPlayButton() {
            return this.f21207j;
        }

        public final RoundCornerProgressBar getRecorderTestProgressBar() {
            return this.f21201d;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/RecorderTestCard$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21209a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f21210b;

        static {
            int[] iArr = new int[RecordConfiguration.STATUS.values().length];
            f21209a = iArr;
            iArr[RecordConfiguration.STATUS.DONE.ordinal()] = 1;
            iArr[RecordConfiguration.STATUS.APPLIED.ordinal()] = 2;
            iArr[RecordConfiguration.STATUS.FAILED.ordinal()] = 3;
            iArr[RecordConfiguration.STATUS.STARTED.ordinal()] = 4;
            int[] iArr2 = new int[RecorderTestManager.RecorderTestManagerStatus.values().length];
            f21210b = iArr2;
            iArr2[RecorderTestManager.RecorderTestManagerStatus.IDLE.ordinal()] = 1;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecorderTestCard(PresentersContainer presentersContainer, RecorderTestData recorderTestData) {
        super(presentersContainer, 2131558989);
        C18524p.m3840d(presentersContainer, "presentersContainer");
        C18524p.m3840d(recorderTestData, "recorderTestData");
        this.recorderTestData = recorderTestData;
        EventBus eventBus = presentersContainer.getEventBus();
        C18524p.m3843b(eventBus, "presentersContainer.getEventBus()");
        this.eventBus = eventBus;
        eventBus.m29048a(RecorderTestChangedListener.f23133a, this);
        eventBus.m29048a(RecorderTestChangedListener.f23134b, this);
        eventBus.m29048a(RecorderTestChangedListener.f23135c, this);
        eventBus.m29048a(PauseListener.f25149a, this);
        eventBus.m29048a(ResumeListener.f25150d, this);
    }

    private final void onApplyClicked(final long j) {
        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder = new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder();
        SpannableString spannableString = new SpannableString(Activities.getString(2131886290));
        int color = ThemeUtils.getColor(2131100228);
        int color2 = ThemeUtils.getColor(2131099784);
        CallAppApplication callAppApplication = CallAppApplication.get();
        C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
        int dimensionPixelOffset = callAppApplication.getResources().getDimensionPixelOffset(2131166042);
        CallAppApplication callAppApplication2 = CallAppApplication.get();
        C18524p.m3843b(callAppApplication2, "CallAppApplication.get()");
        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder m27965a = DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27965a(dialogMessageWithTopImageBuilder, spannableString, Integer.valueOf(color), 2131232141, 2, Integer.valueOf(color2), Integer.valueOf(ThemeUtils.getColor(2131099784)), null, RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$1.f21214a, true, null, true, 50, 0, 15, Integer.valueOf(dimensionPixelOffset), Integer.valueOf(callAppApplication2.getResources().getDimensionPixelOffset(2131166041)), 27200);
        SpannableString spannableString2 = new SpannableString(Activities.getString(2131886255));
        int color3 = ThemeUtils.getColor(2131099784);
        int color4 = ThemeUtils.getColor(2131099784);
        CallAppApplication callAppApplication3 = CallAppApplication.get();
        C18524p.m3843b(callAppApplication3, "CallAppApplication.get()");
        int dimensionPixelOffset2 = callAppApplication3.getResources().getDimensionPixelOffset(2131166042);
        CallAppApplication callAppApplication4 = CallAppApplication.get();
        C18524p.m3843b(callAppApplication4, "CallAppApplication.get()");
        PopupManager.get().m28209a(getContext(), DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27962a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27961a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27966a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27964a(m27965a, spannableString2, Integer.valueOf(color3), 2131232141, 0, Integer.valueOf(color4), Integer.valueOf(ThemeUtils.getColor(2131100228)), null, new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecorderTestDataManager.f27475a.setAsApplied(j);
                RecorderTestManager.f27521b.get().setRecordingConfiguration(RecorderTestCard.this.getRecorderTestData());
            }
        }, true, null, true, false, 50, 15, 0, Integer.valueOf(dimensionPixelOffset2), Integer.valueOf(callAppApplication4.getResources().getDimensionPixelOffset(2131166041)), 43584), 70, 70, 30, 30, false, 67), Activities.m27697a(2131887500, Integer.valueOf(this.recorderTestData.getTestPriority())), Integer.valueOf(ThemeUtils.getColor(2131100140)), true, 0, 244), Activities.getString(2131887499), Integer.valueOf(ThemeUtils.getColor(2131100140)), 70).m27967a());
    }

    private final void setSeekBarColor(RecorderTestCardViewHolder recorderTestCardViewHolder) {
        if (recorderTestCardViewHolder != null) {
            int color = WhenMappings.f21210b[RecorderTestManager.f27521b.get().getCurrentTestStatus().ordinal()] != 1 ? ThemeUtils.getColor(2131099919) : ThemeUtils.getColor(2131099784);
            ImageView recorderTestPlayButton = recorderTestCardViewHolder.getRecorderTestPlayButton();
            C18524p.m3843b(recorderTestPlayButton, "recorderTestPlayButton");
            recorderTestPlayButton.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            ImageView deleteRecordTestConfiguration = recorderTestCardViewHolder.getDeleteRecordTestConfiguration();
            C18524p.m3843b(deleteRecordTestConfiguration, "deleteRecordTestConfiguration");
            deleteRecordTestConfiguration.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            AppCompatSeekBar playerSeekBar = recorderTestCardViewHolder.getPlayerSeekBar();
            C18524p.m3843b(playerSeekBar, "playerSeekBar");
            Drawable progressDrawable = playerSeekBar.getProgressDrawable();
            C18524p.m3843b(progressDrawable, "playerSeekBar.progressDrawable");
            progressDrawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
            AppCompatSeekBar playerSeekBar2 = recorderTestCardViewHolder.getPlayerSeekBar();
            C18524p.m3843b(playerSeekBar2, "playerSeekBar");
            Drawable thumb = playerSeekBar2.getThumb();
            C18524p.m3843b(thumb, "playerSeekBar.thumb");
            thumb.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            int i = this.recorderTestData.getTestStatus() == RecordConfiguration.STATUS.APPLIED ? 2131231587 : 2131231586;
            ImageView applyRecordTestConfiguration = recorderTestCardViewHolder.getApplyRecordTestConfiguration();
            applyRecordTestConfiguration.setImageResource(i);
            C18524p.m3843b(applyRecordTestConfiguration, "this");
            applyRecordTestConfiguration.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
    }

    private final void showFinishedView(RecorderTestCardViewHolder recorderTestCardViewHolder) {
        View doneRecorderCard;
        View progressRecorderCard;
        if (recorderTestCardViewHolder != null && (progressRecorderCard = recorderTestCardViewHolder.getProgressRecorderCard()) != null) {
            progressRecorderCard.setVisibility(8);
        }
        if (recorderTestCardViewHolder == null || (doneRecorderCard = recorderTestCardViewHolder.getDoneRecorderCard()) == null) {
            return;
        }
        doneRecorderCard.setVisibility(0);
    }

    private final void showProgressView(RecorderTestCardViewHolder recorderTestCardViewHolder) {
        View doneRecorderCard;
        View progressRecorderCard;
        if (recorderTestCardViewHolder != null && (progressRecorderCard = recorderTestCardViewHolder.getProgressRecorderCard()) != null) {
            progressRecorderCard.setVisibility(0);
        }
        if (recorderTestCardViewHolder == null || (doneRecorderCard = recorderTestCardViewHolder.getDoneRecorderCard()) == null) {
            return;
        }
        doneRecorderCard.setVisibility(8);
    }

    public final float getCurrentTestProgress() {
        return this.currentTestProgress;
    }

    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final String getHeaderTitle() {
        return (Activities.getString(2131887512) + StringUtils.SPACE) + this.recorderTestData.getTestPriority();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final int getPriority() {
        return this.recorderTestData.getTestPriority();
    }

    public final RecorderTestData getRecorderTestData() {
        return this.recorderTestData;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final int getSalt() {
        return this.salt;
    }

    public final SeekBarManager getSeekBarManager() {
        return this.seekBarManager;
    }

    public final void onBindViewHolder(RecorderTestCardViewHolder recorderTestCardViewHolder) {
        SeekBarManager seekBarManager;
        if (recorderTestCardViewHolder != null) {
            int i = WhenMappings.f21209a[this.recorderTestData.getTestStatus().ordinal()];
            if (i == 1 || i == 2) {
                showFinishedView(recorderTestCardViewHolder);
                RecorderTestDataManager.Companion companion = RecorderTestDataManager.f27475a;
                CallRecorder m27822b = RecorderTestDataManager.Companion.m27822b(this.recorderTestData.getId());
                if (m27822b != null && (seekBarManager = this.seekBarManager) != null) {
                    seekBarManager.m27848a(m27822b);
                }
            } else if (i == 3) {
                RoundCornerProgressBar recorderTestProgressBar = recorderTestCardViewHolder.getRecorderTestProgressBar();
                if (recorderTestProgressBar != null) {
                    if (this.currentTestProgress == BitmapDescriptorFactory.HUE_RED) {
                        recorderTestProgressBar.setProgressBackgroundColor(ThemeUtils.getColor(2131099675));
                    } else {
                        recorderTestProgressBar.setProgressColor(ThemeUtils.getColor(2131099675));
                    }
                    recorderTestProgressBar.disableAnimation();
                    recorderTestProgressBar.setProgress(this.currentTestProgress);
                }
                showProgressView(recorderTestCardViewHolder);
            } else if (i != 4) {
                showProgressView(recorderTestCardViewHolder);
                RoundCornerProgressBar recorderTestProgressBar2 = recorderTestCardViewHolder.getRecorderTestProgressBar();
                if (recorderTestProgressBar2 != null) {
                    recorderTestProgressBar2.setProgressColor(ThemeUtils.getColor(2131099784));
                    recorderTestProgressBar2.setProgressBackgroundColor(ThemeUtils.getColor(2131099891));
                    recorderTestProgressBar2.disableAnimation();
                    recorderTestProgressBar2.setProgress(BitmapDescriptorFactory.HUE_RED);
                }
            } else {
                RoundCornerProgressBar recorderTestProgressBar3 = recorderTestCardViewHolder.getRecorderTestProgressBar();
                if (recorderTestProgressBar3 != null) {
                    recorderTestProgressBar3.enableAnimation();
                    recorderTestProgressBar3.setProgressColor(ThemeUtils.getColor(2131099784));
                    recorderTestProgressBar3.setProgress(this.currentTestProgress);
                }
                showProgressView(recorderTestCardViewHolder);
            }
            ImageView applyRecordTestConfiguration = recorderTestCardViewHolder.getApplyRecordTestConfiguration();
            if (applyRecordTestConfiguration != null) {
                applyRecordTestConfiguration.setOnClickListener(this);
            }
            ImageView deleteRecordTestConfiguration = recorderTestCardViewHolder.getDeleteRecordTestConfiguration();
            if (deleteRecordTestConfiguration != null) {
                deleteRecordTestConfiguration.setOnClickListener(this);
            }
            ImageView recorderTestPlayButton = recorderTestCardViewHolder.getRecorderTestPlayButton();
            if (recorderTestPlayButton != null) {
                recorderTestPlayButton.setOnClickListener(this);
            }
            TextView recordTestTime = recorderTestCardViewHolder.getRecordTestTime();
            C18524p.m3843b(recordTestTime, "recordTestTime");
            long recordTime = this.recorderTestData.getRecordTime() / 1000;
            recordTestTime.setText((String.valueOf(recordTime) + StringUtils.SPACE) + Activities.getString(2131887674));
            setSeekBarColor(recorderTestCardViewHolder);
        }
        setCardBackgroundColor();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View v) {
        SeekBarManager seekBarManager;
        C18524p.m3840d(v, "v");
        if (this.presentersContainer.isClickValid(v)) {
            AndroidUtils.m27630a(v, 1);
            int id = v.getId();
            if (id == 2131362021) {
                onApplyClicked(this.recorderTestData.getId());
            } else if (id != 2131362548) {
                if (id != 2131363633 || (seekBarManager = this.seekBarManager) == null) {
                    return;
                }
                seekBarManager.m27846b();
            } else {
                SeekBarManager seekBarManager2 = this.seekBarManager;
                if (seekBarManager2 != null) {
                    seekBarManager2.m27849a();
                }
                RecorderTestDataManager.Companion companion = RecorderTestDataManager.f27475a;
                RecorderTestData m27826a = RecorderTestDataManager.Companion.m27826a(this.recorderTestData.getId());
                if (m27826a != null) {
                    m27826a.setTestStatus(RecordConfiguration.STATUS.DELETED);
                    RecorderTestDataManager.f27476b.m4711a((C17944a) m27826a);
                }
                hideCard();
            }
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public final void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final RecorderTestCardViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        if (viewGroup != null) {
            return new RecorderTestCardViewHolder(this, viewGroup);
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public final void onDestroy() {
        super.onDestroy();
        EventBus eventBus = this.eventBus;
        eventBus.m29045b(RecorderTestChangedListener.f23133a, this);
        eventBus.m29045b(RecorderTestChangedListener.f23134b, this);
        eventBus.m29045b(RecorderTestChangedListener.f23135c, this);
        eventBus.m29045b(PauseListener.f25149a, this);
        eventBus.m29045b(ResumeListener.f25150d, this);
        SeekBarManager seekBarManager = this.seekBarManager;
        if (seekBarManager != null) {
            seekBarManager.m27849a();
        }
    }

    @Override // com.callapp.contacts.event.listener.PauseListener
    public final void onPause() {
        SeekBarManager seekBarManager = this.seekBarManager;
        if (seekBarManager != null) {
            seekBarManager.m27842d();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestChanged(C18538n<Long, ? extends RecordConfiguration.STATUS> recorderTestData) {
        C18524p.m3840d(recorderTestData, "recorderTestData");
        if (recorderTestData.f63624a.longValue() == this.recorderTestData.getId()) {
            this.recorderTestData.setTestStatus((RecordConfiguration.STATUS) recorderTestData.f63625b);
            if (RecorderTestManager.f27521b.get().isRecorderTestRunning() || this.recorderTestData.getTestStatus() != RecordConfiguration.STATUS.FAILED) {
                showCard(true);
            } else {
                hideCard();
            }
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestProgressChanged(C18538n<Long, Float> testProgressCounter) {
        C18524p.m3840d(testProgressCounter, "testProgressCounter");
        if (testProgressCounter.f63624a.longValue() == this.recorderTestData.getId()) {
            this.currentTestProgress = testProgressCounter.f63625b.floatValue();
            showCard(true);
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestStatusChanged(RecorderTestManager.RecorderTestManagerStatus recorderTestManagerStatus) {
        if (RecorderTestManager.f27521b.get().isRecorderTestRunning() || this.recorderTestData.getTestStatus() != RecordConfiguration.STATUS.FAILED) {
            return;
        }
        hideCard();
    }

    @Override // com.callapp.contacts.event.listener.ResumeListener
    public final void onResume() {
        SeekBarManager seekBarManager = this.seekBarManager;
        if (seekBarManager != null) {
            seekBarManager.f27417b = false;
        }
    }

    public final void setCardBackgroundColor() {
        if (this.recorderTestData.getTestStatus() == RecordConfiguration.STATUS.APPLIED) {
            setCardBgColor(ThemeUtils.isThemeLight() ? ThemeUtils.getColor(2131099733) : ThemeUtils.getColor(2131100095));
            AbstractC18152a cardView = getCardView();
            Objects.requireNonNull(cardView, "null cannot be cast to non-null type androidx.cardview.widget.CardView");
            setBackground((CardView) cardView);
            return;
        }
        setCardBackground();
        AbstractC18152a cardView2 = getCardView();
        Objects.requireNonNull(cardView2, "null cannot be cast to non-null type androidx.cardview.widget.CardView");
        setBackground((CardView) cardView2);
    }

    public final void setCurrentTestProgress(float f) {
        this.currentTestProgress = f;
    }

    public final void setEventBus(EventBus eventBus) {
        C18524p.m3840d(eventBus, "<set-?>");
        this.eventBus = eventBus;
    }

    public final void setRecorderTestData(RecorderTestData recorderTestData) {
        C18524p.m3840d(recorderTestData, "<set-?>");
        this.recorderTestData = recorderTestData;
    }

    public final void setSeekBarManager(SeekBarManager seekBarManager) {
        this.seekBarManager = seekBarManager;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final boolean showShouldExpandButton() {
        return false;
    }

    public final void updateCardData(RecorderTestCardObject recorderTestCardObject, boolean z) {
    }
}
