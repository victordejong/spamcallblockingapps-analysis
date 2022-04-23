package p599h.p600d0.p605i;

import java.io.IOException;
import java.util.List;
import okhttp3.internal.http2.ErrorCode;
import p610i.AbstractC10264e;
/* renamed from: h.d0.i.j */
/* loaded from: classes2-dex2jar.jar:h/d0/i/j.class */
public interface AbstractC10189j {

    /* renamed from: a */
    public static final AbstractC10189j f37641a = new C10190a();

    /* renamed from: h.d0.i.j$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/j$a.class */
    public class C10190a implements AbstractC10189j {
        @Override // p599h.p600d0.p605i.AbstractC10189j
        /* renamed from: a */
        public void mo1124a(int i, ErrorCode errorCode) {
        }

        @Override // p599h.p600d0.p605i.AbstractC10189j
        /* renamed from: a */
        public boolean mo1127a(int i, AbstractC10264e eVar, int i2, boolean z) throws IOException {
            eVar.skip(i2);
            return true;
        }

        @Override // p599h.p600d0.p605i.AbstractC10189j
        /* renamed from: a */
        public boolean mo1126a(int i, List<C10156a> list) {
            return true;
        }

        @Override // p599h.p600d0.p605i.AbstractC10189j
        /* renamed from: a */
        public boolean mo1125a(int i, List<C10156a> list, boolean z) {
            return true;
        }
    }

    /* renamed from: a */
    void mo1124a(int i, ErrorCode errorCode);

    /* renamed from: a */
    boolean mo1127a(int i, AbstractC10264e eVar, int i2, boolean z) throws IOException;

    /* renamed from: a */
    boolean mo1126a(int i, List<C10156a> list);

    /* renamed from: a */
    boolean mo1125a(int i, List<C10156a> list, boolean z);
}
