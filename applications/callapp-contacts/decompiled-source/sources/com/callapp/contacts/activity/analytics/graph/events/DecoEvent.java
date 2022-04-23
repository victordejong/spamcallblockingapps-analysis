package com.callapp.contacts.activity.analytics.graph.events;

import android.graphics.Color;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
import com.callapp.contacts.activity.analytics.graph.charts.DecoDrawEffect;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/events/DecoEvent.class */
public class DecoEvent {

    /* renamed from: a  reason: collision with root package name */
    private final String f10978a;

    /* renamed from: b  reason: collision with root package name */
    private final EventType f10979b;

    /* renamed from: c  reason: collision with root package name */
    private final long f10980c;

    /* renamed from: d  reason: collision with root package name */
    private final long f10981d;
    private final DecoDrawEffect.EffectType e;
    private final long f;
    private final View[] g;
    private final long h;
    private final int i;
    private final int j;
    private final String k;
    private final float l;
    private final int m;
    private final Interpolator n;
    private final ExecuteEventListener o;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public int f10982a;

        /* renamed from: b  reason: collision with root package name */
        private final EventType f10983b;

        /* renamed from: c  reason: collision with root package name */
        private long f10984c;

        /* renamed from: d  reason: collision with root package name */
        private long f10985d;
        private DecoDrawEffect.EffectType e;
        private long f;
        private View[] g;
        private long h;
        private int i;
        private String j;
        private float k;
        private int l;
        private Interpolator m;
        private ExecuteEventListener n;

        public Builder(float f) {
            this.f10984c = -1L;
            this.f = 1000L;
            this.h = -1L;
            this.f10982a = -1;
            this.i = 2;
            this.l = Color.parseColor("#00000000");
            this.f10983b = EventType.EVENT_MOVE;
            this.k = f;
        }

        public Builder(DecoDrawEffect.EffectType effectType) {
            this.f10984c = -1L;
            this.f = 1000L;
            this.h = -1L;
            this.f10982a = -1;
            this.i = 2;
            this.l = Color.parseColor("#00000000");
            this.f10983b = EventType.EVENT_EFFECT;
            this.e = effectType;
        }

        public Builder(EventType eventType, int i) {
            this.f10984c = -1L;
            this.f = 1000L;
            this.h = -1L;
            this.f10982a = -1;
            this.i = 2;
            this.l = Color.parseColor("#00000000");
            if (EventType.EVENT_COLOR_CHANGE == eventType) {
                this.f10983b = eventType;
                this.l = i;
                return;
            }
            throw new IllegalArgumentException("Must specify EVENT_COLOR_CHANGE when setting new color");
        }

        public Builder(EventType eventType, boolean z) {
            this.f10984c = -1L;
            this.f = 1000L;
            this.h = -1L;
            this.f10982a = -1;
            this.i = 2;
            this.l = Color.parseColor("#00000000");
            if (EventType.EVENT_HIDE == eventType || EventType.EVENT_SHOW == eventType) {
                this.f10983b = z ? EventType.EVENT_SHOW : EventType.EVENT_HIDE;
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

    private DecoEvent(Builder builder) {
        String simpleName = getClass().getSimpleName();
        this.f10978a = simpleName;
        this.f10979b = builder.f10983b;
        long j = builder.f10984c;
        this.f10980c = j;
        this.f10981d = builder.f10985d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.f10982a;
        this.j = builder.i;
        this.k = builder.j;
        this.l = builder.k;
        this.m = builder.l;
        this.n = builder.m;
        ExecuteEventListener executeEventListener = builder.n;
        this.o = executeEventListener;
        if (j != -1 && executeEventListener == null) {
            Log.w(simpleName, "EventID redundant without specifying an event listener");
        }
    }

    public int getColor() {
        return this.m;
    }

    public long getDelay() {
        return this.f10981d;
    }

    public String getDisplayText() {
        return this.k;
    }

    public long getEffectDuration() {
        return this.h;
    }

    public int getEffectRotations() {
        return this.j;
    }

    public DecoDrawEffect.EffectType getEffectType() {
        return this.e;
    }

    public float getEndPosition() {
        return this.l;
    }

    public EventType getEventType() {
        return this.f10979b;
    }

    public long getFadeDuration() {
        return this.f;
    }

    public int getIndexPosition() {
        return this.i;
    }

    public Interpolator getInterpolator() {
        return this.n;
    }

    public View[] getLinkedViews() {
        return this.g;
    }

    public boolean isColorSet() {
        return Color.alpha(this.m) > 0;
    }
}
