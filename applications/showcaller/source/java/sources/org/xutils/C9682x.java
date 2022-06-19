package org.xutils;

import android.app.Application;
import android.content.Context;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import org.xutils.DbManager;
import org.xutils.common.TaskController;
import org.xutils.common.task.TaskControllerImpl;
import org.xutils.http.HttpManagerImpl;
import org.xutils.image.ImageManagerImpl;
import org.xutils.p343db.DbManagerImpl;
import org.xutils.view.ViewInjectorImpl;
/* renamed from: org.xutils.x */
/* loaded from: classes2-dex2jar.jar:org/xutils/x.class */
public final class C9682x {

    /* renamed from: org.xutils.x$Ext */
    /* loaded from: classes2-dex2jar.jar:org/xutils/x$Ext.class */
    public static class Ext {

        /* renamed from: a */
        private static boolean f40895a;

        /* renamed from: b */
        private static Application f40896b;

        /* renamed from: c */
        private static TaskController f40897c;

        /* renamed from: d */
        private static HttpManager f40898d;

        /* renamed from: e */
        private static ImageManager f40899e;

        /* renamed from: f */
        private static ViewInjector f40900f;

        private Ext() {
        }

        public static void init(Application application) {
            TaskControllerImpl.registerInstance();
            if (f40896b == null) {
                f40896b = application;
            }
        }

        public static void setDebug(boolean z) {
            f40895a = z;
        }

        public static void setDefaultHostnameVerifier(HostnameVerifier hostnameVerifier) {
            HttpsURLConnection.setDefaultHostnameVerifier(hostnameVerifier);
        }

        public static void setHttpManager(HttpManager httpManager) {
            f40898d = httpManager;
        }

        public static void setImageManager(ImageManager imageManager) {
            f40899e = imageManager;
        }

        public static void setTaskController(TaskController taskController) {
            if (f40897c == null) {
                f40897c = taskController;
            }
        }

        public static void setViewInjector(ViewInjector viewInjector) {
            f40900f = viewInjector;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.xutils.x$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/x$a.class */
    public static class ApplicationC9683a extends Application {
        public ApplicationC9683a(Context context) {
            attachBaseContext(context);
        }
    }

    private C9682x() {
    }

    public static Application app() {
        if (Ext.f40896b == null) {
            try {
                Application unused = Ext.f40896b = new ApplicationC9683a((Context) Class.forName("com.android.layoutlib.bridge.impl.RenderAction").getDeclaredMethod("getCurrentContext", new Class[0]).invoke(null, new Object[0]));
            } catch (Throwable th) {
                throw new RuntimeException("please invoke x.Ext.init(app) on Application#onCreate() and register your Application in manifest.");
            }
        }
        return Ext.f40896b;
    }

    public static DbManager getDb(DbManager.DaoConfig daoConfig) {
        return DbManagerImpl.getInstance(daoConfig);
    }

    public static HttpManager http() {
        if (Ext.f40898d == null) {
            HttpManagerImpl.registerInstance();
        }
        return Ext.f40898d;
    }

    public static ImageManager image() {
        if (Ext.f40899e == null) {
            ImageManagerImpl.registerInstance();
        }
        return Ext.f40899e;
    }

    public static boolean isDebug() {
        return Ext.f40895a;
    }

    public static TaskController task() {
        return Ext.f40897c;
    }

    public static ViewInjector view() {
        if (Ext.f40900f == null) {
            ViewInjectorImpl.registerInstance();
        }
        return Ext.f40900f;
    }
}
