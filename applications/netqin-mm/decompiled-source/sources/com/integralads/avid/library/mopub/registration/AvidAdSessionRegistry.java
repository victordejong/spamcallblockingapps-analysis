package com.integralads.avid.library.mopub.registration;

import android.view.View;
import com.integralads.avid.library.mopub.session.AbstractAvidAdSession;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionListener;
import java.util.Collection;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/registration/AvidAdSessionRegistry.class */
public class AvidAdSessionRegistry implements InternalAvidAdSessionListener {

    /* renamed from: e */
    public static AvidAdSessionRegistry f33047e = new AvidAdSessionRegistry();

    /* renamed from: c */
    public AvidAdSessionRegistryListener f33050c;

    /* renamed from: a */
    public final HashMap<String, InternalAvidAdSession> f33048a = new HashMap<>();

    /* renamed from: b */
    public final HashMap<String, AbstractAvidAdSession> f33049b = new HashMap<>();

    /* renamed from: d */
    public int f33051d = 0;

    public static AvidAdSessionRegistry getInstance() {
        return f33047e;
    }

    public AbstractAvidAdSession findAvidAdSessionById(String str) {
        return this.f33049b.get(str);
    }

    public InternalAvidAdSession findInternalAvidAdSessionById(String str) {
        return this.f33048a.get(str);
    }

    public InternalAvidAdSession findInternalAvidAdSessionByView(View view) {
        for (InternalAvidAdSession internalAvidAdSession : this.f33048a.values()) {
            if (internalAvidAdSession.doesManageView(view)) {
                return internalAvidAdSession;
            }
        }
        return null;
    }

    public Collection<AbstractAvidAdSession> getAvidAdSessions() {
        return this.f33049b.values();
    }

    public Collection<InternalAvidAdSession> getInternalAvidAdSessions() {
        return this.f33048a.values();
    }

    public AvidAdSessionRegistryListener getListener() {
        return this.f33050c;
    }

    public boolean hasActiveSessions() {
        return this.f33051d > 0;
    }

    public boolean isEmpty() {
        return this.f33049b.isEmpty();
    }

    public void registerAvidAdSession(AbstractAvidAdSession abstractAvidAdSession, InternalAvidAdSession internalAvidAdSession) {
        AvidAdSessionRegistryListener avidAdSessionRegistryListener;
        this.f33049b.put(abstractAvidAdSession.getAvidAdSessionId(), abstractAvidAdSession);
        this.f33048a.put(abstractAvidAdSession.getAvidAdSessionId(), internalAvidAdSession);
        internalAvidAdSession.setListener(this);
        if (this.f33049b.size() == 1 && (avidAdSessionRegistryListener = this.f33050c) != null) {
            avidAdSessionRegistryListener.registryHasSessionsChanged(this);
        }
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionListener
    public void sessionDidEnd(InternalAvidAdSession internalAvidAdSession) {
        AvidAdSessionRegistryListener avidAdSessionRegistryListener;
        this.f33049b.remove(internalAvidAdSession.getAvidAdSessionId());
        this.f33048a.remove(internalAvidAdSession.getAvidAdSessionId());
        internalAvidAdSession.setListener(null);
        if (this.f33049b.size() == 0 && (avidAdSessionRegistryListener = this.f33050c) != null) {
            avidAdSessionRegistryListener.registryHasSessionsChanged(this);
        }
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionListener
    public void sessionHasBecomeActive(InternalAvidAdSession internalAvidAdSession) {
        AvidAdSessionRegistryListener avidAdSessionRegistryListener;
        int i = this.f33051d + 1;
        this.f33051d = i;
        if (i == 1 && (avidAdSessionRegistryListener = this.f33050c) != null) {
            avidAdSessionRegistryListener.registryHasActiveSessionsChanged(this);
        }
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionListener
    public void sessionHasResignedActive(InternalAvidAdSession internalAvidAdSession) {
        AvidAdSessionRegistryListener avidAdSessionRegistryListener;
        int i = this.f33051d - 1;
        this.f33051d = i;
        if (i == 0 && (avidAdSessionRegistryListener = this.f33050c) != null) {
            avidAdSessionRegistryListener.registryHasActiveSessionsChanged(this);
        }
    }

    public void setListener(AvidAdSessionRegistryListener avidAdSessionRegistryListener) {
        this.f33050c = avidAdSessionRegistryListener;
    }
}
