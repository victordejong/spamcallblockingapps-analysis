package com.callapp.contacts.activity.contact.details.presenter.simple;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.action.local.AddCallReminderAction;
import com.callapp.contacts.action.local.BlockCallAction;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.TopSheetBehavior;
import com.callapp.contacts.activity.contact.details.presenter.BasePresenter;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.widget.WidgetMetaData;
import com.callapp.contacts.popup.contact.AdapterGridView;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.ShadowBackGroundAnimationView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter.class */
public class TopSheetPresenter extends BasePresenter {

    /* renamed from: a  reason: collision with root package name */
    private TopSheetBehavior f12482a;

    /* renamed from: b  reason: collision with root package name */
    private ShadowBackGroundAnimationView f12483b;

    /* renamed from: c  reason: collision with root package name */
    private AdapterGridView f12484c;

    /* renamed from: d  reason: collision with root package name */
    private PresentersContainer f12485d;
    private TopSheetListener e;
    private final Runnable f = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.1
        @Override // java.lang.Runnable
        public void run() {
            if (TopSheetPresenter.this.f12483b != null) {
                TopSheetPresenter.this.f12483b.a(true);
            }
            TopSheetPresenter.this.setTopSheetState(3);
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener.class */
    public interface TopSheetListener {
        void animateBottomBar(boolean z, boolean z2);
    }

    private void a(List<WidgetMetaData> list) {
        this.f12484c.setNotifyOnChange(false);
        this.f12484c.clear();
        this.f12484c.addAll(list);
        this.f12484c.setNotifyOnChange(true);
        this.f12484c.notifyDataSetChanged();
    }

    private void d() {
        ActionsManager actionsManager = ActionsManager.get();
        a(actionsManager.a(this.f12485d.getContact(), Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET, actionsManager.getContactDetailsBottomActionList(), (BaseAdapterItemData) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTopSheetState(int i) {
        TopSheetBehavior topSheetBehavior = this.f12482a;
        if (topSheetBehavior != null) {
            topSheetBehavior.setState(i);
        }
    }

    public final void a() {
        TopSheetBehavior topSheetBehavior = this.f12482a;
        if (topSheetBehavior == null || topSheetBehavior.getState() != 5) {
            CallAppApplication.get().c(this.f);
            this.f12485d.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.2
                @Override // java.lang.Runnable
                public void run() {
                    if (TopSheetPresenter.this.f12483b != null) {
                        TopSheetPresenter.this.f12483b.a(false);
                    }
                    TopSheetPresenter.this.setTopSheetState(5);
                }
            });
        }
    }

    public final void b() {
        PresentersContainer presentersContainer = this.f12485d;
        if (presentersContainer != null) {
            ViewGroup viewGroup = (ViewGroup) presentersContainer.findViewById(2131364179);
            ViewUtils.c(viewGroup, 2131230863, ThemeUtils.getColor(2131099686));
            this.f12485d.findViewById(2131361933).setBackgroundColor(ThemeUtils.getColor(2131099686));
            ShadowBackGroundAnimationView shadowBackGroundAnimationView = (ShadowBackGroundAnimationView) this.f12485d.findViewById(2131362885);
            this.f12483b = shadowBackGroundAnimationView;
            ViewUtils.d(shadowBackGroundAnimationView);
            if (this.f12485d.getContainerMode() == PresentersContainer.MODE.CONTACT_DETAILS_SCREEN) {
                this.f12483b.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.3
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() != 0) {
                            return false;
                        }
                        TopSheetPresenter.this.a();
                        TopSheetPresenter.this.f12483b.setOnTouchListener(null);
                        return false;
                    }
                });
                this.f12483b.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.4
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view) {
                        return false;
                    }
                });
            }
            if (viewGroup != null) {
                viewGroup.setSoundEffectsEnabled(false);
                GridView gridView = (GridView) viewGroup.findViewById(2131361933);
                TopSheetBehavior a2 = TopSheetBehavior.a(viewGroup);
                this.f12482a = a2;
                a2.setAllowUserDragging(false);
                AdapterGridView adapterGridView = new AdapterGridView(new ArrayList(), new AdapterGridView.onActionClickedListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.5
                    @Override // com.callapp.contacts.popup.contact.AdapterGridView.onActionClickedListener
                    public final void a(Action action) {
                        action.a(TopSheetPresenter.this.f12485d.getRealContext(), TopSheetPresenter.this.f12485d.getContact());
                        TopSheetPresenter.this.a();
                        if (action.getKey().equalsIgnoreCase(AddCallReminderAction.class.getSimpleName())) {
                            AnalyticsManager.get().a(Constants.BOTTOM_ACTION_BAR, "Call reminder clicked");
                        } else if (action.getKey().equalsIgnoreCase(BlockCallAction.class.getSimpleName())) {
                            AnalyticsManager.get().a(Constants.BOTTOM_ACTION_BAR, "Block clicked");
                        }
                    }
                });
                this.f12484c = adapterGridView;
                if (gridView != null) {
                    gridView.setAdapter((ListAdapter) adapterGridView);
                }
                this.f12485d.findViewById(2131362376).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        TopSheetPresenter.this.a();
                    }
                });
            }
        }
    }

    public final void c() {
        d();
        CallAppApplication.get().b(this.f);
        TopSheetListener topSheetListener = this.e;
        if (topSheetListener != null) {
            topSheetListener.animateBottomBar(true, true);
        }
    }

    public boolean isTopSheetClosed() {
        TopSheetBehavior topSheetBehavior = this.f12482a;
        return topSheetBehavior == null || topSheetBehavior.getState() == 5;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        this.f12485d = presentersContainer;
    }

    public void setTopSheetListener(TopSheetListener topSheetListener) {
        this.e = topSheetListener;
    }
}
