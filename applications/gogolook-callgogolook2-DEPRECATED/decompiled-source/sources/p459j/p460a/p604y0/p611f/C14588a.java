package p459j.p460a.p604y0.p611f;

import android.app.Application;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProviders;
import androidx.media2.exoplayer.external.util.MimeTypes;
import p459j.p460a.p604y0.C14470b;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.y0.f.a */
/* loaded from: classes3-dex2jar.jar:j/a/y0/f/a.class */
public final class C14588a {
    /* renamed from: a */
    public static final <T extends ViewModel> T m1053a(AppCompatActivity appCompatActivity, Class<T> cls) {
        C15149k.m377b(appCompatActivity, "receiver$0");
        C15149k.m377b(cls, "viewModelClass");
        C14470b.C14471a aVar = C14470b.f32372d;
        Application application = appCompatActivity.getApplication();
        C15149k.m383a((Object) application, MimeTypes.BASE_TYPE_APPLICATION);
        T t = (T) ViewModelProviders.m37502of(appCompatActivity, aVar.m1268a(application)).get(cls);
        C15149k.m383a((Object) t, "ViewModelProviders.of(th…ion)).get(viewModelClass)");
        return t;
    }

    /* renamed from: a */
    public static final void m1054a(AppCompatActivity appCompatActivity, int i, Fragment fragment) {
        C15149k.m377b(appCompatActivity, "receiver$0");
        C15149k.m377b(fragment, "fragment");
        FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
        C15149k.m383a((Object) supportFragmentManager, "supportFragmentManager");
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        beginTransaction.setCustomAnimations(17432576, 17432577);
        beginTransaction.replace(i, fragment);
        beginTransaction.commitAllowingStateLoss();
    }
}
