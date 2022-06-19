package p152l0;

import com.google.android.gms.ads.rewarded.RewardItem;
import p134j4.AbstractC3183a1;
import p134j4.C3187b1;
/* renamed from: l0.c */
/* loaded from: classes-dex2jar.jar:l0/c.class */
public class C3428c implements RewardItem, AbstractC3183a1 {

    /* renamed from: a */
    public int f11487a;

    /* renamed from: b */
    public final Object f11488b;

    public /* synthetic */ C3428c(int i) {
        if (i > 0) {
            this.f11488b = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    public /* synthetic */ C3428c(Object obj, int i) {
        this.f11488b = obj;
        this.f11487a = i;
    }

    /* renamed from: a */
    public Object mo2303a() {
        int i = this.f11487a;
        if (i > 0) {
            int i2 = i - 1;
            Object obj = this.f11488b;
            Object obj2 = ((Object[]) obj)[i2];
            ((Object[]) obj)[i2] = null;
            this.f11487a = i - 1;
            return obj2;
        }
        return null;
    }

    /* renamed from: b */
    public boolean mo2302b(Object obj) {
        int i;
        boolean z;
        int i2 = 0;
        while (true) {
            i = this.f11487a;
            if (i2 >= i) {
                z = false;
                break;
            } else if (((Object[]) this.f11488b)[i2] == obj) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            Object obj2 = this.f11488b;
            if (i >= ((Object[]) obj2).length) {
                return false;
            }
            ((Object[]) obj2)[i] = obj;
            this.f11487a = i + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public int getAmount() {
        return this.f11487a;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public String getType() {
        return (String) this.f11488b;
    }

    @Override // p134j4.AbstractC3183a1
    public Object zza() {
        ((C3187b1) this.f11488b).m2563a(this.f11487a).f11065c.f11054d = 5;
        return null;
    }
}
