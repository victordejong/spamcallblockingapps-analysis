package p1727n3.p1859r.p1860a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: n3.r.a.u */
/* loaded from: classes-dex2jar.jar:n3/r/a/u.class */
public abstract class AbstractC26959u<E> extends AbstractC26955r {

    /* renamed from: a */
    public final Activity f75443a;

    /* renamed from: b */
    public final Context f75444b;

    /* renamed from: c */
    public final Handler f75445c;

    /* renamed from: d */
    public final FragmentManager f75446d = new C26974x();

    public AbstractC26959u(l lVar) {
        Handler handler = new Handler();
        this.f75443a = lVar;
        MediaSessionCompat.m43196u(lVar, "context == null");
        this.f75444b = lVar;
        MediaSessionCompat.m43196u(handler, "handler == null");
        this.f75445c = handler;
    }

    /* renamed from: d */
    public abstract void m1068d(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: e */
    public abstract E m1067e();

    /* renamed from: f */
    public abstract LayoutInflater m1066f();

    /* renamed from: g */
    public abstract boolean m1065g(Fragment fragment);

    /* renamed from: h */
    public abstract boolean m1064h(String str);

    /* renamed from: i */
    public abstract void m1063i();
}
