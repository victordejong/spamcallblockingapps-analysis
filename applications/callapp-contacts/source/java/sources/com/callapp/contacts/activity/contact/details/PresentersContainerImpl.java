package com.callapp.contacts.activity.contact.details;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/PresentersContainerImpl.class */
public abstract class PresentersContainerImpl implements PresentersContainer, ContactDataChangeListener {
    private Integer defaultPhotoColorFilterColor;
    private final EventBus eventBus;
    private final PresentersContainer.MODE mode;
    private BaseContactDetailsParallaxImpl.PositionChangedListener positionChangedListener;
    private final Map<ContactDataChangeListener, Set<ContactField>> contactListeners = new ConcurrentHashMap();
    private boolean isDestroyed = false;

    public PresentersContainerImpl(EventBus eventBus, PresentersContainer.MODE mode) {
        this.eventBus = eventBus;
        this.mode = mode;
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    /* renamed from: a */
    public /* synthetic */ boolean mo30920a(ContactData contactData) {
        return PresentersContainer._CC.$default$a(this, contactData);
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public void addCallStateListener(CallStateListener callStateListener) {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.m29048a(CallStateListener.f26070d, callStateListener);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public void addContactChangedListener(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
        if (!this.isDestroyed) {
            this.contactListeners.put(contactDataChangeListener, set);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public void addContactDetailsParallaxPositionChanged(BaseContactDetailsParallaxImpl.PositionChangedListener positionChangedListener) {
        this.positionChangedListener = positionChangedListener;
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public void addDestroyListener(DestroyListener destroyListener) {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.m29048a(DestroyListener.f25148d, destroyListener);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public void addPauseListener(PauseListener pauseListener) {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.m29048a(PauseListener.f25149a, pauseListener);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public void addResumeListener(ResumeListener resumeListener) {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.m29048a(ResumeListener.f25150d, resumeListener);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public void addThemeChangeListener(ThemeChangedListener themeChangedListener) {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.m29048a(ThemeChangedListener.f23141i, themeChangedListener);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public /* synthetic */ Fragment findFragment(int i) {
        return PresentersContainer._CC.$default$findFragment(this, i);
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public CardArrayRecyclerViewAdapterWithPriority getCardsAdapter() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public PresentersContainer.MODE getContainerMode() {
        return this.mode;
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public Integer getDefaultContactDrawableTintColor() {
        if (this.defaultPhotoColorFilterColor == null) {
            this.defaultPhotoColorFilterColor = Integer.valueOf(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228));
        }
        return this.defaultPhotoColorFilterColor;
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public Integer getDefaultContactResource() {
        return 2131232143;
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public String getDefaultContactResourceUri() {
        return ImageUtils.getResourceUri(getDefaultContactResource().intValue());
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public /* synthetic */ FragmentManager getFragmentManager() {
        return PresentersContainer._CC.$default$getFragmentManager(this);
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public BaseContactDetailsParallaxImpl.PositionChangedListener getPositionChangedListener() {
        return this.positionChangedListener;
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public /* synthetic */ boolean hasIntentExtra(String str) {
        return PresentersContainer._CC.$default$hasIntentExtra(this, str);
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public boolean isClickValid(View view) {
        return true;
    }

    public boolean isDefaultContactResource(String str) {
        return StringUtils.m26042b(str, ImageUtils.getResourceUri(getDefaultContactResource().intValue()));
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(final ContactData contactData, final Set<ContactField> set) {
        if (!this.isDestroyed) {
            MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
            for (final Map.Entry<ContactDataChangeListener, Set<ContactField>> entry : this.contactListeners.entrySet()) {
                if (CollectionUtils.m26070a((Set) set, (Set) entry.getValue()) && getContact() == contactData) {
                    multiTaskRunner.m28974a(new Task() { // from class: com.callapp.contacts.activity.contact.details.PresentersContainerImpl.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            try {
                                long currentTimeMillis = System.currentTimeMillis();
                                ((ContactDataChangeListener) entry.getKey()).onContactChanged(contactData, set);
                                CLog.m27611a(PresentersContainerImpl.class, "mode: " + PresentersContainerImpl.this.getContainerMode() + ", " + ((ContactDataChangeListener) entry.getKey()).toString() + " onContactChanged() took\t" + (System.currentTimeMillis() - currentTimeMillis));
                            } catch (RuntimeException e) {
                                CLog.m27596b(PresentersContainerImpl.class, e);
                            }
                        }
                    });
                }
            }
            multiTaskRunner.m28972c();
        }
    }

    public void onDestroy() {
        this.isDestroyed = true;
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.m29050a();
        }
        this.contactListeners.clear();
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public /* synthetic */ void openNotificationAccsess() {
        PresentersContainer._CC.$default$openNotificationAccsess(this);
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public void removeCallStateListener(CallStateListener callStateListener) {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.m29045b(CallStateListener.f26070d, callStateListener);
        }
    }

    public void removeContactChangedListener(ContactDataChangeListener contactDataChangeListener) {
        this.contactListeners.remove(contactDataChangeListener);
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public void removeThemeChangeListener(ThemeChangedListener themeChangedListener) {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.m29045b(ThemeChangedListener.f23141i, themeChangedListener);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public void safeRunOnUIThread(Runnable runnable) {
        CallAppApplication.get().m31858d(runnable);
    }

    @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
    public /* synthetic */ void scrollToPosition(int i) {
        PresentersContainer._CC.$default$scrollToPosition(this, i);
    }
}
