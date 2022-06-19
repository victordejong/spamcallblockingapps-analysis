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
import androidx.lifecycle.AbstractC1268u;
import androidx.recyclerview.widget.C2690g;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
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
import it.gmariotti.cardslib.library.recyclerview.p513a.AbstractC18112a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.C18538n;
import kotlin.Metadata;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p520b.C18299a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\u0018��2\u00020\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00022\u00020\u00052\u00020\u0006:\u0001]B\u0005¢\u0006\u0002\u0010\u0007J\b\u00102\u001a\u000203H\u0002J\b\u00104\u001a\u000205H\u0002J\u0010\u00106\u001a\u0002032\u0006\u00107\u001a\u000208H\u0016J\u0016\u00109\u001a\u0002032\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J$\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010@2\b\u0010A\u001a\u0004\u0018\u00010BH\u0016J\b\u0010C\u001a\u000203H\u0016J\b\u0010D\u001a\u000203H\u0016J\b\u0010E\u001a\u000203H\u0016J\u0006\u0010F\u001a\u000203J\b\u0010G\u001a\u000203H\u0016J\u001e\u0010H\u001a\u0002032\u0014\u0010:\u001a\u0010\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u00020K\u0018\u00010IH\u0016J\u001e\u0010L\u001a\u0002032\u0014\u0010M\u001a\u0010\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u00020N\u0018\u00010IH\u0016J\u0012\u0010O\u001a\u0002032\b\u0010P\u001a\u0004\u0018\u00010QH\u0016J\b\u0010R\u001a\u000203H\u0016J\u001c\u0010S\u001a\u00020+2\b\u0010T\u001a\u0004\u0018\u00010<2\b\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u001a\u0010W\u001a\u0002032\u0006\u0010X\u001a\u00020<2\b\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u0014\u0010Y\u001a\u0002032\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J\u000e\u0010Z\u001a\u0002032\u0006\u0010[\u001a\u00020\\R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u000e\u00100\u001a\u000201X\u0082.¢\u0006\u0002\n��¨\u0006^"}, m4298d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/lifecycle/Observer;", "", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;", "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;", "Landroid/view/View$OnTouchListener;", "()V", "_binding", "Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;", "callBarPresenter", "Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;", "cardsAdapter", "Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;", "getCardsAdapter", "()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;", "setCardsAdapter", "(Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;)V", "eventBus", "Lcom/callapp/contacts/event/bus/EventBus;", "getEventBus", "()Lcom/callapp/contacts/event/bus/EventBus;", "setEventBus", "(Lcom/callapp/contacts/event/bus/EventBus;)V", "presenterContainer", "Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;", "getPresenterContainer", "()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;", "setPresenterContainer", "(Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;)V", "presenterManager", "Lcom/callapp/contacts/activity/contact/details/PresenterManager;", "getPresenterManager", "()Lcom/callapp/contacts/activity/contact/details/PresenterManager;", "setPresenterManager", "(Lcom/callapp/contacts/activity/contact/details/PresenterManager;)V", "recorderTestDataList", "recorderTestFragmentEvents", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;", "shouldScroll", "", "getShouldScroll", "()Z", "setShouldScroll", "(Z)V", "viewModel", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;", "congratsPopUp", "", "getHangUpText", "Landroid/text/SpannableStringBuilder;", "onAttach", "context", "Landroid/content/Context;", "onChanged", "recorderTestData", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onDestroyView", "onDetach", "onHangButtonClicked", "onPause", "onRecorderTestChanged", "Lkotlin/Pair;", "", "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;", "onRecorderTestProgressChanged", "testProgressCounter", "", "onRecorderTestStatusChanged", "testStatus", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;", "onResume", "onTouch", "p0", "p1", "Landroid/view/MotionEvent;", "onViewCreated", "view", "scrollToNextTest", "smoothScrollToPosition", "index", "", "RecorderTestFragmentEvents", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestFragment.class */
public final class RecorderTestFragment extends Fragment implements View.OnTouchListener, AbstractC1268u<List<? extends RecorderTestData>>, RecorderTestChangedListener {

    /* renamed from: d */
    private RecorderTestViewModel f27494d;

    /* renamed from: f */
    private CardArrayRecyclerViewAdapterWithPriority f27496f;

    /* renamed from: g */
    private EventBus f27497g;

    /* renamed from: h */
    private CallBarPresenter f27498h;

    /* renamed from: i */
    private PresenterManager f27499i;

    /* renamed from: j */
    private PresentersContainerImpl f27500j;

    /* renamed from: l */
    private RecorderTestFragmentEvents f27502l;

    /* renamed from: m */
    private RecorderTestFragmentBinding f27503m;

    /* renamed from: k */
    private boolean f27501k = true;

    /* renamed from: e */
    private List<RecorderTestData> f27495e = RecorderTestDataManager.f27475a.getAllRecordTest();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, m4298d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;", "", "getCallBarPresenter", "Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;", "getParallax", "Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;", "onAppliedConfiguration", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents.class */
    public interface RecorderTestFragmentEvents {
        CallBarPresenter getCallBarPresenter();

        BaseContactDetailsParallaxImpl getParallax();

        void onAppliedConfiguration();
    }

    public RecorderTestFragment() {
        EventBus eventBus = new EventBus();
        this.f27497g = eventBus;
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
                C18524p.m3840d(extra, "extra");
                return false;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public final boolean isClickValid(View view) {
                RecorderTestFragment.this.setShouldScroll(RecorderTestManager.f27521b.get().isInRecorderTestMode());
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
            java.lang.ArrayIndexOutOfBoundsException
             */
            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public final boolean isFinishing() {
                /*
                    r1 = this;
                L0:
                    goto L0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.recorder.recordertest.RecorderTestFragment.C77221.isFinishing():boolean");
            }
        };
        this.f27500j = presentersContainerImpl;
        this.f27499i = new PresenterManager(presentersContainerImpl.getContainerMode());
        EventBus eventBus2 = this.f27497g;
        eventBus2.m29048a(RecorderTestChangedListener.f23135c, this);
        RecorderTestManager.f27521b.get().f27522a = eventBus2;
    }

    /* renamed from: c */
    public static final /* synthetic */ RecorderTestViewModel m27815c(RecorderTestFragment recorderTestFragment) {
        RecorderTestViewModel recorderTestViewModel = recorderTestFragment.f27494d;
        if (recorderTestViewModel == null) {
            C18524p.m3848a("viewModel");
        }
        return recorderTestViewModel;
    }

    public final RecorderTestFragmentBinding getBinding() {
        RecorderTestFragmentBinding recorderTestFragmentBinding = this.f27503m;
        C18524p.m3851a(recorderTestFragmentBinding);
        return recorderTestFragmentBinding;
    }

    /* renamed from: a */
    public final void m27819a(int i) {
        BaseContactDetailsParallaxImpl parallax;
        RecorderTestFragmentEvents recorderTestFragmentEvents = this.f27502l;
        if (recorderTestFragmentEvents != null && (parallax = recorderTestFragmentEvents.getParallax()) != null) {
            parallax.m31012a(BaseContactDetailsParallaxImpl.Position.CLOSED, true);
        }
        getBinding().f25092a.m40449d(i);
    }

    public final CardArrayRecyclerViewAdapterWithPriority getCardsAdapter() {
        return this.f27496f;
    }

    public final EventBus getEventBus() {
        return this.f27497g;
    }

    public final SpannableStringBuilder getHangUpText() {
        int i;
        List<RecorderTestData> list = this.f27495e;
        ArrayList arrayList = new ArrayList();
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
        Iterator it2 = arrayList.iterator();
        int i2 = 0;
        while (true) {
            i = i2;
            if (!it2.hasNext()) {
                break;
            }
            i2 = i + ((int) ((RecorderTestData) it2.next()).getRecordTime());
        }
        int i3 = i / 60000;
        C18500ag c18500ag = C18500ag.f63594a;
        String format = String.format("%d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i3), Integer.valueOf((i / 1000) % 60)}, 2));
        C18524p.m3843b(format, "java.lang.String.format(format, *args)");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(Activities.m27697a(2131887514, format, i3 > 0 ? Activities.getString(2131887673) : Activities.getString(2131887674)));
        SpannableString spannableString = new SpannableString(Activities.getText(2131887515));
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 0);
        spannableStringBuilder.append((CharSequence) System.getProperty("line.separator"));
        spannableStringBuilder.append((CharSequence) spannableString);
        return spannableStringBuilder;
    }

    public final PresentersContainerImpl getPresenterContainer() {
        return this.f27500j;
    }

    public final PresenterManager getPresenterManager() {
        return this.f27499i;
    }

    public final boolean getShouldScroll() {
        return this.f27501k;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        C18524p.m3840d(context, "context");
        super.onAttach(context);
        try {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.callapp.contacts.recorder.recordertest.RecorderTestFragment.RecorderTestFragmentEvents");
            }
            this.f27502l = (RecorderTestFragmentEvents) activity;
        } catch (ClassCastException e) {
            throw new ClassCastException(String.valueOf(getActivity()) + " must implement RecorderTestFragmentEvents ");
        }
    }

    @Override // androidx.lifecycle.AbstractC1268u
    public final /* synthetic */ void onChanged(List<? extends RecorderTestData> list) {
        ArrayList arrayList;
        List<? extends RecorderTestData> recorderTestData = list;
        C18524p.m3840d(recorderTestData, "recorderTestData");
        if (RecorderTestManager.f27521b.get().isRecorderTestFinished()) {
            this.f27497g.m29043c(RecorderTestChangedListener.f23135c, RecorderTestManager.RecorderTestManagerStatus.FINISHED);
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
        this.f27495e = arrayList;
        final ArrayList arrayList4 = arrayList;
        new Task() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onChanged$$inlined$let$lambda$1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                Object obj3;
                if (!(!arrayList4.isEmpty())) {
                    this.getEventBus().m29046a((EventType<L, EventType<RecorderTestChangedListener, RecorderTestManager.RecorderTestManagerStatus>>) RecorderTestChangedListener.f23135c, (EventType<RecorderTestChangedListener, RecorderTestManager.RecorderTestManagerStatus>) RecorderTestManager.RecorderTestManagerStatus.EMPTY, false);
                    return;
                }
                if (RecorderTestManager.f27521b.get().isRecorderTestRunning()) {
                    final RecorderTestFragment recorderTestFragment = this;
                    List recorderTestData3 = arrayList4;
                    C18524p.m3840d(recorderTestData3, "recorderTestData");
                    final List a = C18282n.m4145a((Iterable) recorderTestData3, new Comparator<T>() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$scrollToNextTest$$inlined$sortedBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) {
                            return C18299a.m4103a(Integer.valueOf(((RecorderTestData) t).getTestPriority()), Integer.valueOf(((RecorderTestData) t2).getTestPriority()));
                        }
                    });
                    Iterator it2 = a.iterator();
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
                        CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1
                            @Override // java.lang.Runnable
                            public final void run() {
                                recorderTestFragment.m27819a(a.indexOf(RecorderTestData.this));
                            }
                        }, 50L);
                    }
                }
                for (RecorderTestData recorderTestData6 : arrayList4) {
                    this.getEventBus().m29046a((EventType<L, EventType<RecorderTestChangedListener, C18538n<Long, RecordConfiguration.STATUS>>>) RecorderTestChangedListener.f23133a, (EventType<RecorderTestChangedListener, C18538n<Long, RecordConfiguration.STATUS>>) new C18538n(Long.valueOf(recorderTestData6.getId()), recorderTestData6.getTestStatus()), false);
                }
            }
        }.execute();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        C18524p.m3840d(inflater, "inflater");
        this.f27503m = RecorderTestFragmentBinding.m29055a(inflater, viewGroup);
        ConstraintLayout root = getBinding().getRoot();
        C18524p.m3843b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        EventBus eventBus = this.f27497g;
        eventBus.m29045b(RecorderTestChangedListener.f23135c, this);
        RecorderTestManager.f27521b.get().f27522a = null;
        eventBus.m29046a((EventType<L, EventType<DestroyListener, Object>>) DestroyListener.f25148d, (EventType<DestroyListener, Object>) this.f27500j, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.f27503m = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.f27502l = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.f27497g.m29046a((EventType<L, EventType<PauseListener, Object>>) PauseListener.f25149a, (EventType<PauseListener, Object>) this.f27500j, false);
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestChanged(C18538n<Long, ? extends RecordConfiguration.STATUS> c18538n) {
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestProgressChanged(C18538n<Long, Float> c18538n) {
    }

    @Override // com.callapp.contacts.activity.interfaces.RecorderTestChangedListener
    public final void onRecorderTestStatusChanged(RecorderTestManager.RecorderTestManagerStatus recorderTestManagerStatus) {
        CallBarPresenter callBarPresenter;
        Object obj;
        CallBarPresenter callBarPresenter2;
        if (recorderTestManagerStatus != null) {
            if (recorderTestManagerStatus == RecorderTestManager.RecorderTestManagerStatus.IDLE && RecorderTestManager.f27521b.get().isInRecorderTestMode()) {
                RecorderTestFragmentEvents recorderTestFragmentEvents = this.f27502l;
                if (recorderTestFragmentEvents != null && (callBarPresenter2 = recorderTestFragmentEvents.getCallBarPresenter()) != null) {
                    callBarPresenter2.m30744e();
                }
                Iterator<T> it2 = this.f27495e.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    RecorderTestData recorderTestData = (RecorderTestData) obj;
                    if (((recorderTestData.getTestStatus() == RecordConfiguration.STATUS.APPLIED || recorderTestData.getTestStatus() == RecordConfiguration.STATUS.DONE) ? 1 : null) != null) {
                        break;
                    }
                }
                final C18490ab.C18493c c18493c = new C18490ab.C18493c();
                List<RecorderTestData> indexOf = this.f27495e;
                C18524p.m3840d(indexOf, "$this$indexOf");
                c18493c.f63587a = indexOf.indexOf((RecorderTestData) obj);
                if (c18493c.f63587a == -1) {
                    c18493c.f63587a = 0;
                }
                CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (this.getShouldScroll()) {
                            this.m27819a(C18490ab.C18493c.this.f63587a);
                        }
                    }
                }, 1000L);
            }
            if (recorderTestManagerStatus == RecorderTestManager.RecorderTestManagerStatus.FINISHED) {
                Object[] objArr = RecorderTestManager.f27521b.get().isInRecorderTestMode() ? 500 : 3000;
                RecorderTestFragmentEvents recorderTestFragmentEvents2 = this.f27502l;
                if (recorderTestFragmentEvents2 != null && (callBarPresenter = recorderTestFragmentEvents2.getCallBarPresenter()) != null) {
                    callBarPresenter.setHangButton(true);
                }
                TextView textView = getBinding().f25093b;
                C18524p.m3843b(textView, "binding.recorderTestTopTitle");
                textView.setText(Activities.getText(2131887511));
                CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$2
                    @Override // java.lang.Runnable
                    public final void run() {
                        List list;
                        if (RecorderTestFragment.this.getShouldScroll()) {
                            RecorderTestFragment recorderTestFragment = RecorderTestFragment.this;
                            list = recorderTestFragment.f27495e;
                            recorderTestFragment.m27819a(list.size());
                        }
                    }
                }, objArr == 1 ? 1L : 0L);
            }
            if (recorderTestManagerStatus == RecorderTestManager.RecorderTestManagerStatus.APPLIED) {
                PopupManager.get().m28209a(getContext(), new CongratsPopUp(new View.OnClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$congratsPopUp$congratsPopUp$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        RecorderTestFragment.RecorderTestFragmentEvents recorderTestFragmentEvents3;
                        AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "ClickFinishRecTestInPopUp");
                        recorderTestFragmentEvents3 = RecorderTestFragment.this.f27502l;
                        if (recorderTestFragmentEvents3 != null) {
                            recorderTestFragmentEvents3.onAppliedConfiguration();
                        }
                    }
                }));
            }
            if (recorderTestManagerStatus == RecorderTestManager.RecorderTestManagerStatus.STOPPED) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$3
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecorderTestFragmentBinding binding;
                        binding = RecorderTestFragment.this.getBinding();
                        TextView textView2 = binding.f25093b;
                        C18524p.m3843b(textView2, "binding.recorderTestTopTitle");
                        textView2.setText(Activities.getText(2131887511));
                    }
                });
            }
            if (recorderTestManagerStatus != RecorderTestManager.RecorderTestManagerStatus.EMPTY) {
                return;
            }
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$4
                @Override // java.lang.Runnable
                public final void run() {
                    RecorderTestFragmentBinding binding;
                    binding = RecorderTestFragment.this.getBinding();
                    TextView textView2 = binding.f25093b;
                    C18524p.m3843b(textView2, "binding.recorderTestTopTitle");
                    textView2.setVisibility(8);
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f27497g.m29046a((EventType<L, EventType<ResumeListener, Object>>) ResumeListener.f25150d, (EventType<ResumeListener, Object>) this.f27500j, false);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean isInRecorderTestMode = RecorderTestManager.f27521b.get().isInRecorderTestMode();
        this.f27501k = isInRecorderTestMode;
        return isInRecorderTestMode;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        C18524p.m3840d(view, "view");
        super.onViewCreated(view, bundle);
        RecorderTestFragmentEvents recorderTestFragmentEvents = this.f27502l;
        this.f27498h = recorderTestFragmentEvents != null ? recorderTestFragmentEvents.getCallBarPresenter() : null;
        TextView textView = getBinding().f25093b;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(Activities.getText(2131887520));
        CallBarPresenter callBarPresenter = this.f27498h;
        if (callBarPresenter != null) {
            callBarPresenter.setRecorderTestListener(new RecorderTestListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onViewCreated$2
                @Override // com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.RecorderTestListener
                /* renamed from: a */
                public final void mo27812a() {
                    CallBarPresenter callBarPresenter2;
                    if (!RecorderTestManager.f27521b.get().isRecorderTestInProgress()) {
                        callBarPresenter2 = RecorderTestFragment.this.f27498h;
                        if (callBarPresenter2 == null) {
                            return;
                        }
                        callBarPresenter2.m30775a();
                        return;
                    }
                    final RecorderTestFragment recorderTestFragment = RecorderTestFragment.this;
                    DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder = new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder();
                    SpannableString spannableString = new SpannableString(Activities.getString(2131887513));
                    int color = ThemeUtils.getColor(2131099675);
                    int color2 = ThemeUtils.getColor(2131099675);
                    CallAppApplication callAppApplication = CallAppApplication.get();
                    C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
                    int dimensionPixelOffset = callAppApplication.getResources().getDimensionPixelOffset(2131166043);
                    CallAppApplication callAppApplication2 = CallAppApplication.get();
                    C18524p.m3843b(callAppApplication2, "CallAppApplication.get()");
                    DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder m27963a = DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27963a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27966a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27964a(dialogMessageWithTopImageBuilder, spannableString, Integer.valueOf(color), 2131232141, 0, Integer.valueOf(color2), Integer.valueOf(ThemeUtils.getColor(2131100228)), null, new View.OnClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onHangButtonClicked$dialogMessageWithTopImageNew$1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            CallBarPresenter callBarPresenter3;
                            callBarPresenter3 = RecorderTestFragment.this.f27498h;
                            if (callBarPresenter3 != null) {
                                callBarPresenter3.m30775a();
                            }
                        }
                    }, true, null, true, false, 50, 0, 0, Integer.valueOf(dimensionPixelOffset), Integer.valueOf(callAppApplication2.getResources().getDimensionPixelOffset(2131166041)), 59968), 30, 30, 30, 0, true, 35), recorderTestFragment.getHangUpText(), Integer.valueOf(ThemeUtils.getColor(2131100140)));
                    m27963a.f27149a = Float.valueOf(0.45f);
                    PopupManager.get().m28209a(recorderTestFragment.getContext(), DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27960a(m27963a, 2131230900).m27967a());
                }
            });
        }
        this.f27499i.m30921c(this.f27500j);
        this.f27496f = new CardArrayRecyclerViewAdapterWithPriority(getContext(), new ArrayList(), null);
        final CardRecyclerView cardRecyclerView = getBinding().f25092a;
        cardRecyclerView.setOnTouchListener(this);
        cardRecyclerView.setLayoutManager(new LinearLayoutManager(cardRecyclerView.getContext()) { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onViewCreated$3$1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
            /* renamed from: a */
            public final void mo10800a(final RecyclerView recyclerView, RecyclerView.C2654s state, int i) {
                C18524p.m3840d(recyclerView, "recyclerView");
                C18524p.m3840d(state, "state");
                C2690g c2690g = new C2690g(recyclerView.getContext()) { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onViewCreated$3$1$smoothScrollToPosition$smoothScroller$1
                    @Override // androidx.recyclerview.widget.C2690g
                    /* renamed from: a */
                    public final float mo10799a(DisplayMetrics displayMetrics) {
                        C18524p.m3840d(displayMetrics, "displayMetrics");
                        return 250.0f / displayMetrics.densityDpi;
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2651r
                    /* renamed from: c */
                    public final PointF mo27811c(int i2) {
                        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) RecyclerView.this.getLayoutManager();
                        if (linearLayoutManager != null) {
                            return linearLayoutManager.mo40248c(i2);
                        }
                        return null;
                    }

                    @Override // androidx.recyclerview.widget.C2690g
                    public final int getVerticalSnapPreference() {
                        return -1;
                    }
                };
                c2690g.setTargetPosition(i);
                m40378a(c2690g);
            }
        });
        cardRecyclerView.setAdapter((AbstractC18112a) this.f27496f);
        new RecorderTestFragment$onViewCreated$4(this).execute();
    }

    public final void setShouldScroll(boolean z) {
        this.f27501k = z;
    }
}
