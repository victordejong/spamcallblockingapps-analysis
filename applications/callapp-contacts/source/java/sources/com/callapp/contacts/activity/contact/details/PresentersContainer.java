package com.callapp.contacts.activity.contact.details;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/PresentersContainer.class */
public interface PresentersContainer {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/PresentersContainer$MODE.class */
    public enum MODE {
        EDIT_USER_PROFILE_ACTIVITY,
        CONTACT_DETAILS_SCREEN,
        DURING_CALL_OVERLAY,
        CLIPBOARD_AUTO_SEARCH_OVERLAY,
        INCOMING_SMS_OVERLAY,
        POST_CALL_SCREEN,
        CONTACT_LIST,
        CALL_RECORDER_POPUP,
        INCOMING_CALL_OVERLAY,
        CONFERENCE_SCREEN,
        RECORDER_TEST_SCREEN,
        MISSED_CALL,
        SUMMERY_MISSED_CALL,
        INSIGHTS,
        STATISTICS
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/PresentersContainer$_CC.class */
    public final /* synthetic */ class _CC {
        public static boolean $default$a(PresentersContainer presentersContainer, ContactData contactData) {
            if (presentersContainer.hasIntentExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL)) {
                return true;
            }
            return contactData != null && contactData.isIncognito();
        }

        public static Fragment $default$findFragment(PresentersContainer presentersContainer, int i) {
            return null;
        }

        public static FragmentManager $default$getFragmentManager(PresentersContainer presentersContainer) {
            return null;
        }

        public static boolean $default$hasIntentExtra(PresentersContainer presentersContainer, String str) {
            return false;
        }

        public static void $default$openNotificationAccsess(PresentersContainer presentersContainer) {
        }

        public static void $default$scrollToPosition(PresentersContainer presentersContainer, int i) {
        }
    }

    /* renamed from: a */
    boolean mo30920a(ContactData contactData);

    void addCallStateListener(CallStateListener callStateListener);

    void addContactChangedListener(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set);

    void addContactDetailsParallaxPositionChanged(BaseContactDetailsParallaxImpl.PositionChangedListener positionChangedListener);

    void addDestroyListener(DestroyListener destroyListener);

    void addPauseListener(PauseListener pauseListener);

    void addResumeListener(ResumeListener resumeListener);

    void addThemeChangeListener(ThemeChangedListener themeChangedListener);

    Fragment findFragment(int i);

    <V extends View> V findViewById(int i);

    void finish();

    CardArrayRecyclerViewAdapterWithPriority getCardsAdapter();

    ContactData getContact();

    MODE getContainerMode();

    Integer getDefaultContactDrawableTintColor();

    Integer getDefaultContactResource();

    String getDefaultContactResourceUri();

    EventBus getEventBus();

    FragmentManager getFragmentManager();

    BaseContactDetailsParallaxImpl.PositionChangedListener getPositionChangedListener();

    Context getRealContext();

    boolean hasIntentExtra(String str);

    boolean isClickValid(View view);

    boolean isFinishing();

    void openNotificationAccsess();

    void removeCallStateListener(CallStateListener callStateListener);

    void removeThemeChangeListener(ThemeChangedListener themeChangedListener);

    void safeRunOnUIThread(Runnable runnable);

    void scrollToPosition(int i);
}
