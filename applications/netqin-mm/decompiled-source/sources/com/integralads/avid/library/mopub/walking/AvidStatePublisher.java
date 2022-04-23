package com.integralads.avid.library.mopub.walking;

import com.integralads.avid.library.mopub.registration.AvidAdSessionRegistry;
import com.integralads.avid.library.mopub.walking.async.AvidAsyncTask;
import com.integralads.avid.library.mopub.walking.async.AvidAsyncTaskQueue;
import com.integralads.avid.library.mopub.walking.async.AvidCleanupAsyncTask;
import com.integralads.avid.library.mopub.walking.async.AvidEmptyPublishAsyncTask;
import com.integralads.avid.library.mopub.walking.async.AvidPublishAsyncTask;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/walking/AvidStatePublisher.class */
public class AvidStatePublisher implements AvidAsyncTask.StateProvider {

    /* renamed from: a */
    public final AvidAdSessionRegistry f33106a;

    /* renamed from: b */
    public JSONObject f33107b;

    /* renamed from: c */
    public final AvidAsyncTaskQueue f33108c;

    public AvidStatePublisher(AvidAdSessionRegistry avidAdSessionRegistry, AvidAsyncTaskQueue avidAsyncTaskQueue) {
        this.f33106a = avidAdSessionRegistry;
        this.f33108c = avidAsyncTaskQueue;
    }

    public void cleanupCache() {
        this.f33108c.submitTask(new AvidCleanupAsyncTask(this));
    }

    @Override // com.integralads.avid.library.mopub.walking.async.AvidAsyncTask.StateProvider
    public JSONObject getPreviousState() {
        return this.f33107b;
    }

    public void publishEmptyState(JSONObject jSONObject, HashSet<String> hashSet, double d) {
        this.f33108c.submitTask(new AvidEmptyPublishAsyncTask(this, this.f33106a, hashSet, jSONObject, d));
    }

    public void publishState(JSONObject jSONObject, HashSet<String> hashSet, double d) {
        this.f33108c.submitTask(new AvidPublishAsyncTask(this, this.f33106a, hashSet, jSONObject, d));
    }

    @Override // com.integralads.avid.library.mopub.walking.async.AvidAsyncTask.StateProvider
    public void setPreviousState(JSONObject jSONObject) {
        this.f33107b = jSONObject;
    }
}
