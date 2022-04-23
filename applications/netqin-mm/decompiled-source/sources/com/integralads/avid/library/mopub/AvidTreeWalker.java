package com.integralads.avid.library.mopub;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.integralads.avid.library.mopub.processing.AvidProcessorFactory;
import com.integralads.avid.library.mopub.processing.IAvidNodeProcessor;
import com.integralads.avid.library.mopub.registration.AvidAdSessionRegistry;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import com.integralads.avid.library.mopub.utils.AvidTimestamp;
import com.integralads.avid.library.mopub.utils.AvidViewUtil;
import com.integralads.avid.library.mopub.walking.AvidAdViewCache;
import com.integralads.avid.library.mopub.walking.AvidStatePublisher;
import com.integralads.avid.library.mopub.walking.ViewType;
import com.integralads.avid.library.mopub.walking.async.AvidAsyncTaskQueue;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidTreeWalker.class */
public class AvidTreeWalker implements IAvidNodeProcessor.IAvidViewWalker {

    /* renamed from: i */
    public static HandlerC8504b f33029i;

    /* renamed from: b */
    public int f33032b;

    /* renamed from: f */
    public double f33036f;

    /* renamed from: g */
    public double f33037g;

    /* renamed from: h */
    public static AvidTreeWalker f33028h = new AvidTreeWalker();

    /* renamed from: j */
    public static final Runnable f33030j = new RunnableC8503a();

    /* renamed from: a */
    public List<AvidTreeWalkerTimeLogger> f33031a = new ArrayList();

    /* renamed from: d */
    public AvidAdViewCache f33034d = new AvidAdViewCache(AvidAdSessionRegistry.getInstance());

    /* renamed from: c */
    public AvidProcessorFactory f33033c = new AvidProcessorFactory();

    /* renamed from: e */
    public AvidStatePublisher f33035e = new AvidStatePublisher(AvidAdSessionRegistry.getInstance(), new AvidAsyncTaskQueue());

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidTreeWalker$AvidTreeWalkerTimeLogger.class */
    public interface AvidTreeWalkerTimeLogger {
        void onTreeProcessed(int i, long j);
    }

    /* renamed from: com.integralads.avid.library.mopub.AvidTreeWalker$a */
    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidTreeWalker$a.class */
    public static final class RunnableC8503a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (AvidTreeWalker.f33029i != null) {
                AvidTreeWalker.f33029i.sendEmptyMessage(0);
                AvidTreeWalker.f33029i.postDelayed(AvidTreeWalker.f33030j, 200L);
            }
        }
    }

    /* renamed from: com.integralads.avid.library.mopub.AvidTreeWalker$b */
    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidTreeWalker$b.class */
    public static class HandlerC8504b extends Handler {
        public HandlerC8504b() {
        }

        public /* synthetic */ HandlerC8504b(RunnableC8503a aVar) {
            this();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            AvidTreeWalker.getInstance().m5405f();
        }
    }

    public static AvidTreeWalker getInstance() {
        return f33028h;
    }

    /* renamed from: a */
    public final void m5415a() {
        double currentTime = AvidTimestamp.getCurrentTime();
        this.f33037g = currentTime;
        m5414a((long) (currentTime - this.f33036f));
    }

    /* renamed from: a */
    public final void m5414a(long j) {
        if (this.f33031a.size() > 0) {
            for (AvidTreeWalkerTimeLogger avidTreeWalkerTimeLogger : this.f33031a) {
                avidTreeWalkerTimeLogger.onTreeProcessed(this.f33032b, j);
            }
        }
    }

    /* renamed from: a */
    public final void m5413a(View view, IAvidNodeProcessor iAvidNodeProcessor, JSONObject jSONObject, ViewType viewType) {
        iAvidNodeProcessor.iterateChildren(view, jSONObject, this, viewType == ViewType.ROOT_VIEW);
    }

    /* renamed from: a */
    public final void m5412a(View view, JSONObject jSONObject) {
        ArrayList<String> friendlySessionIds = this.f33034d.getFriendlySessionIds(view);
        if (friendlySessionIds != null) {
            AvidJSONUtil.addFriendlyObstruction(jSONObject, friendlySessionIds);
        }
    }

    public void addTimeLogger(AvidTreeWalkerTimeLogger avidTreeWalkerTimeLogger) {
        if (!this.f33031a.contains(avidTreeWalkerTimeLogger)) {
            this.f33031a.add(avidTreeWalkerTimeLogger);
        }
    }

    /* renamed from: b */
    public final void m5410b() {
        this.f33032b = 0;
        this.f33036f = AvidTimestamp.getCurrentTime();
    }

    /* renamed from: b */
    public final boolean m5409b(View view, JSONObject jSONObject) {
        String sessionId = this.f33034d.getSessionId(view);
        if (sessionId == null) {
            return false;
        }
        AvidJSONUtil.addAvidId(jSONObject, sessionId);
        this.f33034d.onAdViewProcessed();
        return true;
    }

    /* renamed from: c */
    public void m5408c() {
        this.f33034d.prepare();
        double currentTime = AvidTimestamp.getCurrentTime();
        IAvidNodeProcessor rootProcessor = this.f33033c.getRootProcessor();
        if (this.f33034d.getHiddenSessionIds().size() > 0) {
            this.f33035e.publishEmptyState(rootProcessor.getState(null), this.f33034d.getHiddenSessionIds(), currentTime);
        }
        if (this.f33034d.getVisibleSessionIds().size() > 0) {
            JSONObject state = rootProcessor.getState(null);
            m5413a(null, rootProcessor, state, ViewType.ROOT_VIEW);
            AvidJSONUtil.fixStateFrame(state);
            this.f33035e.publishState(state, this.f33034d.getVisibleSessionIds(), currentTime);
        } else {
            this.f33035e.cleanupCache();
        }
        this.f33034d.cleanup();
    }

    /* renamed from: d */
    public final void m5407d() {
        if (f33029i == null) {
            HandlerC8504b bVar = new HandlerC8504b(null);
            f33029i = bVar;
            bVar.postDelayed(f33030j, 200L);
        }
    }

    /* renamed from: e */
    public final void m5406e() {
        HandlerC8504b bVar = f33029i;
        if (bVar != null) {
            bVar.removeCallbacks(f33030j);
            f33029i = null;
        }
    }

    /* renamed from: f */
    public final void m5405f() {
        m5410b();
        m5408c();
        m5415a();
    }

    public void pause() {
        m5406e();
    }

    public void removeTimeLogger(AvidTreeWalkerTimeLogger avidTreeWalkerTimeLogger) {
        if (this.f33031a.contains(avidTreeWalkerTimeLogger)) {
            this.f33031a.remove(avidTreeWalkerTimeLogger);
        }
    }

    public void start() {
        m5407d();
        m5405f();
    }

    public void stop() {
        pause();
        this.f33031a.clear();
        this.f33035e.cleanupCache();
    }

    @Override // com.integralads.avid.library.mopub.processing.IAvidNodeProcessor.IAvidViewWalker
    public void walkView(View view, IAvidNodeProcessor iAvidNodeProcessor, JSONObject jSONObject) {
        ViewType viewType;
        if (AvidViewUtil.isViewVisible(view) && (viewType = this.f33034d.getViewType(view)) != ViewType.UNDERLYING_VIEW) {
            JSONObject state = iAvidNodeProcessor.getState(view);
            AvidJSONUtil.addChildState(jSONObject, state);
            if (!m5409b(view, state)) {
                m5412a(view, state);
                m5413a(view, iAvidNodeProcessor, state, viewType);
            }
            this.f33032b++;
        }
    }
}
