package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/v.class */
final class v extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4421b = h.HASH.toString();
    private static final String c = i.ARG0.toString();
    private static final String d = i.ALGORITHM.toString();
    private static final String e = i.INPUT_FORMAT.toString();

    public v() {
        super(f4421b, c);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        k.a aVar;
        byte[] bArr;
        k.a aVar2 = map.get(c);
        if (aVar2 == null || aVar2 == cn.f()) {
            aVar = cn.f();
        } else {
            String a2 = cn.a(aVar2);
            k.a aVar3 = map.get(d);
            String a3 = aVar3 == null ? "MD5" : cn.a(aVar3);
            k.a aVar4 = map.get(e);
            String a4 = aVar4 == null ? "text" : cn.a(aVar4);
            if ("text".equals(a4)) {
                bArr = a2.getBytes();
            } else if ("base16".equals(a4)) {
                bArr = cy.a(a2);
            } else {
                String valueOf = String.valueOf(a4);
                an.a(valueOf.length() != 0 ? "Hash: unknown input format: ".concat(valueOf) : new String("Hash: unknown input format: "));
                aVar = cn.f();
            }
            try {
                MessageDigest instance = MessageDigest.getInstance(a3);
                instance.update(bArr);
                aVar = cn.a((Object) cy.a(instance.digest()));
            } catch (NoSuchAlgorithmException e2) {
                String valueOf2 = String.valueOf(a3);
                an.a(valueOf2.length() != 0 ? "Hash: unknown algorithm: ".concat(valueOf2) : new String("Hash: unknown algorithm: "));
                aVar = cn.f();
            }
        }
        return aVar;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
