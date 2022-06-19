package com.callapp.contacts.activity.analytics.graph.events;

import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/events/DecoEventManager.class */
public class DecoEventManager {

    /* renamed from: a */
    public final Handler f20132a = new Handler();

    /* renamed from: b */
    private final ArcEventManagerListener f20133b;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener.class */
    public interface ArcEventManagerListener {
        /* renamed from: a */
        void mo31533a(DecoEvent decoEvent);
    }

    public DecoEventManager(ArcEventManagerListener arcEventManagerListener) {
        this.f20133b = arcEventManagerListener;
    }

    /* renamed from: a */
    public final void m31535a() {
        this.f20132a.removeCallbacksAndMessages(null);
    }
}
