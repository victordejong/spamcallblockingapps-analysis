package androidx.lifecycle;

import android.app.Application;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelProvider.class */
public class ViewModelProvider {

    /* renamed from: a */
    private final Factory f4110a;

    /* renamed from: b */
    private final ViewModelStore f4111b;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelProvider$AndroidViewModelFactory.class */
    public static class AndroidViewModelFactory extends NewInstanceFactory {

        /* renamed from: c */
        private static AndroidViewModelFactory f4112c;

        /* renamed from: b */
        private Application f4113b;

        public AndroidViewModelFactory(@NonNull Application application) {
            this.f4113b = application;
        }

        @NonNull
        /* renamed from: c */
        public static AndroidViewModelFactory m18143c(@NonNull Application application) {
            if (f4112c == null) {
                f4112c = new AndroidViewModelFactory(application);
            }
            return f4112c;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        /* renamed from: a */
        public <T extends ViewModel> T mo18109a(@NonNull Class<T> cls) {
            if (!AndroidViewModel.class.isAssignableFrom(cls)) {
                return (T) super.mo18109a(cls);
            }
            try {
                return cls.getConstructor(Application.class).newInstance(this.f4113b);
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("Cannot create an instance of " + cls, e4);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelProvider$Factory.class */
    public interface Factory {
        @NonNull
        /* renamed from: a */
        <T extends ViewModel> T mo18109a(@NonNull Class<T> cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelProvider$KeyedFactory.class */
    public static abstract class KeyedFactory extends OnRequeryFactory implements Factory {
        @NonNull
        /* renamed from: a */
        public <T extends ViewModel> T mo18109a(@NonNull Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        @NonNull
        /* renamed from: c */
        public abstract <T extends ViewModel> T mo18142c(@NonNull String str, @NonNull Class<T> cls);
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelProvider$NewInstanceFactory.class */
    public static class NewInstanceFactory implements Factory {

        /* renamed from: a */
        private static NewInstanceFactory f4114a;

        @NonNull
        /* renamed from: b */
        static NewInstanceFactory m18141b() {
            if (f4114a == null) {
                f4114a = new NewInstanceFactory();
            }
            return f4114a;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        /* renamed from: a */
        public <T extends ViewModel> T mo18109a(@NonNull Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelProvider$OnRequeryFactory.class */
    public static class OnRequeryFactory {
        OnRequeryFactory() {
        }

        /* renamed from: b */
        void mo18140b(@NonNull ViewModel viewModel) {
        }
    }

    public ViewModelProvider(@NonNull ViewModelStore viewModelStore, @NonNull Factory factory) {
        this.f4110a = factory;
        this.f4111b = viewModelStore;
    }

    public ViewModelProvider(@NonNull ViewModelStoreOwner viewModelStoreOwner) {
        this(viewModelStoreOwner.getViewModelStore(), viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelProviderFactory() : NewInstanceFactory.m18141b());
    }

    @NonNull
    @MainThread
    /* renamed from: a */
    public <T extends ViewModel> T m18145a(@NonNull Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m18144b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @NonNull
    @MainThread
    /* renamed from: b */
    public <T extends ViewModel> T m18144b(@NonNull String str, @NonNull Class<T> cls) {
        T t = (T) this.f4111b.m18137b(str);
        if (cls.isInstance(t)) {
            Factory factory = this.f4110a;
            if (factory instanceof OnRequeryFactory) {
                ((OnRequeryFactory) factory).mo18140b(t);
            }
            return t;
        }
        Factory factory2 = this.f4110a;
        T t2 = factory2 instanceof KeyedFactory ? (T) ((KeyedFactory) factory2).mo18142c(str, cls) : (T) factory2.mo18109a(cls);
        this.f4111b.m18135d(str, t2);
        return t2;
    }
}
