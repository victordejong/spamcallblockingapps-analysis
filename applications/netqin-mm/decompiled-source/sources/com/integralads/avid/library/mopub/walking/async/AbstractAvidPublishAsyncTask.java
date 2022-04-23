package com.integralads.avid.library.mopub.walking.async;

import com.integralads.avid.library.mopub.registration.AvidAdSessionRegistry;
import com.integralads.avid.library.mopub.walking.async.AvidAsyncTask;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask.class */
public abstract class AbstractAvidPublishAsyncTask extends AvidAsyncTask {

    /* renamed from: c */
    public final AvidAdSessionRegistry f33109c;

    /* renamed from: d */
    public final HashSet<String> f33110d;

    /* renamed from: e */
    public final JSONObject f33111e;

    /* renamed from: f */
    public final double f33112f;

    public AbstractAvidPublishAsyncTask(AvidAsyncTask.StateProvider stateProvider, AvidAdSessionRegistry avidAdSessionRegistry, HashSet<String> hashSet, JSONObject jSONObject, double d) {
        super(stateProvider);
        this.f33109c = avidAdSessionRegistry;
        this.f33110d = new HashSet<>(hashSet);
        this.f33111e = jSONObject;
        this.f33112f = d;
    }

    public AvidAdSessionRegistry getAdSessionRegistry() {
        return this.f33109c;
    }

    public HashSet<String> getSessionIds() {
        return this.f33110d;
    }

    public JSONObject getState() {
        return this.f33111e;
    }

    public double getTimestamp() {
        return this.f33112f;
    }
}
