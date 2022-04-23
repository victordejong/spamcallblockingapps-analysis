package com.bumptech.glide.load.engine.b;

import androidx.core.e.c;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.g.a.b;
import com.bumptech.glide.g.g;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.f;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final g<f, String> f7500a = new g<>(1000);

    /* renamed from: b  reason: collision with root package name */
    private final c.a<a> f7501b = com.bumptech.glide.g.a.a.a(10, new a.AbstractC0143a<a>() { // from class: com.bumptech.glide.load.engine.b.j.1
        private static a b() {
            try {
                return new a(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.bumptech.glide.g.a.a.AbstractC0143a
        public final /* synthetic */ a a() {
            return b();
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/j$a.class */
    public static final class a implements a.c {

        /* renamed from: a  reason: collision with root package name */
        final MessageDigest f7503a;

        /* renamed from: b  reason: collision with root package name */
        private final b f7504b = new b.a();

        a(MessageDigest messageDigest) {
            this.f7503a = messageDigest;
        }

        @Override // com.bumptech.glide.g.a.a.c
        public final b m_() {
            return this.f7504b;
        }
    }

    private String b(f fVar) {
        a aVar = (a) com.bumptech.glide.g.j.a(this.f7501b.a(), "Argument must not be null");
        try {
            fVar.updateDiskCacheKey(aVar.f7503a);
            return k.a(aVar.f7503a.digest());
        } finally {
            this.f7501b.a(aVar);
        }
    }

    public final String a(f fVar) {
        String str;
        synchronized (this.f7500a) {
            str = this.f7500a.get(fVar);
        }
        String str2 = str;
        if (str == null) {
            str2 = b(fVar);
        }
        synchronized (this.f7500a) {
            this.f7500a.put(fVar, str2);
        }
        return str2;
    }
}
