package com.liulishuo.filedownloader.message;
/* renamed from: com.liulishuo.filedownloader.message.b */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/b.class */
public class C9369b {

    /* renamed from: a */
    private volatile C9373d f40091a;

    /* renamed from: b */
    private volatile AbstractC9371b f40092b;

    /* renamed from: com.liulishuo.filedownloader.message.b$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/b$a.class */
    public static final class C9370a {

        /* renamed from: a */
        private static final C9369b f40093a = new C9369b();
    }

    /* renamed from: com.liulishuo.filedownloader.message.b$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/b$b.class */
    public interface AbstractC9371b {
        /* renamed from: D0 */
        void mo792D0(MessageSnapshot messageSnapshot);
    }

    /* renamed from: a */
    public static C9369b m885a() {
        return C9370a.f40093a;
    }

    /* renamed from: b */
    public void m884b(MessageSnapshot messageSnapshot) {
        if (messageSnapshot instanceof AbstractC9368a) {
            if (this.f40092b == null) {
                return;
            }
            this.f40092b.mo792D0(messageSnapshot);
        } else if (this.f40091a == null) {
        } else {
            this.f40091a.m875b(messageSnapshot);
        }
    }

    /* renamed from: c */
    public void m883c(AbstractC9371b abstractC9371b) {
        this.f40092b = abstractC9371b;
        if (abstractC9371b == null) {
            this.f40091a = null;
        } else {
            this.f40091a = new C9373d(5, abstractC9371b);
        }
    }
}
