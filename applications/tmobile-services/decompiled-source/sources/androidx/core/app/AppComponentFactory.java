package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/core/app/AppComponentFactory.class */
public class AppComponentFactory extends android.app.AppComponentFactory {
    @NonNull
    /* renamed from: a */
    public Activity m19841a(@NonNull ClassLoader classLoader, @NonNull String str, @Nullable Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        try {
            return (Activity) Class.forName(str, false, classLoader).asSubclass(Activity.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException("Couldn't call constructor", e);
        }
    }

    @NonNull
    /* renamed from: b */
    public Application m19840b(@NonNull ClassLoader classLoader, @NonNull String str) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        try {
            return (Application) Class.forName(str, false, classLoader).asSubclass(Application.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException("Couldn't call constructor", e);
        }
    }

    @NonNull
    /* renamed from: c */
    public ContentProvider m19839c(@NonNull ClassLoader classLoader, @NonNull String str) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        try {
            return (ContentProvider) Class.forName(str, false, classLoader).asSubclass(ContentProvider.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException("Couldn't call constructor", e);
        }
    }

    @NonNull
    /* renamed from: d */
    public BroadcastReceiver m19838d(@NonNull ClassLoader classLoader, @NonNull String str, @Nullable Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        try {
            return (BroadcastReceiver) Class.forName(str, false, classLoader).asSubclass(BroadcastReceiver.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException("Couldn't call constructor", e);
        }
    }

    @NonNull
    /* renamed from: e */
    public Service m19837e(@NonNull ClassLoader classLoader, @NonNull String str, @Nullable Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        try {
            return (Service) Class.forName(str, false, classLoader).asSubclass(Service.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException("Couldn't call constructor", e);
        }
    }

    @Override // android.app.AppComponentFactory
    @NonNull
    public final Activity instantiateActivity(@NonNull ClassLoader classLoader, @NonNull String str, @Nullable Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        return (Activity) CoreComponentFactory.m19830a(m19841a(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    @NonNull
    public final Application instantiateApplication(@NonNull ClassLoader classLoader, @NonNull String str) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        return (Application) CoreComponentFactory.m19830a(m19840b(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    @NonNull
    public final ContentProvider instantiateProvider(@NonNull ClassLoader classLoader, @NonNull String str) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        return (ContentProvider) CoreComponentFactory.m19830a(m19839c(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    @NonNull
    public final BroadcastReceiver instantiateReceiver(@NonNull ClassLoader classLoader, @NonNull String str, @Nullable Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        return (BroadcastReceiver) CoreComponentFactory.m19830a(m19838d(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    @NonNull
    public final Service instantiateService(@NonNull ClassLoader classLoader, @NonNull String str, @Nullable Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        return (Service) CoreComponentFactory.m19830a(m19837e(classLoader, str, intent));
    }
}
