package gogolook.callgogolook2.app;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import gogolook.callgogolook2.util.control.VersionManager;
import kotlin.Metadata;
import p459j.p460a.p518j.AbstractC12474a;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13937c3;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.p590x4.C14260e;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\b&\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0015J\b\u0010\u0013\u001a\u00020\u000bH\u0014J\b\u0010\u0014\u001a\u00020\u000bH\u0015J\b\u0010\u0015\u001a\u00020\u000bH\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\rH\u0017J\b\u0010\u001a\u001a\u00020\u000bH\u0002J\b\u0010\u001b\u001a\u00020\u000bH\u0002J\b\u0010\u001c\u001a\u00020\u0017H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0084.¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u001d"}, m815d2 = {"Lgogolook/callgogolook2/app/WhoscallCompatActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lgogolook/callgogolook2/app/ActivityNavigator;", "()V", "mContext", "Landroid/content/Context;", "getMContext", "()Landroid/content/Context;", "setMContext", "(Landroid/content/Context;)V", "doNavigation", "", "getStatusBarColor", "", "getWhoscallActionBar", "Landroidx/appcompat/app/ActionBar;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "onStart", "onStop", "onSupportNavigateUp", "", "setContentView", "layoutResId", "setSupperContentView", "setupSupportActionBar", "shouldNavigate", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/app/WhoscallCompatActivity.class */
public abstract class WhoscallCompatActivity extends AppCompatActivity implements AbstractC12474a {

    /* renamed from: a */
    public Context f10655a;

    /* renamed from: D */
    public void m28677D() {
        C13937c3.m3014a(this);
        finish();
    }

    /* renamed from: E */
    public int m28676E() {
        return getResources().getColor(2131100101);
    }

    /* renamed from: F */
    public final ActionBar m28675F() {
        return getSupportActionBar();
    }

    /* renamed from: G */
    public final void m28674G() {
        super.setContentView(2131558435);
    }

    /* renamed from: H */
    public final void m28673H() {
        setSupportActionBar((Toolbar) findViewById(2131363304));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
    }

    /* renamed from: I */
    public boolean m28672I() {
        return VersionManager.m25991e(4) || C13878a3.m3257E();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @CallSuper
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f10655a = this;
        m28674G();
        m28673H();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (m28672I()) {
            m28677D();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    @CallSuper
    public void onStart() {
        super.onStart();
        C14123p4.m2429b(getWindow(), m28676E());
        C14260e.m2001a(this, getClass());
        C14260e.m1993d(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    @CallSuper
    public void onStop() {
        super.onStop();
        C14260e.m1995c(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    @CallSuper
    public void setContentView(int i) {
        ViewGroup viewGroup = (ViewGroup) findViewById(2131362300);
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            viewGroup.addView(getLayoutInflater().inflate(i, viewGroup, false), new FrameLayout.LayoutParams(-1, -1));
        }
    }
}
