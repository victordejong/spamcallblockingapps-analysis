package com.twitter.sdk.android.tweetcomposer;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.sdk.android.core.C17292t;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.tweetcomposer.C17306c;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/ComposerActivity.class */
public class ComposerActivity extends Activity {

    /* renamed from: a */
    private C17300a f61089a;

    /* renamed from: com.twitter.sdk.android.tweetcomposer.ComposerActivity$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/ComposerActivity$a.class */
    public interface AbstractC17294a {
        /* renamed from: a */
        void mo5615a();
    }

    /* renamed from: com.twitter.sdk.android.tweetcomposer.ComposerActivity$b */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/ComposerActivity$b.class */
    final class C17295b implements AbstractC17294a {
        C17295b() {
            ComposerActivity.this = r4;
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerActivity.AbstractC17294a
        /* renamed from: a */
        public final void mo5615a() {
            ComposerActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        this.f61089a.m5603a();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        C17292t c17292t = new C17292t((TwitterAuthToken) intent.getParcelableExtra("EXTRA_USER_TOKEN"), -1L, "");
        Uri uri = (Uri) intent.getParcelableExtra("EXTRA_IMAGE_URI");
        String stringExtra = intent.getStringExtra("EXTRA_TEXT");
        String stringExtra2 = intent.getStringExtra("EXTRA_HASHTAGS");
        setTheme(intent.getIntExtra("EXTRA_THEME", C17306c.C17310d.ComposerLight));
        setContentView(C17306c.C17309c.tw__activity_composer);
        this.f61089a = new C17300a((ComposerView) findViewById(C17306c.C17308b.tw__composer_view), c17292t, uri, stringExtra, stringExtra2, new C17295b());
    }
}
