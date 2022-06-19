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

    /* renamed from: a */
    private TopSheetBehavior f22360a;

    /* renamed from: b */
    private ShadowBackGroundAnimationView f22361b;

    /* renamed from: c */
    private AdapterGridView f22362c;

    /* renamed from: d */
    private PresentersContainer f22363d;

    /* renamed from: e */
    private TopSheetListener f22364e;

    /* renamed from: f */
    private final Runnable f22365f = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.1
        @Override // java.lang.Runnable
        public void run() {
            if (TopSheetPresenter.this.f22361b != null) {
                TopSheetPresenter.this.f22361b.m26623a(true);
            }
            TopSheetPresenter.this.setTopSheetState(3);
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener.class */
    public interface TopSheetListener {
        void animateBottomBar(boolean z, boolean z2);
    }

    /* renamed from: a */
    private void m30711a(List<WidgetMetaData> list) {
        this.f22362c.setNotifyOnChange(false);
        this.f22362c.clear();
        this.f22362c.addAll(list);
        this.f22362c.setNotifyOnChange(true);
        this.f22362c.notifyDataSetChanged();
    }

    /* renamed from: d */
    private void m30707d() {
        ActionsManager actionsManager = ActionsManager.get();
        m30711a(actionsManager.m28767a(this.f22363d.getContact(), Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET, actionsManager.getContactDetailsBottomActionList(), (BaseAdapterItemData) null));
    }

    public void setTopSheetState(int i) {
        TopSheetBehavior topSheetBehavior = this.f22360a;
        if (topSheetBehavior != null) {
            topSheetBehavior.setState(i);
        }
    }

    /* renamed from: a */
    public final void m30714a() {
        TopSheetBehavior topSheetBehavior = this.f22360a;
        if (topSheetBehavior == null || topSheetBehavior.getState() != 5) {
            CallAppApplication.get().m31861c(this.f22365f);
            this.f22363d.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.2
                @Override // java.lang.Runnable
                public void run() {
                    if (TopSheetPresenter.this.f22361b != null) {
                        TopSheetPresenter.this.f22361b.m26623a(false);
                    }
                    TopSheetPresenter.this.setTopSheetState(5);
                }
            });
        }
    }

    /* renamed from: b */
    public final void m30710b() {
        PresentersContainer presentersContainer = this.f22363d;
        if (presentersContainer != null) {
            ViewGroup viewGroup = (ViewGroup) presentersContainer.findViewById(2131364179);
            ViewUtils.m27294c(viewGroup, 2131230863, ThemeUtils.getColor(2131099686));
            this.f22363d.findViewById(2131361933).setBackgroundColor(ThemeUtils.getColor(2131099686));
            ShadowBackGroundAnimationView shadowBackGroundAnimationView = (ShadowBackGroundAnimationView) this.f22363d.findViewById(2131362885);
            this.f22361b = shadowBackGroundAnimationView;
            ViewUtils.m27292d(shadowBackGroundAnimationView);
            if (this.f22363d.getContainerMode() == PresentersContainer.MODE.CONTACT_DETAILS_SCREEN) {
                this.f22361b.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.3
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            TopSheetPresenter.this.m30714a();
                            TopSheetPresenter.this.f22361b.setOnTouchListener(null);
                            return false;
                        }
                        return false;
                    }
                });
                this.f22361b.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.4
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view) {
                        return false;
                    }
                });
            }
            if (viewGroup == null) {
                return;
            }
            viewGroup.setSoundEffectsEnabled(false);
            GridView gridView = (GridView) viewGroup.findViewById(2131361933);
            TopSheetBehavior m30918a = TopSheetBehavior.m30918a(viewGroup);
            this.f22360a = m30918a;
            m30918a.setAllowUserDragging(false);
            AdapterGridView adapterGridView = new AdapterGridView(new ArrayList(), new AdapterGridView.onActionClickedListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.5
                @Override // com.callapp.contacts.popup.contact.AdapterGridView.onActionClickedListener
                /* renamed from: a */
                public final void mo28013a(Action action) {
                    action.m31839a(TopSheetPresenter.this.f22363d.getRealContext(), TopSheetPresenter.this.f22363d.getContact());
                    TopSheetPresenter.this.m30714a();
                    if (action.getKey().equalsIgnoreCase(AddCallReminderAction.class.getSimpleName())) {
                        AnalyticsManager.get().m28450a(Constants.BOTTOM_ACTION_BAR, "Call reminder clicked");
                    } else if (!action.getKey().equalsIgnoreCase(BlockCallAction.class.getSimpleName())) {
                    } else {
                        AnalyticsManager.get().m28450a(Constants.BOTTOM_ACTION_BAR, "Block clicked");
                    }
                }
            });
            this.f22362c = adapterGridView;
            if (gridView != null) {
                gridView.setAdapter((ListAdapter) adapterGridView);
            }
            this.f22363d.findViewById(2131362376).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TopSheetPresenter.this.m30714a();
                }
            });
        }
    }

    /* renamed from: c */
    public final void m30708c() {
        m30707d();
        CallAppApplication.get().m31864b(this.f22365f);
        TopSheetListener topSheetListener = this.f22364e;
        if (topSheetListener != null) {
            topSheetListener.animateBottomBar(true, true);
        }
    }

    public boolean isTopSheetClosed() {
        TopSheetBehavior topSheetBehavior = this.f22360a;
        return topSheetBehavior == null || topSheetBehavior.getState() == 5;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        this.f22363d = presentersContainer;
    }

    public void setTopSheetListener(TopSheetListener topSheetListener) {
        this.f22364e = topSheetListener;
    }
}
