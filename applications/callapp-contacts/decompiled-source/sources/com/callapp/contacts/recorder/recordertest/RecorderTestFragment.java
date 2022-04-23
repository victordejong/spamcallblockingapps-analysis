package com.callapp.contacts.recorder.recordertest;

import android.content.Context;
import android.graphics.PointF;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.u;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.details.PresenterManager;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainerImpl;
import com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter;
import com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.RecorderTestListener;
import com.callapp.contacts.activity.interfaces.RecorderTestChangedListener;
import com.callapp.contacts.databinding.RecorderTestFragmentBinding;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.CongratsPopUp;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestFragment;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.recyclerviewext.CardRecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.b.a;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\u0018��2\u00020\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00022\u00020\u00052\u00020\u0006:\u0001]B\u0005¢\u0006\u0002\u0010\u0007J\b\u00102\u001a\u000203H\u0002J\b\u00104\u001a\u000205H\u0002J\u0010\u00106\u001a\u0002032\u0006\u00107\u001a\u000208H\u0016J\u0016\u00109\u001a\u0002032\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J$\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010@2\b\u0010A\u001a\u0004\u0018\u00010BH\u0016J\b\u0010C\u001a\u000203H\u0016J\b\u0010D\u001a\u000203H\u0016J\b\u0010E\u001a\u000203H\u0016J\u0006\u0010F\u001a\u000203J\b\u0010G\u001a\u000203H\u0016J\u001e\u0010H\u001a\u0002032\u0014\u0010:\u001a\u0010\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u00020K\u0018\u00010IH\u0016J\u001e\u0010L\u001a\u0002032\u0014\u0010M\u001a\u0010\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u00020N\u0018\u00010IH\u0016J\u0012\u0010O\u001a\u0002032\b\u0010P\u001a\u0004\u0018\u00010QH\u0016J\b\u0010R\u001a\u000203H\u0016J\u001c\u0010S\u001a\u00020+2\b\u0010T\u001a\u0004\u0018\u00010<2\b\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u001a\u0010W\u001a\u0002032\u0006\u0010X\u001a\u00020<2\b\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u0014\u0010Y\u001a\u0002032\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J\u000e\u0010Z\u001a\u0002032\u0006\u0010[\u001a\u00020\\R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u000e\u00100\u001a\u000201X\u0082.¢\u0006\u0002\n��¨\u0006^"}, d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/lifecycle/Observer;", "", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;", "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;", "Landroid/view/View$OnTouchListener;", "()V", "_binding", "Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;", "callBarPresenter", "Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;", "cardsAdapter", "Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;", "getCardsAdapter", "()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;", "setCardsAdapter", "(Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;)V", "eventBus", "Lcom/callapp/contacts/event/bus/EventBus;", "getEventBus", "()Lcom/callapp/contacts/event/bus/EventBus;", "setEventBus", "(Lcom/callapp/contacts/event/bus/EventBus;)V", "presenterContainer", "Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;", "getPresenterContainer", "()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;", "setPresenterContainer", "(Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;)V", "presenterManager", "Lcom/callapp/contacts/activity/contact/details/PresenterManager;", "getPresenterManager", "()Lcom/callapp/contacts/activity/contact/details/PresenterManager;", "setPresenterManager", "(Lcom/callapp/contacts/activity/contact/details/PresenterManager;)V", "recorderTestDataList", "recorderTestFragmentEvents", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;", "shouldScroll", "", "getShouldScroll", "()Z", "setShouldScroll", "(Z)V", "viewModel", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;", "congratsPopUp", "", "getHangUpText", "Landroid/text/SpannableStringBuilder;", "onAttach", "context", "Landroid/content/Context;", "onChanged", "recorderTestData", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onDestroyView", "onDetach", "onHangButtonClicked", "onPause", "onRecorderTestChanged", "Lkotlin/Pair;", "", "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;", "onRecorderTestProgressChanged", "testProgressCounter", "", "onRecorderTestStatusChanged", "testStatus", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;", "onResume", "onTouch", "p0", "p1", "Landroid/view/MotionEvent;", "onViewCreated", "view", "scrollToNextTest", "smoothScrollToPosition", "index", "", "RecorderTestFragmentEvents", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestFragment.class */
public final class RecorderTestFragment extends Fragment implements View.OnTouchListener, u<List<? extends RecorderTestData>>, RecorderTestChangedListener {

    /* renamed from: d  reason: collision with root package name */
    private RecorderTestViewModel f15705d;
    private CardArrayRecyclerViewAdapterWithPriority f;
    private EventBus g;
    private CallBarPresenter h;
    private PresenterManager i;
    private PresentersContainerImpl j;
    private RecorderTestFragmentEvents l;
    private RecorderTestFragmentBinding m;
    private boolean k = true;
    private List<RecorderTestData> e = RecorderTestDataManager.f15699a.getAllRecordTest();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;", "", "getCallBarPresenter", "Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;", "getParallax", "Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;", "onAppliedConfiguration", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents.class */
    public interface RecorderTestFragmentEvents {
        CallBarPresenter getCallBarPresenter();

        BaseContactDetailsParallaxImpl getParallax();

        void onAppliedConfiguration();
    }

    public RecorderTestFragment() {
        EventBus eventBus = new EventBus();
        this.g = eventBus;
        PresentersContainerImpl presentersContainerImpl = new PresentersContainerImpl(eventBus, PresentersContainer.MODE.RECORDER_TEST_SCREEN) { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment.1
            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public final <V extends View> V findViewById(int i) {
                FragmentActivity activity = RecorderTestFragment.this.getActivity();
                if (activity != null) {
                    return (V) activity.findViewById(i);
                }
                return null;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public final void finish() {
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public final CardArrayRecyclerViewAdapterWithPriority getCardsAdapter() {
                return RecorderTestFragment.this.getCardsAdapter();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public final ContactData getContact() {
                return null;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public final EventBus getEventBus() {
                return RecorderTestFragment.this.getEventBus();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public final Context getRealContext() {
                return RecorderTestFragment.this.getContext();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public final boolean hasIntentExtra(String extra) {
                p.d(extra, "extra");
                return false;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public final boolean isClickValid(View view) {
                RecorderTestFragment.this.setShouldScroll(RecorderTestManager.f15722b.get().isInRecorderTestMode());
                return !RecorderTestFragment.this.getShouldScroll();
            }

            /*  JADX ERROR: ArrayIndexOutOfBoundsException in pass: SSATransform
                java.lang.ArrayIndexOutOfBoundsException: 2
                	at jadx.core.dex.visitors.ssa.LiveVarAnalysis.processLiveInfo(LiveVarAnalysis.java:96)
                	at jadx.core.dex.visitors.ssa.LiveVarAnalysis.runAnalysis(LiveVarAnalysis.java:37)
                	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:55)
                	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:41)
                */
            /* JADX WARN: Failed to detect multi-entry loops
            java.lang.ArrayIndexOutOfBoundsException: 2
            	at jadx.core.dex.visitors.blocks.FixMultiEntryLoops.colorDFS(FixMultiEntryLoops.java:90)
            	at jadx.core.dex.visitors.blocks.FixMultiEntryLoops.detectSpecialEdges(FixMultiEntryLoops.java:81)
            	at jadx.core.dex.visitors.blocks.FixMultiEntryLoops.process(FixMultiEntryLoops.java:18)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:56)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
             */
            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public final boolean isFinishing() {
                /*
                    r1 = this;
                L_0x0000:
                    goto L_0x0000
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.recorder.recordertest.RecorderTestFragment.AnonymousClass1.isFinishing():boolean");
            }
        };
        this.j = presentersContainerImpl;
        this.i = new PresenterManager(presentersContainerImpl.getContainerMode());
        EventBus eventBus2 = this.g;
        eventBus2.a(RecorderTestChangedListener.f12961c, this);
        RecorderTestManager.f15722b.get().f15723a = eventBus2;
    }

    public static final /* synthetic */ RecorderTestViewModel c(RecorderTestFragment recorderTestFragment) {
        RecorderTestViewModel recorderTestViewModel = recorderTestFragment.f15705d;
        if (recorderTestViewModel == null) {
            p.a("viewModel");
        }
        return recorderTestViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecorderTestFragmentBinding getBinding() {
        RecorderTestFragmentBinding recorderTestFragmentBinding = this.m;
        p.a(recorderTestFragmentBinding);
        return recorderTestFragmentBinding;
    }

    public final void a(int i) {
        BaseContactDetailsParallaxImpl parallax;
        RecorderTestFragmentEvents recorderTestFragmentEvents = this.l;
        if (!(recorderTestFragmentEvents == null || (parallax = recorderTestFragmentEvents.getParallax()) == null)) {
            parallax.a(BaseContactDetailsParallaxImpl.Position.CLOSED, true);
        }
        getBinding().f14349a.d(i);
    }

    public final CardArrayRecyclerViewAdapterWithPriority getCardsAdapter() {
        return this.f;
    }

    public final EventBus getEventBus() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SpannableStringBuilder getHangUpText() {
        List<RecorderTestData> list = this.e;
        ArrayList<RecorderTestData> arrayList = new ArrayList();
        for (Object obj : list) {
            RecorderTestData recorderTestData = (RecorderTestData) obj;
            boolean z = true;
            if (recorderTestData.getTestStatus() != RecordConfiguration.STATUS.IDLE) {
                z = recorderTestData.getTestStatus() == RecordConfiguration.STATUS.STARTED;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        int i = 0;
        for (RecorderTestData recorderTestData2 : arrayList) {
            i += (int) recorderTestData2.getRecordTime();
        }
        int i2 = i / 60000;
        int i3 = i / 1000;
        ag agVar = ag.f36785a;
        String format = String.format("%d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i2), Integer.valueOf(i3 % 60)}, 2));
        p.b(format, "java.lang.String.format(format, *args)");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(Activities.a(2131887514, format, i2 > 0 ? Activities.getString(2131887673) : Activities.getString(2131887674)));
        SpannableString spannableString = new SpannableString(Activities.getText(2131887515));
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 0);
        spannableStringBuilder.append((CharSequence) System.getProperty("line.separator"));
        spannableStringBuilder.append((CharSequence) spannableString);
        return spannableStringBuilder;
    }

    public final PresentersContainerImpl getPresenterContainer() {
        return this.j;
    }

    public final PresenterManager getPresenterManager() {
        return this.i;
    }

    public final boolean getShouldScroll() {
        return this.k;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        p.d(context, "context");
        super.onAttach(context);
        try {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                this.l = (RecorderTestFragmentEvents) activity;
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type com.callapp.contacts.recorder.recordertest.RecorderTestFragment.RecorderTestFragmentEvents");
        } catch (ClassCastException e) {
            throw new ClassCastException(String.valueOf(getActivity()) + " must implement RecorderTestFragmentEvents ");
        }
    }

    @Override // androidx.lifecycle.u
    public final /* synthetic */ void onChanged(List<? extends RecorderTestData> list) {
        final ArrayList arrayList;
        List<? extends RecorderTestData> recorderTestData = list;
        p.d(recorderTestData, "recorderTestData");
        if (RecorderTestManager.f15722b.get().isRecorderTestFinished()) {
            this.g.c(RecorderTestChangedListener.f12961c, RecorderTestManager.RecorderTestManagerStatus.FINISHED);
            List<? extends RecorderTestData> list2 = recorderTestData;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list2) {
                RecorderTestData recorderTestData2 = (RecorderTestData) obj;
                if ((recorderTestData2.getTestStatus() == RecordConfiguration.STATUS.DELETED || recorderTestData2.getTestStatus() == RecordConfiguration.STATUS.FAILED) ? false : true) {
                    arrayList2.add(obj);
                }
            }
            arrayList = arrayList2;
        } else {
            List<? extends RecorderTestData> list3 = recorderTestData;
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : list3) {
                if (((RecorderTestData) obj2).getTestStatus() != RecordConfiguration.STATUS.DELETED) {
                    arrayList3.add(obj2);
                }
            }
            arrayList = arrayList3;
        }
        this.e = arrayList;
        new Task() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onChanged$$inlined$let$lambda$1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                Object obj3;
                if (!arrayList.isEmpty()) {
                    if (RecorderTestManager.f15722b.get().isRecorderTestRunning()) {
                        final RecorderTestFragment recorderTestFragment = this;
                        List recorderTestData3 = arrayList;
                        p.d(recorderTestData3, "recorderTestData");
                        final List a2 = n.a((Iterable) recorderTestData3, new Comparator<T>() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$scrollToNextTest$$inlined$sortedBy$1
                            @Override // java.util.Comparator
                            public final int compare(T t, T t2) {
                                return a.a(Integer.valueOf(((RecorderTestData) t).getTestPriority()), Integer.valueOf(((RecorderTestData) t2).getTestPriority()));
                            }
                        });
                        Iterator it2 = a2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                obj3 = null;
                                break;
                            }
                            obj3 = it2.next();
                            RecorderTestData recorderTestData4 = (RecorderTestData) obj3;
                            if (recorderTestData4.getTestStatus() == RecordConfiguration.STATUS.STARTED || recorderTestData4.getTestStatus() == RecordConfiguration.STATUS.IDLE) {
                                break;
                            }
                        }
                        final RecorderTestData recorderTestData5 = (RecorderTestData) obj3;
                        if (recorderTestData5 != null) {
                            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    recorderTestFragment.a(a2.indexOf(RecorderTestData.this));
                                }
                            }, 50L);
                        }
                    }
                    for (RecorderTestData recorderTestData6 : arrayList) {
                        this.getEventBus().a((EventType<L, EventType<RecorderTestChangedListener, kotlin.n<Long, RecordConfiguration.STATUS>>>) RecorderTestChangedListener.f12959a, (EventType<RecorderTestChangedListener, kotlin.n<Long, RecordConfiguration.STATUS>>) new kotlin.n(Long.valueOf(recorderTestData6.getId()), recorderTestData6.getTestStatus()), false);
                    }
                    return;
                }
                this.getEventBus().a((EventType<L, EventType<RecorderTestChangedListener, RecorderTestManager.RecorderTestManagerStatus>>) RecorderTestChangedListener.f12961c, (EventType<RecorderTestChangedListener, RecorderTestManager.RecorderTestManagerStatus>) RecorderTestManager.RecorderTestManagerStatus.EMPTY, false);
            }
        }.execute();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        p.d(inflater, "inflater");
        this.m = RecorderTestFragmentBinding.a(inflater, viewGroup);
        ConstraintLayout root = getBinding().getRoot();
        p.b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        EventBus eventBus = this.g;
        eventBus.b(RecorderTestChangedListener.f12961c, this);
        RecorderTestManager.f15722b.get().f15723a = null;
        eventBus.a((EventType<L, EventType<DestroyListener, Object>>) DestroyListener.f14378d, (EventType<DestroyListener, Object>) this.j, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.m = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.l = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.g.a((EventType<L, EventType<PauseListener, Object>>) PauseListener.f14379a, (EventType<PauseListener, Object>) this.j, false);
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestChanged(kotlin.n<Long, ? extends RecordConfiguration.STATUS> nVar) {
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestProgressChanged(kotlin.n<Long, Float> nVar) {
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestStatusChanged(RecorderTestManager.RecorderTestManagerStatus recorderTestManagerStatus) {
        CallBarPresenter callBarPresenter;
        Object obj;
        CallBarPresenter callBarPresenter2;
        if (recorderTestManagerStatus != null) {
            if (recorderTestManagerStatus == RecorderTestManager.RecorderTestManagerStatus.IDLE && RecorderTestManager.f15722b.get().isInRecorderTestMode()) {
                RecorderTestFragmentEvents recorderTestFragmentEvents = this.l;
                if (!(recorderTestFragmentEvents == null || (callBarPresenter2 = recorderTestFragmentEvents.getCallBarPresenter()) == null)) {
                    callBarPresenter2.e();
                }
                Iterator<T> it2 = this.e.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    RecorderTestData recorderTestData = (RecorderTestData) obj;
                    if (recorderTestData.getTestStatus() == RecordConfiguration.STATUS.APPLIED || recorderTestData.getTestStatus() == RecordConfiguration.STATUS.DONE) {
                        break;
                    }
                }
                final ab.c cVar = new ab.c();
                List<RecorderTestData> indexOf = this.e;
                p.d(indexOf, "$this$indexOf");
                cVar.f36778a = indexOf.indexOf((RecorderTestData) obj);
                if (cVar.f36778a == -1) {
                    cVar.f36778a = 0;
                }
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (this.getShouldScroll()) {
                            this.a(ab.c.this.f36778a);
                        }
                    }
                }, 1000L);
            }
            if (recorderTestManagerStatus == RecorderTestManager.RecorderTestManagerStatus.FINISHED) {
                long j = RecorderTestManager.f15722b.get().isInRecorderTestMode() ? 500L : 3000L;
                RecorderTestFragmentEvents recorderTestFragmentEvents2 = this.l;
                if (!(recorderTestFragmentEvents2 == null || (callBarPresenter = recorderTestFragmentEvents2.getCallBarPresenter()) == null)) {
                    callBarPresenter.setHangButton(true);
                }
                TextView textView = getBinding().f14350b;
                p.b(textView, "binding.recorderTestTopTitle");
                textView.setText(Activities.getText(2131887511));
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$2
                    @Override // java.lang.Runnable
                    public final void run() {
                        List list;
                        if (RecorderTestFragment.this.getShouldScroll()) {
                            RecorderTestFragment recorderTestFragment = RecorderTestFragment.this;
                            list = recorderTestFragment.e;
                            recorderTestFragment.a(list.size());
                        }
                    }
                }, j);
            }
            if (recorderTestManagerStatus == RecorderTestManager.RecorderTestManagerStatus.APPLIED) {
                PopupManager.get().a(getContext(), new CongratsPopUp(new View.OnClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$congratsPopUp$congratsPopUp$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        RecorderTestFragment.RecorderTestFragmentEvents recorderTestFragmentEvents3;
                        AnalyticsManager.get().a(Constants.CALL_RECORDER, "ClickFinishRecTestInPopUp");
                        recorderTestFragmentEvents3 = RecorderTestFragment.this.l;
                        if (recorderTestFragmentEvents3 != null) {
                            recorderTestFragmentEvents3.onAppliedConfiguration();
                        }
                    }
                }));
            }
            if (recorderTestManagerStatus == RecorderTestManager.RecorderTestManagerStatus.STOPPED) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$3
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecorderTestFragmentBinding binding;
                        binding = RecorderTestFragment.this.getBinding();
                        TextView textView2 = binding.f14350b;
                        p.b(textView2, "binding.recorderTestTopTitle");
                        textView2.setText(Activities.getText(2131887511));
                    }
                });
            }
            if (recorderTestManagerStatus == RecorderTestManager.RecorderTestManagerStatus.EMPTY) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$4
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecorderTestFragmentBinding binding;
                        binding = RecorderTestFragment.this.getBinding();
                        TextView textView2 = binding.f14350b;
                        p.b(textView2, "binding.recorderTestTopTitle");
                        textView2.setVisibility(8);
                    }
                });
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.g.a((EventType<L, EventType<ResumeListener, Object>>) ResumeListener.f14380d, (EventType<ResumeListener, Object>) this.j, false);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean isInRecorderTestMode = RecorderTestManager.f15722b.get().isInRecorderTestMode();
        this.k = isInRecorderTestMode;
        return isInRecorderTestMode;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        p.d(view, "view");
        super.onViewCreated(view, bundle);
        RecorderTestFragmentEvents recorderTestFragmentEvents = this.l;
        this.h = recorderTestFragmentEvents != null ? recorderTestFragmentEvents.getCallBarPresenter() : null;
        TextView textView = getBinding().f14350b;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(Activities.getText(2131887520));
        CallBarPresenter callBarPresenter = this.h;
        if (callBarPresenter != null) {
            callBarPresenter.setRecorderTestListener(new RecorderTestListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onViewCreated$2
                @Override // com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.RecorderTestListener
                public final void a() {
                    CallBarPresenter callBarPresenter2;
                    if (RecorderTestManager.f15722b.get().isRecorderTestInProgress()) {
                        final RecorderTestFragment recorderTestFragment = RecorderTestFragment.this;
                        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder = new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder();
                        SpannableString spannableString = new SpannableString(Activities.getString(2131887513));
                        int color = ThemeUtils.getColor(2131099675);
                        int color2 = ThemeUtils.getColor(2131099675);
                        CallAppApplication callAppApplication = CallAppApplication.get();
                        p.b(callAppApplication, "CallAppApplication.get()");
                        int dimensionPixelOffset = callAppApplication.getResources().getDimensionPixelOffset(2131166043);
                        CallAppApplication callAppApplication2 = CallAppApplication.get();
                        p.b(callAppApplication2, "CallAppApplication.get()");
                        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder a2 = DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(dialogMessageWithTopImageBuilder, spannableString, Integer.valueOf(color), 2131232141, 0, Integer.valueOf(color2), Integer.valueOf(ThemeUtils.getColor(2131100228)), null, new View.OnClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onHangButtonClicked$dialogMessageWithTopImageNew$1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                CallBarPresenter callBarPresenter3;
                                callBarPresenter3 = RecorderTestFragment.this.h;
                                if (callBarPresenter3 != null) {
                                    callBarPresenter3.a();
                                }
                            }
                        }, true, null, true, false, 50, 0, 0, Integer.valueOf(dimensionPixelOffset), Integer.valueOf(callAppApplication2.getResources().getDimensionPixelOffset(2131166041)), 59968), 30, 30, 30, 0, true, 35), recorderTestFragment.getHangUpText(), Integer.valueOf(ThemeUtils.getColor(2131100140)));
                        a2.f15496a = Float.valueOf(0.45f);
                        PopupManager.get().a(recorderTestFragment.getContext(), DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(a2, 2131230900).a());
                        return;
                    }
                    callBarPresenter2 = RecorderTestFragment.this.h;
                    if (callBarPresenter2 != null) {
                        callBarPresenter2.a();
                    }
                }
            });
        }
        this.i.c(this.j);
        this.f = new CardArrayRecyclerViewAdapterWithPriority(getContext(), new ArrayList(), null);
        final CardRecyclerView cardRecyclerView = getBinding().f14349a;
        cardRecyclerView.setOnTouchListener(this);
        final Context context = cardRecyclerView.getContext();
        cardRecyclerView.setLayoutManager(new LinearLayoutManager(context) { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onViewCreated$3$1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
            public final void a(final RecyclerView recyclerView, RecyclerView.s state, int i) {
                p.d(recyclerView, "recyclerView");
                p.d(state, "state");
                final Context context2 = recyclerView.getContext();
                g recorderTestFragment$onViewCreated$3$1$smoothScrollToPosition$smoothScroller$1 = new g(context2) { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onViewCreated$3$1$smoothScrollToPosition$smoothScroller$1
                    @Override // androidx.recyclerview.widget.g
                    public final float a(DisplayMetrics displayMetrics) {
                        p.d(displayMetrics, "displayMetrics");
                        return 250.0f / displayMetrics.densityDpi;
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.r
                    public final PointF c(int i2) {
                        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) RecyclerView.this.getLayoutManager();
                        if (linearLayoutManager != null) {
                            return linearLayoutManager.c(i2);
                        }
                        return null;
                    }

                    @Override // androidx.recyclerview.widget.g
                    public final int getVerticalSnapPreference() {
                        return -1;
                    }
                };
                recorderTestFragment$onViewCreated$3$1$smoothScrollToPosition$smoothScroller$1.setTargetPosition(i);
                a(recorderTestFragment$onViewCreated$3$1$smoothScrollToPosition$smoothScroller$1);
            }
        });
        cardRecyclerView.setAdapter((it.gmariotti.cardslib.library.recyclerview.a.a) this.f);
        new RecorderTestFragment$onViewCreated$4(this).execute();
    }

    public final void setShouldScroll(boolean z) {
        this.k = z;
    }
}
