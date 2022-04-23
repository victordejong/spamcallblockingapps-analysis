package com.liulishuo.filedownloader.message;
/* renamed from: com.liulishuo.filedownloader.message.b */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/b.class */
public class C2764b {

    /* renamed from: a */
    private volatile C2768d f11494a;

    /* renamed from: b */
    private volatile AbstractC2766b f11495b;

    /* renamed from: com.liulishuo.filedownloader.message.b$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/b$a.class */
    public static final class C2765a {

        /* renamed from: a */
        private static final C2764b f11496a = new C2764b();
    }

    /* renamed from: com.liulishuo.filedownloader.message.b$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/b$b.class */
    public interface AbstractC2766b {
        /* renamed from: r1 */
        void mo244r1(MessageSnapshot messageSnapshot);
    }

    /* renamed from: a */
    public static C2764b m1840a() {
        return C2765a.f11496a;
    }

    /* renamed from: b */
    public void m1839b(MessageSnapshot messageSnapshot) {
        if (messageSnapshot instanceof AbstractC2763a) {
            if (this.f11495b != null) {
                this.f11495b.mo244r1(messageSnapshot);
            }
        } else if (this.f11494a != null) {
            this.f11494a.m1830b(messageSnapshot);
        }
    }

    /* renamed from: c */
    public void m1838c(AbstractC2766b bVar) {
        this.f11495b = bVar;
        if (bVar == null) {
            this.f11494a = null;
        } else {
            this.f11494a = new C2768d(5, bVar);
        }
    }
}
