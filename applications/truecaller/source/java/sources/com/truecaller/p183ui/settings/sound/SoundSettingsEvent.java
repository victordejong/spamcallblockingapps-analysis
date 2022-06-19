package com.truecaller.p183ui.settings.sound;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.account.network.TokenResponseDto;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: com.truecaller.ui.settings.sound.SoundSettingsEvent */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/sound/SoundSettingsEvent.class */
public final class SoundSettingsEvent implements AbstractC19549v {

    /* renamed from: a */
    public final String f15864a;

    /* renamed from: b */
    public final Type f15865b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "CALL", "SMS", "IM", "FLASH", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.ui.settings.sound.SoundSettingsEvent$Type */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/sound/SoundSettingsEvent$Type.class */
    public enum Type {
        CALL("call"),
        SMS(TokenResponseDto.METHOD_SMS),
        IM("im"),
        FLASH("flash");
        
        private final String value;

        Type(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    public SoundSettingsEvent(String str, Type type) {
        l.e(str, RemoteMessageConst.Notification.SOUND);
        l.e(type, "messageType");
        this.f15864a = str;
        this.f15865b = type;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        return AbstractC19580x.C19583c.f54428a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SoundSettingsEvent)) {
                return false;
            }
            SoundSettingsEvent soundSettingsEvent = (SoundSettingsEvent) obj;
            return l.a(this.f15864a, soundSettingsEvent.f15864a) && l.a(this.f15865b, soundSettingsEvent.f15865b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f15864a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Type type = this.f15865b;
        if (type != null) {
            i = type.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SoundSettingsEvent(sound=");
        m8728C.append(this.f15864a);
        m8728C.append(", messageType=");
        m8728C.append(this.f15865b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
