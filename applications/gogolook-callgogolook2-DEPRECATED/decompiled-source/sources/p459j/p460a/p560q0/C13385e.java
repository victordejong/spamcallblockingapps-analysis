package p459j.p460a.p560q0;

import android.text.TextUtils;
import android.util.Log;
import android.widget.SectionIndexer;
import androidx.exifinterface.media.ExifInterface;
import java.util.HashMap;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.q0.e */
/* loaded from: classes3-dex2jar.jar:j/a/q0/e.class */
public class C13385e implements SectionIndexer {

    /* renamed from: a */
    public String[] f30116a;

    /* renamed from: b */
    public HashMap<Integer, String> f30117b;

    /* renamed from: c */
    public AbstractC13387b f30118c;

    /* renamed from: d */
    public HashMap<String, Integer> f30119d;

    /* renamed from: j.a.q0.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/q0/e$a.class */
    public static class C13386a {

        /* renamed from: a */
        public static final String[] f30120a = {"#", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z"};

        /* renamed from: b */
        public static final String[] f30121b = {"あ", "か", "さ", "た", "な", "は", "ま", "や", "ら", "わ", "他", "#", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z"};

        /* renamed from: c */
        public static final String[] f30122c = {"ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ", "ㅀ", "ㅄ", "ㅏ", "ㅐ", "ㅑ", "ㅒ", "ㅓ", "ㅔ", "ㅕ", "ㅖ", "ㅗ", "ㅘ", "ㅙ", "ㅚ", "ㅛ", "ㅜ", "ㅝ", "ㅞ", "ㅟ", "ㅠ", "ㅡ", "ㅢ", "ㅣ", "ㄳ", "ㄵ", "ㄶ", "ㄺ", "ㄻ", "ㄼ", "ㄽ", "ㄾ", "ㄿ", "#", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z"};
    }

    /* renamed from: j.a.q0.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/q0/e$b.class */
    public interface AbstractC13387b {
        /* renamed from: a */
        void m4089a();
    }

    /* renamed from: j.a.q0.e$c */
    /* loaded from: classes3-dex2jar.jar:j/a/q0/e$c.class */
    public class C13388c {

        /* renamed from: a */
        public String f30123a;

        /* renamed from: b */
        public int f30124b = 0;

        public C13388c(C13385e eVar, String str) {
            this.f30123a = str;
        }

        /* renamed from: a */
        public void m4088a() {
            this.f30124b++;
        }
    }

    public C13385e() {
        this.f30119d = null;
        this.f30116a = m4091a();
    }

    public C13385e(String[] strArr, HashMap<String, Integer> hashMap) {
        this.f30119d = null;
        this.f30116a = strArr;
        this.f30119d = hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
        if (r0.length() == 0) goto L_0x004a;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m4090a(java.util.ArrayList<p459j.p460a.p531k0.C12845a> r7) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p560q0.C13385e.m4090a(java.util.ArrayList):void");
    }

    /* renamed from: a */
    public final String[] m4091a() {
        return C14017g4.m2832D() ? C13386a.f30121b : C14017g4.m2831E() ? C13386a.f30122c : C13386a.f30120a;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        HashMap<String, Integer> hashMap = this.f30119d;
        int i2 = 0;
        if (hashMap != null) {
            if (hashMap.size() == 0) {
                i2 = 0;
            } else {
                String str = this.f30116a[i];
                if (TextUtils.isEmpty(str)) {
                    return 0;
                }
                try {
                    i2 = this.f30119d.get(str).intValue();
                } catch (Exception e) {
                    Log.e("SectionIndex", String.format("Failed to get postion for section :%s", str));
                    e.printStackTrace();
                    i2 = 0;
                }
            }
        }
        return i2;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        HashMap<String, Integer> hashMap = this.f30119d;
        if (hashMap == null || hashMap.size() == 0) {
            return 0;
        }
        for (int length = this.f30116a.length; length >= 0; length--) {
            if (this.f30119d.get(this.f30116a[length]).intValue() < i) {
                return length;
            }
        }
        return 0;
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return this.f30116a;
    }
}
