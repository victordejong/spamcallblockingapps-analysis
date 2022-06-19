package com.twitter.sdk.android.tweetcomposer;

import android.app.IntentService;
import android.content.Intent;
import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.C17277k;
import com.twitter.sdk.android.core.C17282n;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.C17292t;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.models.Tweet;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/TweetUploadService.class */
public class TweetUploadService extends IntentService {

    /* renamed from: a */
    C17299a f61103a;

    /* renamed from: b */
    Intent f61104b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.tweetcomposer.TweetUploadService$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/TweetUploadService$a.class */
    public static final class C17299a {
        C17299a() {
        }
    }

    public TweetUploadService() {
        this(new C17299a());
    }

    TweetUploadService(C17299a c17299a) {
        super("TweetUploadService");
        this.f61103a = c17299a;
    }

    /* renamed from: a */
    private void m5606a(Intent intent) {
        Intent intent2 = new Intent("com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE");
        intent2.putExtra("EXTRA_RETRY_INTENT", intent);
        intent2.setPackage(getApplicationContext().getPackageName());
        sendBroadcast(intent2);
    }

    /* renamed from: a */
    final void m5605a(TwitterException twitterException) {
        m5606a(this.f61104b);
        C17282n.m5628c().mo5713a("TweetUploadService", "Post Tweet failed", twitterException);
        stopSelf();
    }

    /* renamed from: a */
    final void m5604a(C17292t c17292t, String str, String str2) {
        C17288r.m5626a().m5625a(c17292t).getStatusesService().update(str, null, null, null, null, null, null, Boolean.TRUE, str2).mo54a(new AbstractC17206b<Tweet>() { // from class: com.twitter.sdk.android.tweetcomposer.TweetUploadService.2
            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5601a(TwitterException twitterException) {
                TweetUploadService.this.m5605a(twitterException);
            }

            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5600a(C17277k<Tweet> c17277k) {
                TweetUploadService tweetUploadService = TweetUploadService.this;
                long id = c17277k.f61033a.getId();
                Intent intent = new Intent("com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS");
                intent.putExtra("EXTRA_TWEET_ID", id);
                intent.setPackage(tweetUploadService.getApplicationContext().getPackageName());
                tweetUploadService.sendBroadcast(intent);
                TweetUploadService.this.stopSelf();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d9  */
    @Override // android.app.IntentService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onHandleIntent(android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.tweetcomposer.TweetUploadService.onHandleIntent(android.content.Intent):void");
    }
}
