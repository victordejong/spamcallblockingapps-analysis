package com.twitter.sdk.android.tweetcomposer;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.material.timepicker.TimeModel;
import com.twitter.C17202d;
import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.C17277k;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.C17292t;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.tweetcomposer.C17306c;
import com.twitter.sdk.android.tweetcomposer.ComposerActivity;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.twitter.sdk.android.tweetcomposer.a */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/a.class */
public final class C17300a {

    /* renamed from: a */
    final ComposerView f61109a;

    /* renamed from: b */
    final C17292t f61110b;

    /* renamed from: c */
    final Uri f61111c;

    /* renamed from: d */
    final ComposerActivity.AbstractC17294a f61112d;

    /* renamed from: e */
    final C17304c f61113e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.tweetcomposer.a$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/a$a.class */
    public interface AbstractC17302a {
        /* renamed from: a */
        void mo5599a();

        /* renamed from: a */
        void mo5598a(String str);

        /* renamed from: b */
        void mo5597b(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.tweetcomposer.a$b */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/a$b.class */
    public final class C17303b implements AbstractC17302a {
        C17303b() {
            C17300a.this = r4;
        }

        @Override // com.twitter.sdk.android.tweetcomposer.C17300a.AbstractC17302a
        /* renamed from: a */
        public final void mo5599a() {
            C17300a.this.m5603a();
        }

        @Override // com.twitter.sdk.android.tweetcomposer.C17300a.AbstractC17302a
        /* renamed from: a */
        public final void mo5598a(String str) {
            int m5724a = TextUtils.isEmpty(str) ? 0 : C17300a.this.f61113e.f61116a.m5724a(str);
            C17300a.this.f61109a.f61094d.setText(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE - m5724a)));
            if (m5724a > 140) {
                C17300a.this.f61109a.m5613a(C17306c.C17310d.tw__ComposerCharCountOverflow);
            } else {
                C17300a.this.f61109a.m5613a(C17306c.C17310d.tw__ComposerCharCount);
            }
            ComposerView composerView = C17300a.this.f61109a;
            boolean z = false;
            if (m5724a > 0) {
                z = false;
                if (m5724a <= 140) {
                    z = true;
                }
            }
            composerView.f61095e.setEnabled(z);
        }

        @Override // com.twitter.sdk.android.tweetcomposer.C17300a.AbstractC17302a
        /* renamed from: b */
        public final void mo5597b(String str) {
            Intent intent = new Intent(C17300a.this.f61109a.getContext(), TweetUploadService.class);
            intent.putExtra("EXTRA_USER_TOKEN", (Parcelable) C17300a.this.f61110b.f61035a);
            intent.putExtra("EXTRA_TWEET_TEXT", str);
            intent.putExtra("EXTRA_IMAGE_URI", C17300a.this.f61111c);
            C17300a.this.f61109a.getContext().startService(intent);
            C17300a.this.f61112d.mo5615a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.tweetcomposer.a$c */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/a$c.class */
    public static final class C17304c {

        /* renamed from: a */
        final C17202d f61116a = new C17202d();

        C17304c() {
        }
    }

    public C17300a(ComposerView composerView, C17292t c17292t, Uri uri, String str, String str2, ComposerActivity.AbstractC17294a abstractC17294a) {
        this(composerView, c17292t, uri, str, str2, abstractC17294a, new C17304c());
    }

    C17300a(ComposerView composerView, C17292t c17292t, Uri uri, String str, String str2, ComposerActivity.AbstractC17294a abstractC17294a, C17304c c17304c) {
        this.f61109a = composerView;
        this.f61110b = c17292t;
        this.f61111c = uri;
        this.f61112d = abstractC17294a;
        this.f61113e = c17304c;
        composerView.f61100j = new C17303b();
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
        composerView.f61093c.setText(sb.toString());
        C17288r.m5626a().m5625a(c17292t).getAccountService().verifyCredentials(Boolean.FALSE, Boolean.TRUE, Boolean.FALSE).mo54a(new AbstractC17206b<User>() { // from class: com.twitter.sdk.android.tweetcomposer.a.1
            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5601a(TwitterException twitterException) {
                C17300a.this.f61109a.m5609a((User) null);
            }

            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5600a(C17277k<User> c17277k) {
                C17300a.this.f61109a.m5609a(c17277k.f61033a);
            }
        });
        if (uri == null || composerView.f61101k == null) {
            return;
        }
        composerView.f61099i.setVisibility(0);
        composerView.f61101k.load(uri).into(composerView.f61099i);
    }

    /* renamed from: b */
    private void m5602b() {
        Intent intent = new Intent("com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL");
        intent.setPackage(this.f61109a.getContext().getPackageName());
        this.f61109a.getContext().sendBroadcast(intent);
    }

    /* renamed from: a */
    public final void m5603a() {
        m5602b();
        this.f61112d.mo5615a();
    }
}
