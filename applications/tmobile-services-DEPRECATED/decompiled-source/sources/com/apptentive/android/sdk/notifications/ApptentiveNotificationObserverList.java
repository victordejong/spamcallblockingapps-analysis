package com.apptentive.android.sdk.notifications;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.util.ObjectUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList.class */
class ApptentiveNotificationObserverList {
    private final List<ApptentiveNotificationObserver> observers = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference.class */
    public static class ObserverWeakReference extends WeakReference<ApptentiveNotificationObserver> implements ApptentiveNotificationObserver {
        ObserverWeakReference(ApptentiveNotificationObserver apptentiveNotificationObserver) {
            super(apptentiveNotificationObserver);
        }

        boolean isReferenceLost() {
            return get() == null;
        }

        @Override // com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
        public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
            ApptentiveNotificationObserver apptentiveNotificationObserver = get();
            if (apptentiveNotificationObserver != null) {
                apptentiveNotificationObserver.onReceiveNotification(apptentiveNotification);
            }
        }
    }

    private boolean contains(ApptentiveNotificationObserver apptentiveNotificationObserver) {
        return indexOf(apptentiveNotificationObserver) != -1;
    }

    private int indexOf(ApptentiveNotificationObserver apptentiveNotificationObserver) {
        for (int i = 0; i < this.observers.size(); i++) {
            ApptentiveNotificationObserver apptentiveNotificationObserver2 = this.observers.get(i);
            if (apptentiveNotificationObserver2 == apptentiveNotificationObserver) {
                return i;
            }
            ObserverWeakReference observerWeakReference = (ObserverWeakReference) ObjectUtils.m15631as(apptentiveNotificationObserver2, ObserverWeakReference.class);
            if (observerWeakReference != null && observerWeakReference.get() == apptentiveNotificationObserver) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean addObserver(ApptentiveNotificationObserver apptentiveNotificationObserver, boolean z) {
        if (apptentiveNotificationObserver == null) {
            throw new IllegalArgumentException("Observer is null");
        } else if (contains(apptentiveNotificationObserver)) {
            return false;
        } else {
            List<ApptentiveNotificationObserver> list = this.observers;
            ApptentiveNotificationObserver apptentiveNotificationObserver2 = apptentiveNotificationObserver;
            if (z) {
                apptentiveNotificationObserver2 = new ObserverWeakReference(apptentiveNotificationObserver);
            }
            list.add(apptentiveNotificationObserver2);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyObservers(ApptentiveNotification apptentiveNotification) {
        ArrayList arrayList = new ArrayList(this.observers.size());
        boolean z = false;
        for (int i = 0; i < this.observers.size(); i++) {
            ApptentiveNotificationObserver apptentiveNotificationObserver = this.observers.get(i);
            ObserverWeakReference observerWeakReference = (ObserverWeakReference) ObjectUtils.m15631as(apptentiveNotificationObserver, ObserverWeakReference.class);
            if (observerWeakReference == null || !observerWeakReference.isReferenceLost()) {
                arrayList.add(apptentiveNotificationObserver);
            } else {
                z = true;
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            try {
                ((ApptentiveNotificationObserver) arrayList.get(i2)).onReceiveNotification(apptentiveNotification);
            } catch (Exception e) {
                ApptentiveLog.m15641e(e, "Exception while posting notification: %s", apptentiveNotification);
                ErrorMetrics.logException(e);
            }
        }
        if (z) {
            for (int size = this.observers.size() - 1; size >= 0; size--) {
                ObserverWeakReference observerWeakReference2 = (ObserverWeakReference) ObjectUtils.m15631as(this.observers.get(size), ObserverWeakReference.class);
                if (observerWeakReference2 != null && observerWeakReference2.isReferenceLost()) {
                    this.observers.remove(size);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean removeObserver(ApptentiveNotificationObserver apptentiveNotificationObserver) {
        int indexOf = indexOf(apptentiveNotificationObserver);
        if (indexOf == -1) {
            return false;
        }
        this.observers.remove(indexOf);
        return true;
    }
}
