package androidx.media2.exoplayer.external.text.e;

import androidx.media2.exoplayer.external.text.b;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/e/a.class */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3869a = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))?\\s*");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3870b = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: c  reason: collision with root package name */
    private final StringBuilder f3871c = new StringBuilder();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<String> f3872d = new ArrayList<>();

    public a() {
        super("SubripDecoder");
    }

    private static float a(int i) {
        if (i == 0) {
            return 0.08f;
        }
        if (i == 1) {
            return 0.5f;
        }
        if (i == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    private static long a(Matcher matcher, int i) {
        return ((Long.parseLong(matcher.group(i + 1)) * 60 * 60 * 1000) + (Long.parseLong(matcher.group(i + 2)) * 60 * 1000) + (Long.parseLong(matcher.group(i + 3)) * 1000) + Long.parseLong(matcher.group(i + 4))) * 1000;
    }

    private static String a(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder(trim);
        Matcher matcher = f3870b.matcher(trim);
        int i = 0;
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            int start = matcher.start() - i;
            int length = group.length();
            sb.replace(start, start + length, "");
            i += length;
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0388 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0024 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013e  */
    @Override // androidx.media2.exoplayer.external.text.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.exoplayer.external.text.d a(byte[] r12, int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 1045
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.e.a.a(byte[], int, boolean):androidx.media2.exoplayer.external.text.d");
    }
}
