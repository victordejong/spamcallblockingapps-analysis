package com.integralads.avid.library.mopub.walking.async;

import com.integralads.avid.library.mopub.registration.AvidAdSessionRegistry;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.mopub.utils.AvidCommand;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import com.integralads.avid.library.mopub.walking.async.AvidAsyncTask;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/walking/async/AvidEmptyPublishAsyncTask.class */
public class AvidEmptyPublishAsyncTask extends AbstractAvidPublishAsyncTask {
    public AvidEmptyPublishAsyncTask(AvidAsyncTask.StateProvider stateProvider, AvidAdSessionRegistry avidAdSessionRegistry, HashSet<String> hashSet, JSONObject jSONObject, double d) {
        super(stateProvider, avidAdSessionRegistry, hashSet, jSONObject, d);
    }

    @Override // com.integralads.avid.library.mopub.walking.async.AvidAsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        for (InternalAvidAdSession internalAvidAdSession : this.f33109c.getInternalAvidAdSessions()) {
            if (this.f33110d.contains(internalAvidAdSession.getAvidAdSessionId())) {
                internalAvidAdSession.publishEmptyNativeViewStateCommand(str, this.f33112f);
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Object... objArr) {
        return AvidCommand.setNativeViewState(AvidJSONUtil.getTreeJSONObject(this.f33111e, this.f33112f).toString());
    }
}
