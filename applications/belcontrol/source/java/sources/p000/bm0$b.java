package p000;
/* renamed from: bm0$b */
/* loaded from: classes-dex2jar.jar:bm0$b.class */
public enum bm0$b {
    Login(0),
    Share(1),
    Message(2),
    Like(3),
    GameRequest(4),
    AppGroupCreate(5),
    AppGroupJoin(6),
    AppInvite(7),
    DeviceShare(8);
    

    /* renamed from: a */
    public final int f1990a;

    bm0$b(int i) {
        this.f1990a = i;
    }

    /* renamed from: a */
    public int m5606a() {
        return ui0.l() + this.f1990a;
    }
}
