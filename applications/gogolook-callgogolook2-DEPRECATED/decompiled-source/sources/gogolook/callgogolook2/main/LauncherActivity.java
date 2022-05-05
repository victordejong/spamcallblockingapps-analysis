package gogolook.callgogolook2.main;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.mopub.common.Constants;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14216x2;
import p459j.p460a.p582w0.p590x4.C14289m;
import p626l.C14989s;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0002¨\u0006\b"}, m815d2 = {"Lgogolook/callgogolook2/main/LauncherActivity;", "Lgogolook/callgogolook2/main/MainActivity;", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "trackActiveLauncher", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/LauncherActivity.class */
public final class LauncherActivity extends MainActivity {

    /* renamed from: v */
    public HashMap f11054v;

    /* renamed from: gogolook.callgogolook2.main.LauncherActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/LauncherActivity$a.class */
    public static final class C4577a<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public static final C4577a f11055a = new C4577a();

        /* renamed from: a */
        public final void call(SingleSubscriber<? super C14989s> singleSubscriber) {
            C14289m.m1870c();
            singleSubscriber.onSuccess(C14989s.f33022a);
        }
    }

    /* renamed from: X */
    public final void m27888X() {
        Single.create(C4577a.f11055a).subscribeOn(C14174u.m2303a()).subscribe();
    }

    @Override // gogolook.callgogolook2.main.MainActivity
    /* renamed from: e */
    public View mo27842e(int i) {
        if (this.f11054v == null) {
            this.f11054v = new HashMap();
        }
        View view = (View) this.f11054v.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f11054v.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // gogolook.callgogolook2.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (!isTaskRoot() && getIntent().hasCategory("android.intent.category.LAUNCHER")) {
            Intent intent = getIntent();
            C15149k.m383a((Object) intent, Constants.INTENT_SCHEME);
            if (C15149k.m384a((Object) intent.getAction(), (Object) "android.intent.action.MAIN")) {
                m27864a(bundle);
                finish();
                return;
            }
        }
        C14216x2.m2208a("MainA:onCreate:trackActiveLauncher:+");
        m27888X();
        C14216x2.m2208a("MainA:onCreate:trackActiveLauncher:-");
        super.onCreate(bundle);
    }
}
