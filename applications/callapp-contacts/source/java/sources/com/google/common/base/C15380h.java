package com.google.common.base;

import java.io.IOException;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.common.base.h */
/* loaded from: classes4-dex2jar.jar:com/google/common/base/h.class */
public class C15380h {

    /* renamed from: a */
    private final String f55626a;

    /* renamed from: com.google.common.base.h$1 */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/h$1.class */
    final class C153811 extends C15380h {

        /* renamed from: a */
        final /* synthetic */ String f55627a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C153811(C15380h c15380h, String str) {
            super(c15380h, null);
            C15380h.this = r5;
            this.f55627a = str;
        }

        @Override // com.google.common.base.C15380h
        /* renamed from: a */
        final CharSequence mo8956a(Object obj) {
            return obj == null ? this.f55627a : C15380h.this.mo8956a(obj);
        }
    }

    private C15380h(C15380h c15380h) {
        this.f55626a = c15380h.f55626a;
    }

    /* synthetic */ C15380h(C15380h c15380h, C153811 c153811) {
        this(c15380h);
    }

    private C15380h(String str) {
        this.f55626a = (String) C15391m.m8946a(str);
    }

    /* renamed from: a */
    public static C15380h m8960a(char c) {
        return new C15380h(StringUtils.SPACE);
    }

    /* renamed from: a */
    private String m8957a(Iterator<?> it2) {
        return m8958a(new StringBuilder(), it2).toString();
    }

    /* renamed from: a */
    private StringBuilder m8958a(StringBuilder sb, Iterator<?> it2) {
        try {
            C15391m.m8946a(sb);
            if (it2.hasNext()) {
                sb.append(mo8956a(it2.next()));
                while (it2.hasNext()) {
                    sb.append((CharSequence) this.f55626a);
                    sb.append(mo8956a(it2.next()));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    CharSequence mo8956a(Object obj) {
        C15391m.m8946a(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    /* renamed from: a */
    public final String m8959a(Iterable<?> iterable) {
        return m8957a(iterable.iterator());
    }
}
