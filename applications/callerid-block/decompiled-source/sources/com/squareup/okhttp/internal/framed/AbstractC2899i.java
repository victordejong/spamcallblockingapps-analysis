package com.squareup.okhttp.internal.framed;
/* renamed from: com.squareup.okhttp.internal.framed.i */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/i.class */
public interface AbstractC2899i {

    /* renamed from: a */
    public static final AbstractC2899i f12279a = new C2900a();

    /* renamed from: com.squareup.okhttp.internal.framed.i$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/i$a.class */
    static final class C2900a implements AbstractC2899i {
        C2900a() {
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2899i
        /* renamed from: a */
        public void mo1084a(C2883d dVar) {
            dVar.m1172l(ErrorCode.REFUSED_STREAM);
        }
    }

    /* renamed from: a */
    void mo1084a(C2883d dVar);
}
