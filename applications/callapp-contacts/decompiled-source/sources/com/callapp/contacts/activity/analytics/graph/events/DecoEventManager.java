package com.callapp.contacts.activity.analytics.graph.events;

import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/events/DecoEventManager.class */
public class DecoEventManager {

    /* renamed from: a  reason: collision with root package name */
    public final Handler f10986a = new Handler();

    /* renamed from: b  reason: collision with root package name */
    private final ArcEventManagerListener f10987b;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener.class */
    public interface ArcEventManagerListener {
        void a(DecoEvent decoEvent);
    }

    public DecoEventManager(ArcEventManagerListener arcEventManagerListener) {
        this.f10987b = arcEventManagerListener;
    }

    public final void a() {
        this.f10986a.removeCallbacksAndMessages(null);
    }
}
