package com.twitter.sdk.android.tweetcomposer;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.t;
import com.twitter.sdk.android.tweetcomposer.c;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/ComposerActivity.class */
public class ComposerActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private com.twitter.sdk.android.tweetcomposer.a f35215a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/ComposerActivity$a.class */
    public interface a {
        void a();
    }

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/ComposerActivity$b.class */
    final class b implements a {
        b() {
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerActivity.a
        public final void a() {
            ComposerActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        this.f35215a.a();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        t tVar = new t((TwitterAuthToken) intent.getParcelableExtra("EXTRA_USER_TOKEN"), -1L, "");
        Uri uri = (Uri) intent.getParcelableExtra("EXTRA_IMAGE_URI");
        String stringExtra = intent.getStringExtra("EXTRA_TEXT");
        String stringExtra2 = intent.getStringExtra("EXTRA_HASHTAGS");
        setTheme(intent.getIntExtra("EXTRA_THEME", c.d.ComposerLight));
        setContentView(c.C0563c.tw__activity_composer);
        this.f35215a = new com.twitter.sdk.android.tweetcomposer.a((ComposerView) findViewById(c.b.tw__composer_view), tVar, uri, stringExtra, stringExtra2, new b());
    }
}
