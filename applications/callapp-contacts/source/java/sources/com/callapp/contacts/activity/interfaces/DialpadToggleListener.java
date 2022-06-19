package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/DialpadToggleListener.class */
public interface DialpadToggleListener {

    /* renamed from: a */
    public static final EventType<DialpadToggleListener, ToggleDialpadEvent> f23114a = _$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ.INSTANCE;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent.class */
    public static class ToggleDialpadEvent {

        /* renamed from: a */
        private final boolean f23115a;

        /* renamed from: b */
        private final boolean f23116b;

        /* renamed from: c */
        private final int f23117c;

        /* renamed from: d */
        private final int f23118d;

        public ToggleDialpadEvent(boolean z, boolean z2, int i, int i2) {
            this.f23115a = z;
            this.f23116b = z2;
            this.f23117c = i;
            this.f23118d = i2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/DialpadToggleListener$_CC.class */
    public final /* synthetic */ class _CC {
        /* renamed from: a */
        public static /* synthetic */ void m30216a(DialpadToggleListener dialpadToggleListener, ToggleDialpadEvent toggleDialpadEvent) {
            dialpadToggleListener.toggleDialpad(toggleDialpadEvent.f23115a, toggleDialpadEvent.f23116b, toggleDialpadEvent.f23117c, toggleDialpadEvent.f23118d);
        }
    }

    void toggleDialpad(boolean z, boolean z2, int i, int i2);
}
