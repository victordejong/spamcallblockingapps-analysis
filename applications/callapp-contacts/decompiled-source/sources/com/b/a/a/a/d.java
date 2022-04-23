package com.b.a.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/d.class */
public class d extends c {

    /* renamed from: d  reason: collision with root package name */
    public static final a.AbstractC0755a f7041d = null;
    public static final a.AbstractC0755a e = null;
    public static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a i = null;
    private static final a.AbstractC0755a j = null;
    private static final a.AbstractC0755a k = null;
    private static final a.AbstractC0755a l = null;
    private static final a.AbstractC0755a m = null;
    private static final a.AbstractC0755a n = null;
    private static final a.AbstractC0755a o = null;
    private static final a.AbstractC0755a p = null;

    /* renamed from: a  reason: collision with root package name */
    public long f7042a;

    /* renamed from: b  reason: collision with root package name */
    public long f7043b;

    /* renamed from: c  reason: collision with root package name */
    public c f7044c;
    private long g;
    private long h;

    static {
        b();
    }

    public d() {
        super("trex");
    }

    private static void b() {
        b bVar = new b("TrackExtendsBox.java", d.class);
        i = bVar.a("method-execution", bVar.a("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 72);
        j = bVar.a("method-execution", bVar.a("1", "getDefaultSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 76);
        p = bVar.a("method-execution", bVar.a("1", "setDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "defaultSampleFlags", "", "void"), 112);
        f7041d = bVar.a("method-execution", bVar.a("1", "getDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 80);
        e = bVar.a("method-execution", bVar.a("1", "getDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 84);
        f = bVar.a("method-execution", bVar.a("1", "getDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 88);
        k = bVar.a("method-execution", bVar.a("1", "getDefaultSampleFlagsStr", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "java.lang.String"), 92);
        l = bVar.a("method-execution", bVar.a("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "trackId", "", "void"), 96);
        m = bVar.a("method-execution", bVar.a("1", "setDefaultSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleDescriptionIndex", "", "void"), 100);
        n = bVar.a("method-execution", bVar.a("1", "setDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleDuration", "", "void"), 104);
        o = bVar.a("method-execution", bVar.a("1", "setDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleSize", "", "void"), 108);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.g = e.a(byteBuffer);
        this.h = e.a(byteBuffer);
        this.f7042a = e.a(byteBuffer);
        this.f7043b = e.a(byteBuffer);
        this.f7044c = new c(byteBuffer);
    }

    public final long a() {
        a a2 = b.a(i, this, this);
        h.a();
        h.a(a2);
        return this.g;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.g);
        f.b(byteBuffer, this.h);
        f.b(byteBuffer, this.f7042a);
        f.b(byteBuffer, this.f7043b);
        this.f7044c.a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return 24L;
    }
}
