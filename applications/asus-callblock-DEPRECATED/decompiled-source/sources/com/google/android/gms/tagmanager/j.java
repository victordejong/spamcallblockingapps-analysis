package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/j.class */
final class j extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4412b = h.ENCODE.toString();
    private static final String c = i.ARG0.toString();
    private static final String d = i.NO_PADDING.toString();
    private static final String e = i.INPUT_FORMAT.toString();
    private static final String f = i.OUTPUT_FORMAT.toString();

    public j() {
        super(f4412b, c);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        k.a aVar;
        byte[] decode;
        String encodeToString;
        k.a aVar2 = map.get(c);
        if (aVar2 == null || aVar2 == cn.f()) {
            aVar = cn.f();
        } else {
            String a2 = cn.a(aVar2);
            k.a aVar3 = map.get(e);
            String a3 = aVar3 == null ? "text" : cn.a(aVar3);
            k.a aVar4 = map.get(f);
            String a4 = aVar4 == null ? "base16" : cn.a(aVar4);
            k.a aVar5 = map.get(d);
            int i = 2;
            if (aVar5 != null) {
                i = 2;
                if (cn.d(aVar5).booleanValue()) {
                    i = 3;
                }
            }
            try {
                if ("text".equals(a3)) {
                    decode = a2.getBytes();
                } else if ("base16".equals(a3)) {
                    decode = cy.a(a2);
                } else if ("base64".equals(a3)) {
                    decode = Base64.decode(a2, i);
                } else if ("base64url".equals(a3)) {
                    decode = Base64.decode(a2, i | 8);
                } else {
                    String valueOf = String.valueOf(a3);
                    an.a(valueOf.length() != 0 ? "Encode: unknown input format: ".concat(valueOf) : new String("Encode: unknown input format: "));
                    aVar = cn.f();
                }
                if ("base16".equals(a4)) {
                    encodeToString = cy.a(decode);
                } else if ("base64".equals(a4)) {
                    encodeToString = Base64.encodeToString(decode, i);
                } else if ("base64url".equals(a4)) {
                    encodeToString = Base64.encodeToString(decode, i | 8);
                } else {
                    String valueOf2 = String.valueOf(a4);
                    an.a(valueOf2.length() != 0 ? "Encode: unknown output format: ".concat(valueOf2) : new String("Encode: unknown output format: "));
                    aVar = cn.f();
                }
                aVar = cn.a((Object) encodeToString);
            } catch (IllegalArgumentException e2) {
                an.a("Encode: invalid input:");
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
