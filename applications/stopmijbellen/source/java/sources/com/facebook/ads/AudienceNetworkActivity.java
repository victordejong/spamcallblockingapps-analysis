package com.facebook.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.annotation.Keep;
import com.facebook.ads.internal.api.AudienceNetworkActivityApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
@SuppressLint({"MissingSuperCall"})
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AudienceNetworkActivity.class */
public class AudienceNetworkActivity extends Activity {
    private AudienceNetworkActivityApi mAudienceNetworkActivityApi;
    private final AudienceNetworkActivityApi mAudienceNetworkActivityParentApi = new C1611a();

    /* renamed from: com.facebook.ads.AudienceNetworkActivity$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/AudienceNetworkActivity$a.class */
    public class C1611a implements AudienceNetworkActivityApi {
        public C1611a() {
            AudienceNetworkActivity.this = r4;
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void finish(int i) {
            AudienceNetworkActivity.super.finish();
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void onActivityResult(int i, int i2, Intent intent) {
            AudienceNetworkActivity.super.onActivityResult(i, i2, intent);
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void onBackPressed() {
            AudienceNetworkActivity.super.onBackPressed();
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void onConfigurationChanged(Configuration configuration) {
            AudienceNetworkActivity.super.onConfigurationChanged(configuration);
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void onCreate(Bundle bundle) {
            AudienceNetworkActivity.super.onCreate(bundle);
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void onDestroy() {
            AudienceNetworkActivity.super.onDestroy();
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void onPause() {
            AudienceNetworkActivity.super.onPause();
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void onResume() {
            AudienceNetworkActivity.super.onResume();
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void onSaveInstanceState(Bundle bundle) {
            AudienceNetworkActivity.super.onSaveInstanceState(bundle);
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void onStart() {
            AudienceNetworkActivity.super.onStart();
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public void onStop() {
            AudienceNetworkActivity.super.onStop();
        }

        @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return AudienceNetworkActivity.super.onTouchEvent(motionEvent);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        this.mAudienceNetworkActivityApi.finish(0);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mAudienceNetworkActivityApi.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.mAudienceNetworkActivityApi.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mAudienceNetworkActivityApi.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        AudienceNetworkActivityApi createAudienceNetworkActivity = DynamicLoaderFactory.makeLoader(this).createAudienceNetworkActivity(this, this.mAudienceNetworkActivityParentApi);
        this.mAudienceNetworkActivityApi = createAudienceNetworkActivity;
        createAudienceNetworkActivity.onCreate(bundle);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.mAudienceNetworkActivityApi.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        this.mAudienceNetworkActivityApi.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        this.mAudienceNetworkActivityApi.onResume();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.mAudienceNetworkActivityApi.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onStart() {
        this.mAudienceNetworkActivityApi.onStart();
    }

    @Override // android.app.Activity
    public void onStop() {
        this.mAudienceNetworkActivityApi.onStop();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mAudienceNetworkActivityApi.onTouchEvent(motionEvent);
    }
}
