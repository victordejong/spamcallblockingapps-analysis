package androidx.emoji2.text;

import androidx.emoji2.text.C0354d;
import androidx.emoji2.text.EmojiCompatInitializer;
import java.util.concurrent.ThreadPoolExecutor;
/* renamed from: androidx.emoji2.text.f */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/f.class */
public class C0366f extends C0354d.AbstractC0363h {

    /* renamed from: a */
    public final /* synthetic */ C0354d.AbstractC0363h f1603a;

    /* renamed from: b */
    public final /* synthetic */ ThreadPoolExecutor f1604b;

    public C0366f(EmojiCompatInitializer.C0345b c0345b, C0354d.AbstractC0363h abstractC0363h, ThreadPoolExecutor threadPoolExecutor) {
        this.f1603a = abstractC0363h;
        this.f1604b = threadPoolExecutor;
    }

    @Override // androidx.emoji2.text.C0354d.AbstractC0363h
    /* renamed from: a */
    public void mo8241a(Throwable th) {
        try {
            this.f1603a.mo8241a(th);
        } finally {
            this.f1604b.shutdown();
        }
    }

    @Override // androidx.emoji2.text.C0354d.AbstractC0363h
    /* renamed from: b */
    public void mo8240b(C0377m c0377m) {
        try {
            this.f1603a.mo8240b(c0377m);
        } finally {
            this.f1604b.shutdown();
        }
    }
}
