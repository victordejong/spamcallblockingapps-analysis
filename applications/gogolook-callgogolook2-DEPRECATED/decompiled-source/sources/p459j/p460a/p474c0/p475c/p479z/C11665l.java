package p459j.p460a.p474c0.p475c.p479z;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.rastermill.FrameSequence;
import android.support.rastermill.FrameSequenceDrawable;
import java.io.IOException;
import java.io.InputStream;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.c.z.l */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/l.class */
public class C11665l extends AbstractC11669o {

    /* renamed from: f */
    public FrameSequence f26180f;

    public C11665l(String str, FrameSequence frameSequence) {
        super(str, 1);
        this.f26180f = frameSequence;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static C11665l m8690a(String str, InputStream inputStream) {
        try {
            FrameSequence decodeStream = FrameSequence.decodeStream(inputStream);
            try {
                inputStream.close();
            } catch (IOException e) {
            }
            if (decodeStream == null) {
                return null;
            }
            return new C11665l(str, decodeStream);
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e2) {
            }
            throw th;
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: a */
    public Drawable mo8677a(Resources resources) {
        return new FrameSequenceDrawable(this.f26180f);
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: e */
    public void mo8613e() {
        m8619a();
        try {
            if (this.f26180f != null) {
                this.f26180f = null;
            }
        } finally {
            m8605m();
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: h */
    public int mo8610h() {
        C12151d.m7005a("GifImageResource should not be used by a media cache");
        return 0;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: j */
    public boolean mo8608j() {
        return false;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: n */
    public Bitmap mo8676n() {
        C12151d.m7005a("GetBitmap() should never be called on a gif.");
        return null;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: o */
    public byte[] mo8675o() {
        C12151d.m7005a("GetBytes() should never be called on a gif.");
        return null;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: q */
    public Bitmap mo8673q() {
        return null;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: r */
    public boolean mo8672r() {
        return false;
    }
}
