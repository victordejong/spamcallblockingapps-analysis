package kotlin.p009io;

import java.io.BufferedReader;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0010\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"kotlin/io/LinesSequence$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "hasNext", "()Z", "", "next", "()Ljava/lang/String;", "done", "Z", "nextValue", "Ljava/lang/String;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: kotlin.io.LinesSequence$iterator$1 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/LinesSequence$iterator$1.class */
public final class LinesSequence$iterator$1 implements Iterator<String>, KMappedMarker {

    /* renamed from: f */
    private String f20705f;

    /* renamed from: g */
    private boolean f20706g;

    /* renamed from: h */
    final /* synthetic */ LinesSequence f20707h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LinesSequence$iterator$1(LinesSequence linesSequence) {
        this.f20707h = linesSequence;
    }

    @NotNull
    /* renamed from: a */
    public String next() {
        if (hasNext()) {
            String str = this.f20705f;
            this.f20705f = null;
            Intrinsics.m1832c(str);
            return str;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        BufferedReader bufferedReader;
        boolean z = true;
        if (this.f20705f == null && !this.f20706g) {
            bufferedReader = this.f20707h.f20704a;
            String readLine = bufferedReader.readLine();
            this.f20705f = readLine;
            if (readLine == null) {
                this.f20706g = true;
            }
        }
        if (this.f20705f == null) {
            z = false;
        }
        return z;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
