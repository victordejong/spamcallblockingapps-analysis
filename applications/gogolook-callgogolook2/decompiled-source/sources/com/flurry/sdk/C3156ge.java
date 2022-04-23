package com.flurry.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
/* renamed from: com.flurry.sdk.ge */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ge.class */
public class C3156ge {

    /* renamed from: j */
    public static final String f5159j = "ge";

    /* renamed from: m */
    public static final int f5160m = C3442ky.m32483b(25);

    /* renamed from: n */
    public static final int f5161n = C3442ky.m32483b(25);

    /* renamed from: a */
    public Bitmap f5162a;

    /* renamed from: b */
    public Bitmap f5163b;

    /* renamed from: c */
    public Bitmap f5164c;

    /* renamed from: d */
    public Bitmap f5165d;

    /* renamed from: e */
    public Bitmap f5166e;

    /* renamed from: f */
    public Bitmap f5167f;

    /* renamed from: g */
    public Bitmap f5168g;

    /* renamed from: h */
    public Bitmap f5169h;

    /* renamed from: i */
    public Bitmap f5170i;

    /* renamed from: o */
    public boolean f5171o;

    /* renamed from: p */
    public Bitmap f5172p;

    /* renamed from: q */
    public Bitmap f5173q;

    /* renamed from: r */
    public Bitmap f5174r;

    /* renamed from: s */
    public Bitmap f5175s;

    /* renamed from: t */
    public Bitmap f5176t;

    /* renamed from: u */
    public Bitmap f5177u;

    /* renamed from: v */
    public Bitmap f5178v;

    /* renamed from: w */
    public Bitmap f5179w;

    static {
        C3442ky.m32483b(25);
        C3442ky.m32483b(25);
    }

    /* renamed from: a */
    public static Bitmap m32969a() {
        return Bitmap.createScaledBitmap(m32967a("iVBORw0KGgoAAAANSUhEUgAAACAAAAAfCAYAAACGVs+MAAAAAXNSR0IArs4c6QAAASdJREFUSA3FV0sOAiEMde0hvIMHGdeeyAt4SFcmrk2M9pE0wzQw9APYpA6U9r0HM8H0cFjtRsPzOh02Asci0e8U+JI/yUeKADY43uQX8mQn+kUQAkaKYHLmeRDfkTyZXOx9Eip8VRIrNjxNuKZkhQgXnquoICaEEyomMdH6tB8viLeucIj2nXQlZ0VaUG0e45qeLfDWuomsllwjqcVrOKG4JHsRGpyv1943aFGsFDGVnBVdafDJdo4xYlPsrycgyad+A5KcP7havOvraJG01kNitODaPJMYK6g1f1eMF8xbtxETBQnVh4qzbbhwXEUZqRya8EzJkmlnrsJVJe2QtJZK+GiIkqE7QZcy+l8tF4FWcGPo09Cv8fW6Wew4gQg0wUVbKIqEqfYDRCrjHcTBVnEAAAAASUVORK5CYII="), f5160m, f5161n, true);
    }

    /* renamed from: a */
    public static Bitmap m32968a(InputStream inputStream, boolean z) {
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
        if (decodeStream != null) {
            decodeStream.setDensity(z ? 320 : 160);
        }
        return decodeStream;
    }

    /* renamed from: a */
    public static Bitmap m32967a(String str) {
        byte[] decode = Base64.decode(str, 0);
        if (decode == null) {
            return null;
        }
        return m32968a((InputStream) new ByteArrayInputStream(decode), false);
    }

    /* renamed from: a */
    public static C2921cr m32966a(String str, String str2) {
        C2806af afVar = C3484p.m32358a().f6006h;
        File d = C2806af.m33633d(str2);
        C2921cr crVar = new C2921cr();
        crVar.f4515a = str;
        crVar.f4516b = EnumC2922cs.IMAGE;
        crVar.f4517c = "file://" + d.getAbsolutePath();
        return crVar;
    }

    /* renamed from: b */
    public static Bitmap m32965b() {
        return Bitmap.createScaledBitmap(m32967a("iVBORw0KGgoAAAANSUhEUgAAACIAAAAdCAYAAADPa766AAAAAXNSR0IArs4c6QAAAJhJREFUSA3tl1EKgDAMQ/ehBxK8/03EE4hH0EYIjMFAxlj2kUIoDArPrKs0pfbYonRvL+9TCYgrdIdkMIR4AgI6QktoaJQQcAVnQ8MQtNtO2Ak6wOyeoBMY1RhQnJiSYQUI/DcIochpDYBTDIEP/2IKR3IYeY8QZoqnaxg6UMu+JjtTc6B27p7564xkryEcr0m66eUw3dbNF6VbwqHE35rGAAAAAElFTkSuQmCC"), f5160m, f5161n, true);
    }

    /* renamed from: c */
    public static Bitmap m32964c() {
        return Bitmap.createScaledBitmap(m32967a("iVBORw0KGgoAAAANSUhEUgAAACIAAAAdCAYAAADPa766AAAAAXNSR0IArs4c6QAAAKZJREFUSA3tl0sKgDAMBQX1DJ5D8P43EbduxCPoe2BKAt1UStpFAqEfMB3G0tJxqBcbSi3Is17J8kqEuJEXci3/vM4XE8rsyOfLpjC0QICAgQQTYcboUIMwo2SYbpgxOtSgezO8GlLIadii5f2UYFoA6DUPwMzUoie9+8YIYTwit2HTb/EA4Bo5CM65RkCI7jARJsSAtLEnxERX75ouXnpihjC/j+0XyA7Dch+5ivoAAAAASUVORK5CYII="), f5160m, f5161n, true);
    }

    /* renamed from: d */
    public static Bitmap m32963d() {
        return Bitmap.createScaledBitmap(m32967a("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"), f5160m, f5161n, true);
    }

    /* JADX WARN: Not initialized variable reg: 12, insn: 0x0739: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r12 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:242:0x0735 */
    /* JADX WARN: Not initialized variable reg: 13, insn: 0x0735: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:242:0x0735 */
    /* JADX WARN: Removed duplicated region for block: B:231:0x06f7  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0720  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0753  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x076e  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x07a4  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x07bf  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x07da  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x07f5  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0810  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x082b  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0846  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0861  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x087c  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0897  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x08b2  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x08cd  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x08e8  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x0903  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32962e() {
        /*
            Method dump skipped, instructions count: 2417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3156ge.m32962e():void");
    }
}
