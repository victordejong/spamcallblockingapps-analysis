package p193e.p194a.p1365y.p1389g;

import android.text.TextUtils;
import com.truecaller.flashsdk.C3909R;
/* renamed from: e.a.y.g.a */
/* loaded from: classes9-dex2jar.jar:e/a/y/g/a.class */
public class C21743a implements AbstractC21745c {

    /* renamed from: a */
    public String f60557a;

    /* renamed from: b */
    public String f60558b;

    /* renamed from: c */
    public String f60559c;

    public C21743a(String str, String str2, String str3) {
        this.f60557a = str;
        this.f60558b = str2;
        this.f60559c = str3;
    }

    @Override // p193e.p194a.p1365y.p1389g.AbstractC21745c
    /* renamed from: a */
    public int mo9138a() {
        return C3909R.layout.flashsdk_item_favourite_contact;
    }

    public boolean equals(Object obj) {
        if (obj.getClass() != C21743a.class) {
            return false;
        }
        C21743a c21743a = (C21743a) obj;
        boolean z = false;
        if (TextUtils.equals(this.f60557a, c21743a.f60557a)) {
            z = false;
            if (TextUtils.equals(this.f60558b, c21743a.f60558b)) {
                z = false;
                if (TextUtils.equals(this.f60559c, c21743a.f60559c)) {
                    z = true;
                }
            }
        }
        return z;
    }
}
