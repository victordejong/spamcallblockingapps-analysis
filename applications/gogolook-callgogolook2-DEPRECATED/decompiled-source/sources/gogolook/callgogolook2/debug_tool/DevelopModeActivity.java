package gogolook.callgogolook2.debug_tool;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import gogolook.callgogolook2.debug_tool.module.BaseActivity;
import kotlin.Metadata;
import p459j.p460a.p554q.p557e.C13371a;
import p459j.p460a.p554q.p559g.AbstractC13378a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\n\u001a\u00020\u0006H\u0016¨\u0006\u000b"}, m815d2 = {"Lgogolook/callgogolook2/debug_tool/DevelopModeActivity;", "Lgogolook/callgogolook2/debug_tool/module/BaseActivity;", "Lgogolook/callgogolook2/debug_tool/presenter/DevelopModePresenter;", "Lgogolook/callgogolook2/debug_tool/view/IDevelopModeView;", "()V", "initViews", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setupSharedPreferencesDevTool", "whoscall_core_debugTool_release"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/DevelopModeActivity.class */
public final class DevelopModeActivity extends BaseActivity<C13371a> implements AbstractC13378a {

    /* renamed from: gogolook.callgogolook2.debug_tool.DevelopModeActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/debug_tool/DevelopModeActivity$a.class */
    public static final class View$OnClickListenerC4451a implements View.OnClickListener {
        public View$OnClickListenerC4451a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DevelopModeActivity.this.m28609D().m4118b();
        }
    }

    /* renamed from: E */
    public void m28614E() {
        setContentView(R$layout.activity_core_dev_main);
        m28613F();
    }

    /* renamed from: F */
    public void m28613F() {
        ((Button) findViewById(R$id.btn_shared_preferences)).setOnClickListener(new View$OnClickListenerC4451a());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m28608a(new C13371a(this));
        m28614E();
    }
}
