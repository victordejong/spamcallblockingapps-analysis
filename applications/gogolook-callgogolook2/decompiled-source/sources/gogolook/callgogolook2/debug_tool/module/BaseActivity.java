package gogolook.callgogolook2.debug_tool.module;

import androidx.appcompat.app.AppCompatActivity;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p459j.p460a.p554q.p556d.AbstractC13369c;
import p459j.p460a.p554q.p556d.AbstractC13370d;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\b&\u0018��*\b\b��\u0010\u0001*\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0014J\b\u0010\u0011\u001a\u00020\u0010H\u0014J\u0015\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u000bR&\u0010\u0007\u001a\u00028��2\u0006\u0010\u0006\u001a\u00028��@BX\u0086.¢\u0006\u0010\n\u0002\u0010\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/debug_tool/module/BaseActivity;", ExifInterface.GPS_DIRECTION_TRUE, "Lgogolook/callgogolook2/debug_tool/module/IBasePresenter;", "Landroidx/appcompat/app/AppCompatActivity;", "Lgogolook/callgogolook2/debug_tool/module/IBaseView;", "()V", "<set-?>", "basePresenter", "getBasePresenter", "()Lgogolook/callgogolook2/debug_tool/module/IBasePresenter;", "setBasePresenter", "(Lgogolook/callgogolook2/debug_tool/module/IBasePresenter;)V", "Lgogolook/callgogolook2/debug_tool/module/IBasePresenter;", "getContext", "Landroid/content/Context;", "onStart", "", "onStop", "setPresenter", "presenter", "whoscall_core_debugTool_release"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/module/BaseActivity.class */
public abstract class BaseActivity<T extends AbstractC13369c> extends AppCompatActivity implements AbstractC13370d<T> {

    /* renamed from: a */
    public T f10751a;

    /* renamed from: D */
    public final T m28609D() {
        T t = this.f10751a;
        if (t != null) {
            return t;
        }
        C15149k.m373d("basePresenter");
        throw null;
    }

    /* renamed from: a */
    public void m28608a(T t) {
        C15149k.m377b(t, "presenter");
        this.f10751a = t;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        T t = this.f10751a;
        if (t != null) {
            t.start();
        } else {
            C15149k.m373d("basePresenter");
            throw null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        T t = this.f10751a;
        if (t != null) {
            t.stop();
        } else {
            C15149k.m373d("basePresenter");
            throw null;
        }
    }
}
