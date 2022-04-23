package p131c.p396i.p397a.p404g;

import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import java.util.HashMap;
/* renamed from: c.i.a.g.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/g/b.class */
public class C6541b implements Handler.Callback {

    /* renamed from: a */
    public final HashMap<FragmentManager, FragmentC6540a> f20307a;

    /* renamed from: b */
    public final Handler f20308b;

    /* renamed from: c.i.a.g.b$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/g/b$b.class */
    public static final class C6543b {

        /* renamed from: a */
        public static final C6541b f20309a = new C6541b();
    }

    public C6541b() {
        this.f20307a = new HashMap<>();
        this.f20308b = new Handler(this);
    }

    /* renamed from: a */
    public static C6541b m20556a() {
        return C6543b.f20309a;
    }

    /* renamed from: b */
    public static boolean m20553b(Activity activity) {
        if (activity instanceof FragmentActivity) {
            return ((FragmentActivity) activity).m38334g().mo34813e();
        }
        if (Build.VERSION.SDK_INT >= 17) {
            return activity.isDestroyed();
        }
        return true;
    }

    /* renamed from: a */
    public C6547d m20555a(Activity activity) {
        if (m20553b(activity)) {
            return null;
        }
        return m20554a(activity.getFragmentManager());
    }

    /* renamed from: a */
    public final C6547d m20554a(FragmentManager fragmentManager) {
        FragmentC6540a aVar = (FragmentC6540a) fragmentManager.findFragmentByTag("lifecycle_fragment_tag");
        FragmentC6540a aVar2 = aVar;
        if (aVar == null) {
            FragmentC6540a aVar3 = this.f20307a.get(fragmentManager);
            aVar2 = aVar3;
            if (aVar3 == null) {
                aVar2 = new FragmentC6540a();
                this.f20307a.put(fragmentManager, aVar2);
                fragmentManager.beginTransaction().add(aVar2, "lifecycle_fragment_tag").commitAllowingStateLoss();
                this.f20308b.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return aVar2.m20557a();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        FragmentC6540a aVar;
        boolean z = true;
        if (message.what == 1) {
            aVar = this.f20307a.remove((FragmentManager) message.obj);
        } else {
            z = false;
            aVar = null;
        }
        if (z && aVar == null) {
            Log.w("lifecycle", "注意：移除指定的生命周期Fragment失败");
        }
        return z;
    }
}
