package com.twitter.sdk.android.tweetcomposer;

import android.app.IntentService;
import android.content.Intent;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.b;
import com.twitter.sdk.android.core.k;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.n;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/TweetUploadService.class */
public class TweetUploadService extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    a f35222a;

    /* renamed from: b  reason: collision with root package name */
    Intent f35223b;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/TweetUploadService$a.class */
    static final class a {
        a() {
        }
    }

    public TweetUploadService() {
        this(new a());
    }

    TweetUploadService(a aVar) {
        super("TweetUploadService");
        this.f35222a = aVar;
    }

    private void a(Intent intent) {
        Intent intent2 = new Intent("com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE");
        intent2.putExtra("EXTRA_RETRY_INTENT", intent);
        intent2.setPackage(getApplicationContext().getPackageName());
        sendBroadcast(intent2);
    }

    final void a(TwitterException twitterException) {
        a(this.f35223b);
        n.c().a("TweetUploadService", "Post Tweet failed", twitterException);
        stopSelf();
    }

    final void a(t tVar, String str, String str2) {
        r.a().a(tVar).getStatusesService().update(str, null, null, null, null, null, null, Boolean.TRUE, str2).a(new b<Tweet>() { // from class: com.twitter.sdk.android.tweetcomposer.TweetUploadService.2
            @Override // com.twitter.sdk.android.core.b
            public final void a(TwitterException twitterException) {
                TweetUploadService.this.a(twitterException);
            }

            @Override // com.twitter.sdk.android.core.b
            public final void a(k<Tweet> kVar) {
                TweetUploadService tweetUploadService = TweetUploadService.this;
                long id = kVar.f35182a.getId();
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
