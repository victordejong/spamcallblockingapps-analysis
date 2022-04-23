package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/DialpadToggleListener.class */
public interface DialpadToggleListener {

    /* renamed from: a  reason: collision with root package name */
    public static final EventType<DialpadToggleListener, ToggleDialpadEvent> f12941a = _$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ.INSTANCE;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent.class */
    public static class ToggleDialpadEvent {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f12942a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f12943b;

        /* renamed from: c  reason: collision with root package name */
        private final int f12944c;

        /* renamed from: d  reason: collision with root package name */
        private final int f12945d;

        public ToggleDialpadEvent(boolean z, boolean z2, int i, int i2) {
            this.f12942a = z;
            this.f12943b = z2;
            this.f12944c = i;
            this.f12945d = i2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/DialpadToggleListener$_CC.class */
    public final /* synthetic */ class _CC {
        public static /* synthetic */ void a(DialpadToggleListener dialpadToggleListener, ToggleDialpadEvent toggleDialpadEvent) {
            dialpadToggleListener.toggleDialpad(toggleDialpadEvent.f12942a, toggleDialpadEvent.f12943b, toggleDialpadEvent.f12944c, toggleDialpadEvent.f12945d);
        }
    }

    void toggleDialpad(boolean z, boolean z2, int i, int i2);
}
