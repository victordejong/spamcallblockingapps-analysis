package com.truecaller.videocallerid.p187ui.recording;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: com.truecaller.videocallerid.ui.recording.RecordInputEvent */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/recording/RecordInputEvent.class */
public final class RecordInputEvent {

    /* renamed from: a */
    public final InputMode f16037a;

    /* renamed from: b */
    public final int f16038b;

    /* renamed from: c */
    public final int f16039c;

    /* renamed from: d */
    public final int f16040d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;", "", "<init>", "(Ljava/lang/String;I)V", "RecordButton", "VolumeButton", "None", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.videocallerid.ui.recording.RecordInputEvent$InputMode */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode.class */
    public enum InputMode {
        RecordButton,
        VolumeButton,
        None
    }

    public RecordInputEvent(InputMode inputMode, int i, int i2, int i3) {
        l.e(inputMode, "inputMode");
        this.f16037a = inputMode;
        this.f16038b = i;
        this.f16039c = i2;
        this.f16040d = i3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof RecordInputEvent)) {
                return false;
            }
            RecordInputEvent recordInputEvent = (RecordInputEvent) obj;
            return l.a(this.f16037a, recordInputEvent.f16037a) && this.f16038b == recordInputEvent.f16038b && this.f16039c == recordInputEvent.f16039c && this.f16040d == recordInputEvent.f16040d;
        }
        return true;
    }

    public int hashCode() {
        InputMode inputMode = this.f16037a;
        return ((((((inputMode != null ? inputMode.hashCode() : 0) * 31) + this.f16038b) * 31) + this.f16039c) * 31) + this.f16040d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RecordInputEvent(inputMode=");
        m8728C.append(this.f16037a);
        m8728C.append(", action=");
        m8728C.append(this.f16038b);
        m8728C.append(", recordStartEvent=");
        m8728C.append(this.f16039c);
        m8728C.append(", recordStopEvent=");
        return C22128a.m8697J2(m8728C, this.f16040d, ")");
    }
}
