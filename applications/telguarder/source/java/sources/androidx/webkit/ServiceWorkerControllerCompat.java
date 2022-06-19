package androidx.webkit;

import androidx.webkit.internal.ServiceWorkerControllerImpl;
/* loaded from: classes-dex2jar.jar:androidx/webkit/ServiceWorkerControllerCompat.class */
public abstract class ServiceWorkerControllerCompat {

    /* loaded from: classes-dex2jar.jar:androidx/webkit/ServiceWorkerControllerCompat$LAZY_HOLDER.class */
    private static class LAZY_HOLDER {
        static final ServiceWorkerControllerCompat INSTANCE = new ServiceWorkerControllerImpl();

        private LAZY_HOLDER() {
        }
    }

    public static ServiceWorkerControllerCompat getInstance() {
        return LAZY_HOLDER.INSTANCE;
    }

    public abstract ServiceWorkerWebSettingsCompat getServiceWorkerWebSettings();

    public abstract void setServiceWorkerClient(ServiceWorkerClientCompat serviceWorkerClientCompat);
}
