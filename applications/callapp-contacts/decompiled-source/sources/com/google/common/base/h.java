package com.google.common.base;

import java.io.IOException;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final String f31924a;

    /* renamed from: com.google.common.base.h$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/h$1.class */
    final class AnonymousClass1 extends h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31925a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(h hVar, String str) {
            super(hVar, null);
            this.f31925a = str;
        }

        @Override // com.google.common.base.h
        final CharSequence a(Object obj) {
            return obj == null ? this.f31925a : h.this.a(obj);
        }
    }

    private h(h hVar) {
        this.f31924a = hVar.f31924a;
    }

    /* synthetic */ h(h hVar, AnonymousClass1 r5) {
        this(hVar);
    }

    private h(String str) {
        this.f31924a = (String) m.a(str);
    }

    public static h a(char c2) {
        return new h(StringUtils.SPACE);
    }

    private String a(Iterator<?> it2) {
        return a(new StringBuilder(), it2).toString();
    }

    private StringBuilder a(StringBuilder sb, Iterator<?> it2) {
        try {
            m.a(sb);
            if (it2.hasNext()) {
                sb.append(a(it2.next()));
                while (it2.hasNext()) {
                    sb.append((CharSequence) this.f31924a);
                    sb.append(a(it2.next()));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    CharSequence a(Object obj) {
        m.a(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final String a(Iterable<?> iterable) {
        return a(iterable.iterator());
    }
}
