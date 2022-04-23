package androidx.media2.exoplayer.external.text.d;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.text.b;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.k;
import androidx.media2.exoplayer.external.util.p;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/d/a.class */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3863a = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)");

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3864b;

    /* renamed from: c  reason: collision with root package name */
    private int f3865c;

    /* renamed from: d  reason: collision with root package name */
    private int f3866d;
    private int e;
    private int f;

    public a() {
        this(null);
    }

    public a(List<byte[]> list) {
        super("SsaDecoder");
        if (list == null || list.isEmpty()) {
            this.f3864b = false;
            return;
        }
        this.f3864b = true;
        String a2 = ac.a(list.get(0));
        androidx.media2.exoplayer.external.util.a.a(a2.startsWith("Format: "));
        a(a2);
        a(new p(list.get(1)));
    }

    private static void a(p pVar) {
        String r;
        do {
            r = pVar.r();
            if (r == null) {
                return;
            }
        } while (!r.startsWith("[Events]"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(androidx.media2.exoplayer.external.util.p r8, java.util.List<androidx.media2.exoplayer.external.text.a> r9, androidx.media2.exoplayer.external.util.k r10) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.d.a.a(androidx.media2.exoplayer.external.util.p, java.util.List, androidx.media2.exoplayer.external.util.k):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void a(String str) {
        char c2;
        String[] split = TextUtils.split(str.substring(8), ",");
        this.f3865c = split.length;
        this.f3866d = -1;
        this.e = -1;
        this.f = -1;
        for (int i = 0; i < this.f3865c; i++) {
            String d2 = ac.d(split[i].trim());
            d2.hashCode();
            switch (d2.hashCode()) {
                case 100571:
                    if (d2.equals("end")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3556653:
                    if (d2.equals("text")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109757538:
                    if (d2.equals(EventConstants.START)) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    this.e = i;
                    break;
                case 1:
                    this.f = i;
                    break;
                case 2:
                    this.f3866d = i;
                    break;
            }
        }
        if (this.f3866d == -1 || this.e == -1 || this.f == -1) {
            this.f3865c = 0;
        }
    }

    private static long b(String str) {
        Matcher matcher = f3863a.matcher(str);
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        return (Long.parseLong(matcher.group(1)) * 60 * 60 * 1000000) + (Long.parseLong(matcher.group(2)) * 60 * 1000000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(4)) * 10000);
    }

    @Override // androidx.media2.exoplayer.external.text.b
    public final d a(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        k kVar = new k();
        p pVar = new p(bArr, i);
        if (!this.f3864b) {
            a(pVar);
        }
        a(pVar, arrayList, kVar);
        androidx.media2.exoplayer.external.text.a[] aVarArr = new androidx.media2.exoplayer.external.text.a[arrayList.size()];
        arrayList.toArray(aVarArr);
        return new b(aVarArr, kVar.a());
    }
}
