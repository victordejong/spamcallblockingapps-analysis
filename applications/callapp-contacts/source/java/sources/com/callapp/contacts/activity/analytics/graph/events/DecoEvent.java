package com.callapp.contacts.activity.analytics.graph.events;

import android.graphics.Color;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
import com.callapp.contacts.activity.analytics.graph.charts.DecoDrawEffect;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/events/DecoEvent.class */
public class DecoEvent {

    /* renamed from: a */
    private final String f20103a;

    /* renamed from: b */
    private final EventType f20104b;

    /* renamed from: c */
    private final long f20105c;

    /* renamed from: d */
    private final long f20106d;

    /* renamed from: e */
    private final DecoDrawEffect.EffectType f20107e;

    /* renamed from: f */
    private final long f20108f;

    /* renamed from: g */
    private final View[] f20109g;

    /* renamed from: h */
    private final long f20110h;

    /* renamed from: i */
    private final int f20111i;

    /* renamed from: j */
    private final int f20112j;

    /* renamed from: k */
    private final String f20113k;

    /* renamed from: l */
    private final float f20114l;

    /* renamed from: m */
    private final int f20115m;

    /* renamed from: n */
    private final Interpolator f20116n;

    /* renamed from: o */
    private final ExecuteEventListener f20117o;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public int f20118a;

        /* renamed from: b */
        private final EventType f20119b;

        /* renamed from: c */
        private long f20120c;

        /* renamed from: d */
        private long f20121d;

        /* renamed from: e */
        private DecoDrawEffect.EffectType f20122e;

        /* renamed from: f */
        private long f20123f;

        /* renamed from: g */
        private View[] f20124g;

        /* renamed from: h */
        private long f20125h;

        /* renamed from: i */
        private int f20126i;

        /* renamed from: j */
        private String f20127j;

        /* renamed from: k */
        private float f20128k;

        /* renamed from: l */
        private int f20129l;

        /* renamed from: m */
        private Interpolator f20130m;

        /* renamed from: n */
        private ExecuteEventListener f20131n;

        public Builder(float f) {
            this.f20120c = -1L;
            this.f20123f = 1000L;
            this.f20125h = -1L;
            this.f20118a = -1;
            this.f20126i = 2;
            this.f20129l = Color.parseColor("#00000000");
            this.f20119b = EventType.EVENT_MOVE;
            this.f20128k = f;
        }

        public Builder(DecoDrawEffect.EffectType effectType) {
            this.f20120c = -1L;
            this.f20123f = 1000L;
            this.f20125h = -1L;
            this.f20118a = -1;
            this.f20126i = 2;
            this.f20129l = Color.parseColor("#00000000");
            this.f20119b = EventType.EVENT_EFFECT;
            this.f20122e = effectType;
        }

        public Builder(EventType eventType, int i) {
            this.f20120c = -1L;
            this.f20123f = 1000L;
            this.f20125h = -1L;
            this.f20118a = -1;
            this.f20126i = 2;
            this.f20129l = Color.parseColor("#00000000");
            if (EventType.EVENT_COLOR_CHANGE == eventType) {
                this.f20119b = eventType;
                this.f20129l = i;
                return;
            }
            throw new IllegalArgumentException("Must specify EVENT_COLOR_CHANGE when setting new color");
        }

        public Builder(EventType eventType, boolean z) {
            this.f20120c = -1L;
            this.f20123f = 1000L;
            this.f20125h = -1L;
            this.f20118a = -1;
            this.f20126i = 2;
            this.f20129l = Color.parseColor("#00000000");
            if (EventType.EVENT_HIDE == eventType || EventType.EVENT_SHOW == eventType) {
                this.f20119b = z ? EventType.EVENT_SHOW : EventType.EVENT_HIDE;
                return;
            }
            throw new IllegalArgumentException("Invalid arguments for EventType. Use Alternative constructor");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType.class */
    public enum EventType {
        EVENT_MOVE,
        EVENT_SHOW,
        EVENT_HIDE,
        EVENT_EFFECT,
        EVENT_COLOR_CHANGE
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/events/DecoEvent$ExecuteEventListener.class */
    public interface ExecuteEventListener {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DecoEvent(Builder builder) {
        String simpleName = getClass().getSimpleName();
        this.f20103a = simpleName;
        this.f20104b = builder.f20119b;
        long j = builder.f20120c;
        this.f20105c = j;
        this.f20106d = builder.f20121d;
        this.f20107e = builder.f20122e;
        this.f20108f = builder.f20123f;
        this.f20109g = builder.f20124g;
        this.f20110h = builder.f20125h;
        this.f20111i = builder.f20118a;
        this.f20112j = builder.f20126i;
        this.f20113k = builder.f20127j;
        this.f20114l = builder.f20128k;
        this.f20115m = builder.f20129l;
        this.f20116n = builder.f20130m;
        ExecuteEventListener executeEventListener = builder.f20131n;
        this.f20117o = executeEventListener;
        if (j == -1 || executeEventListener != null) {
            return;
        }
        Log.w(simpleName, "EventID redundant without specifying an event listener");
    }

    public int getColor() {
        return this.f20115m;
    }

    public long getDelay() {
        return this.f20106d;
    }

    public String getDisplayText() {
        return this.f20113k;
    }

    public long getEffectDuration() {
        return this.f20110h;
    }

    public int getEffectRotations() {
        return this.f20112j;
    }

    public DecoDrawEffect.EffectType getEffectType() {
        return this.f20107e;
    }

    public float getEndPosition() {
        return this.f20114l;
    }

    public EventType getEventType() {
        return this.f20104b;
    }

    public long getFadeDuration() {
        return this.f20108f;
    }

    public int getIndexPosition() {
        return this.f20111i;
    }

    public Interpolator getInterpolator() {
        return this.f20116n;
    }

    public View[] getLinkedViews() {
        return this.f20109g;
    }

    public boolean isColorSet() {
        return Color.alpha(this.f20115m) > 0;
    }
}
