package com.squareup.okhttp.internal.framed;

import java.util.List;
import okio.BufferedSource;
/* renamed from: com.squareup.okhttp.internal.framed.l */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/l.class */
public interface AbstractC2905l {

    /* renamed from: a */
    public static final AbstractC2905l f12287a = new C2906a();

    /* renamed from: com.squareup.okhttp.internal.framed.l$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/l$a.class */
    static final class C2906a implements AbstractC2905l {
        C2906a() {
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2905l
        /* renamed from: a */
        public void mo1074a(int i, ErrorCode errorCode) {
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2905l
        public boolean onData(int i, BufferedSource bufferedSource, int i2, boolean z) {
            bufferedSource.skip(i2);
            return true;
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2905l
        public boolean onHeaders(int i, List<C2888e> list, boolean z) {
            return true;
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2905l
        public boolean onRequest(int i, List<C2888e> list) {
            return true;
        }
    }

    /* renamed from: a */
    void mo1074a(int i, ErrorCode errorCode);

    boolean onData(int i, BufferedSource bufferedSource, int i2, boolean z);

    boolean onHeaders(int i, List<C2888e> list, boolean z);

    boolean onRequest(int i, List<C2888e> list);
}
