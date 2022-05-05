package com.privacystar.core.p011ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.p004v7.app.AppCompatActivity;
import android.view.View;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import java.util.HashMap;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\u0007\u001a\u00020\u0004H\u0002¨\u0006\b"}, m254d2 = {"Lcom/privacystar/core/ui/SplashActivity;", "Landroid/support/v7/app/AppCompatActivity;", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "transitionActivity", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.SplashActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/SplashActivity.class */
public final class SplashActivity extends AppCompatActivity {
    private HashMap _$_findViewCache;

    /* JADX INFO: Access modifiers changed from: private */
    public final void transitionActivity() {
        startActivity(new Intent(this, IntroActivity.class));
        Timber.m37d("First activity loaded, Splash Screen transitioning.", new Object[0]);
        finish();
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.INSTANCE.fire(Event.WelcomeLogoSplashPageView.INSTANCE);
        new Handler().postDelayed(new Runnable() { // from class: com.privacystar.core.ui.SplashActivity$onCreate$transition$1
            @Override // java.lang.Runnable
            public final void run() {
                SplashActivity.this.transitionActivity();
            }
        }, 2000L);
    }
}
