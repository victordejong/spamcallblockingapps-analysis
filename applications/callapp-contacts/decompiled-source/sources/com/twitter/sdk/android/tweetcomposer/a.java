package com.twitter.sdk.android.tweetcomposer;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.material.timepicker.TimeModel;
import com.twitter.d;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.k;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.t;
import com.twitter.sdk.android.tweetcomposer.ComposerActivity;
import com.twitter.sdk.android.tweetcomposer.c;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    final ComposerView f35228a;

    /* renamed from: b  reason: collision with root package name */
    final t f35229b;

    /* renamed from: c  reason: collision with root package name */
    final Uri f35230c;

    /* renamed from: d  reason: collision with root package name */
    final ComposerActivity.a f35231d;
    final c e;

    /* renamed from: com.twitter.sdk.android.tweetcomposer.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/a$a.class */
    interface AbstractC0562a {
        void a();

        void a(String str);

        void b(String str);
    }

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/a$b.class */
    final class b implements AbstractC0562a {
        b() {
        }

        @Override // com.twitter.sdk.android.tweetcomposer.a.AbstractC0562a
        public final void a() {
            a.this.a();
        }

        @Override // com.twitter.sdk.android.tweetcomposer.a.AbstractC0562a
        public final void a(String str) {
            int a2 = TextUtils.isEmpty(str) ? 0 : a.this.e.f35234a.a(str);
            a.this.f35228a.f35220d.setText(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE - a2)));
            if (a2 > 140) {
                a.this.f35228a.a(c.d.tw__ComposerCharCountOverflow);
            } else {
                a.this.f35228a.a(c.d.tw__ComposerCharCount);
            }
            ComposerView composerView = a.this.f35228a;
            boolean z = false;
            if (a2 > 0) {
                z = false;
                if (a2 <= 140) {
                    z = true;
                }
            }
            composerView.e.setEnabled(z);
        }

        @Override // com.twitter.sdk.android.tweetcomposer.a.AbstractC0562a
        public final void b(String str) {
            Intent intent = new Intent(a.this.f35228a.getContext(), TweetUploadService.class);
            intent.putExtra("EXTRA_USER_TOKEN", (Parcelable) a.this.f35229b.f35184a);
            intent.putExtra("EXTRA_TWEET_TEXT", str);
            intent.putExtra("EXTRA_IMAGE_URI", a.this.f35230c);
            a.this.f35228a.getContext().startService(intent);
            a.this.f35231d.a();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/a$c.class */
    static final class c {

        /* renamed from: a  reason: collision with root package name */
        final d f35234a = new d();

        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ComposerView composerView, t tVar, Uri uri, String str, String str2, ComposerActivity.a aVar) {
        this(composerView, tVar, uri, str, str2, aVar, new c());
    }

    a(ComposerView composerView, t tVar, Uri uri, String str, String str2, ComposerActivity.a aVar, c cVar) {
        this.f35228a = composerView;
        this.f35229b = tVar;
        this.f35230c = uri;
        this.f35231d = aVar;
        this.e = cVar;
        composerView.j = new b();
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            if (sb.length() > 0) {
                sb.append(StringUtils.SPACE);
            }
            sb.append(str2);
        }
        composerView.f35219c.setText(sb.toString());
        r.a().a(tVar).getAccountService().verifyCredentials(Boolean.FALSE, Boolean.TRUE, Boolean.FALSE).a(new com.twitter.sdk.android.core.b<User>() { // from class: com.twitter.sdk.android.tweetcomposer.a.1
            @Override // com.twitter.sdk.android.core.b
            public final void a(TwitterException twitterException) {
                a.this.f35228a.a((User) null);
            }

            @Override // com.twitter.sdk.android.core.b
            public final void a(k<User> kVar) {
                a.this.f35228a.a(kVar.f35182a);
            }
        });
        if (uri != null && composerView.k != null) {
            composerView.i.setVisibility(0);
            composerView.k.load(uri).into(composerView.i);
        }
    }

    private void b() {
        Intent intent = new Intent("com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL");
        intent.setPackage(this.f35228a.getContext().getPackageName());
        this.f35228a.getContext().sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        b();
        this.f35231d.a();
    }
}
