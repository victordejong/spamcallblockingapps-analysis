package androidx.media;

import android.os.Build;
import androidx.media.AudioAttributesImplApi21;
import androidx.media.AudioAttributesImplApi26;
import androidx.media.AudioAttributesImplBase;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat$a.class */
public class AudioAttributesCompat$a {

    /* renamed from: a */
    public final AudioAttributesImpl$a f1030a;

    public AudioAttributesCompat$a() {
        AudioAttributesImplBase.a aVar;
        if (AudioAttributesCompat.c) {
            aVar = new AudioAttributesImplBase.a();
        } else {
            int i = Build.VERSION.SDK_INT;
            aVar = i >= 26 ? new AudioAttributesImplApi26.a() : i >= 21 ? new AudioAttributesImplApi21.a() : new AudioAttributesImplBase.a();
        }
        this.f1030a = aVar;
    }

    /* renamed from: a */
    public AudioAttributesCompat m6579a() {
        return new AudioAttributesCompat(this.f1030a.build());
    }

    /* renamed from: b */
    public AudioAttributesCompat$a m6578b(int i) {
        this.f1030a.m6572c(i);
        return this;
    }

    /* renamed from: c */
    public AudioAttributesCompat$a m6577c(int i) {
        this.f1030a.setFlags(i);
        return this;
    }

    /* renamed from: d */
    public AudioAttributesCompat$a m6576d(int i) {
        this.f1030a.m6573b(i);
        return this;
    }

    /* renamed from: e */
    public AudioAttributesCompat$a m6575e(int i) {
        this.f1030a.m6574a(i);
        return this;
    }
}
