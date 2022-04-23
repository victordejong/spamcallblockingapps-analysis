package com.callapp.contacts.loader.social.twitter;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.UsageCounter;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.TwitterData;
import com.callapp.contacts.model.contact.social.TwitterDataUtils;
import com.callapp.framework.util.StringUtils;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.models.Tweet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/twitter/LoadTwitterLastTweetTask.class */
class LoadTwitterLastTweetTask extends BaseSocialLoaderTask {
    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadTwitterLastTweetTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f14431a.f14535a;
        TwitterData twitterData = contactData.getTwitterData();
        if (twitterData != null) {
            final TwitterHelper twitterHelper = TwitterHelper.get();
            final String id = this.f14738b.getId();
            TwitterDataUtils.setLastTweet(contactData, twitterData, (String) twitterHelper.a(new RemoteAccountHelper.SocialCallable<String>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.9
                /* renamed from: b */
                public String a() {
                    if (!StringUtils.b((CharSequence) id)) {
                        return "";
                    }
                    twitterHelper.a(UsageCounter.twitterTweets, CallAppApplication.get().getResources().getInteger(2131427405), CallAppApplication.get().getResources().getInteger(2131427406), true);
                    try {
                        Tweet t = TwitterHelper.t(id);
                        return t != null ? t.text : "";
                    } catch (TwitterException e) {
                        throw new TwitterApiRuntimeException(e);
                    }
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                public String getCacheKey() {
                    return "twitter_user_last_tweet_" + id;
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                public int getCacheTtl() {
                    return 2131427397;
                }
            }, String.class));
        }
    }
}
