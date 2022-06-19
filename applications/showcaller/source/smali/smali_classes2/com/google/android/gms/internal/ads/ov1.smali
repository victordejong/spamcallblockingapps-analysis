.class public final Lcom/google/android/gms/internal/ads/ov1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzbbm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/d21;

.field private final d:Landroid/telephony/TelephonyManager;

.field private final e:Lcom/google/android/gms/internal/ads/gv1;

.field private final f:Lcom/google/android/gms/internal/ads/cv1;

.field private final g:Lcom/google/android/gms/ads/internal/util/q1;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ov1;->a:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 2
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->f:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 3
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->e:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 4
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 5
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 6
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbm;->g:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    .line 7
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbm;->h:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 8
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 9
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 10
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 11
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    .line 12
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbm;->i:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    .line 13
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    .line 14
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/d21;Lcom/google/android/gms/internal/ads/gv1;Lcom/google/android/gms/internal/ads/cv1;Lcom/google/android/gms/ads/internal/util/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ov1;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ov1;->c:Lcom/google/android/gms/internal/ads/d21;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ov1;->e:Lcom/google/android/gms/internal/ads/gv1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ov1;->f:Lcom/google/android/gms/internal/ads/cv1;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ov1;->d:Landroid/telephony/TelephonyManager;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ov1;->g:Lcom/google/android/gms/ads/internal/util/q1;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ov1;)Lcom/google/android/gms/internal/ads/cv1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ov1;->f:Lcom/google/android/gms/internal/ads/cv1;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ov1;)Lcom/google/android/gms/ads/internal/util/q1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ov1;->g:Lcom/google/android/gms/ads/internal/util/q1;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ov1;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/so;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/so;->E()Lcom/google/android/gms/internal/ads/ko;

    move-result-object v0

    const-string v1, "cnt"

    const/4 v2, -0x2

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "gnt"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/ads/ov1;->h:I

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    .line 4
    iput v3, p0, Lcom/google/android/gms/internal/ads/ov1;->h:I

    const/4 p0, 0x3

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ko;->q(I)Lcom/google/android/gms/internal/ads/ko;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ko;->q(I)Lcom/google/android/gms/internal/ads/ko;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ko;->q(I)Lcom/google/android/gms/internal/ads/ko;

    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x3

    .line 8
    :goto_1
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ko;->r(I)Lcom/google/android/gms/internal/ads/ko;

    .line 9
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/so;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ov1;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbbm;
    .locals 1

    const-string p0, "device"

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/jk2;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "network"

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/jk2;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "active_network_state"

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object p1, Lcom/google/android/gms/internal/ads/ov1;->a:Landroid/util/SparseArray;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->d:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbm;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ov1;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/so;Lcom/google/android/gms/internal/ads/zzbbm;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzazx;",
            ">;",
            "Lcom/google/android/gms/internal/ads/so;",
            "Lcom/google/android/gms/internal/ads/zzbbm;",
            ")[B"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/xo;->O()Lcom/google/android/gms/internal/ads/wo;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/wo;->t(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/wo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ov1;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/internal/util/e;->f(Landroid/content/ContentResolver;)I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ov1;->g(Z)I

    move-result p2

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/wo;->B(I)Lcom/google/android/gms/internal/ads/wo;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ov1;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ov1;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/ads/internal/util/e;->p(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/wo;->C(I)Lcom/google/android/gms/internal/ads/wo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ov1;->e:Lcom/google/android/gms/internal/ads/gv1;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/gv1;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/wo;->r(J)Lcom/google/android/gms/internal/ads/wo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ov1;->e:Lcom/google/android/gms/internal/ads/gv1;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/gv1;->h()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/wo;->s(J)Lcom/google/android/gms/internal/ads/wo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ov1;->e:Lcom/google/android/gms/internal/ads/gv1;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/gv1;->b()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/wo;->w(I)Lcom/google/android/gms/internal/ads/wo;

    .line 10
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/wo;->x(Lcom/google/android/gms/internal/ads/zzbbm;)Lcom/google/android/gms/internal/ads/wo;

    .line 11
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/wo;->v(Lcom/google/android/gms/internal/ads/so;)Lcom/google/android/gms/internal/ads/wo;

    iget p2, p0, Lcom/google/android/gms/internal/ads/ov1;->h:I

    .line 12
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/wo;->D(I)Lcom/google/android/gms/internal/ads/wo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ov1;->g(Z)I

    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wo;->y(I)Lcom/google/android/gms/internal/ads/wo;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/wo;->q(J)Lcom/google/android/gms/internal/ads/wo;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ov1;->b:Landroid/content/Context;

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/internal/util/e;->e(Landroid/content/ContentResolver;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ov1;->g(Z)I

    move-result p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/wo;->A(I)Lcom/google/android/gms/internal/ads/wo;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/xo;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tc3;->K()[B

    move-result-object p0

    return-object p0
.end method

.method private static final g(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ov1;->c:Lcom/google/android/gms/internal/ads/d21;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d21;->a()Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/nv1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/nv1;-><init>(Lcom/google/android/gms/internal/ads/ov1;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void
.end method
