.class public final Lcom/google/android/gms/internal/ads/uy0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzwx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/x60;

.field private final c:Landroid/telephony/TelephonyManager;

.field private final d:Lcom/google/android/gms/internal/ads/ny0;

.field private final e:Lcom/google/android/gms/internal/ads/jy0;

.field private final f:Lcom/google/android/gms/ads/internal/util/a1;

.field private g:Lcom/google/android/gms/internal/ads/zzvy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/uy0;->h:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzwx;->d:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzwx;->c:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzwx;->e:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzwx;->f:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzwx;->g:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/x60;Lcom/google/android/gms/internal/ads/ny0;Lcom/google/android/gms/internal/ads/jy0;Lcom/google/android/gms/ads/internal/util/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uy0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uy0;->b:Lcom/google/android/gms/internal/ads/x60;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uy0;->d:Lcom/google/android/gms/internal/ads/ny0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uy0;->e:Lcom/google/android/gms/internal/ads/jy0;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uy0;->c:Landroid/telephony/TelephonyManager;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/uy0;->f:Lcom/google/android/gms/ads/internal/util/a1;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/uy0;)Lcom/google/android/gms/ads/internal/util/a1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/uy0;->f:Lcom/google/android/gms/ads/internal/util/a1;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/uy0;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzwx;
    .locals 1

    const-string p0, "device"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/dm1;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "network"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dm1;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "active_network_state"

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object p1, Lcom/google/android/gms/internal/ads/uy0;->h:Landroid/util/SparseArray;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwx;->b:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzwx;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/uy0;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/qx2;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/qx2;->I()Lcom/google/android/gms/internal/ads/nx2;

    move-result-object v0

    const-string v1, "cnt"

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "gnt"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzvy;->c:Lcom/google/android/gms/internal/ads/zzvy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uy0;->g:Lcom/google/android/gms/internal/ads/zzvy;

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzvy;->b:Lcom/google/android/gms/internal/ads/zzvy;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/uy0;->g:Lcom/google/android/gms/internal/ads/zzvy;

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    if-eq v1, p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzwn;->b:Lcom/google/android/gms/internal/ads/zzwn;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwn;->d:Lcom/google/android/gms/internal/ads/zzwn;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwn;->c:Lcom/google/android/gms/internal/ads/zzwn;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/nx2;->q(Lcom/google/android/gms/internal/ads/zzwn;)Lcom/google/android/gms/internal/ads/nx2;

    packed-switch p1, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzwk;->b:Lcom/google/android/gms/internal/ads/zzwk;

    goto :goto_1

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwk;->e:Lcom/google/android/gms/internal/ads/zzwk;

    goto :goto_1

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwk;->d:Lcom/google/android/gms/internal/ads/zzwk;

    goto :goto_1

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwk;->c:Lcom/google/android/gms/internal/ads/zzwk;

    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/nx2;->r(Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/nx2;

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/qx2;

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

.method static synthetic e(Lcom/google/android/gms/internal/ads/uy0;)Lcom/google/android/gms/internal/ads/jy0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/uy0;->e:Lcom/google/android/gms/internal/ads/jy0;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/uy0;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/qx2;Lcom/google/android/gms/internal/ads/zzwx;)[B
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/vx2;->U()Lcom/google/android/gms/internal/ads/ux2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ux2;->u(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/ux2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/uy0;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->f()Lcom/google/android/gms/ads/internal/util/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/internal/util/d;->f(Landroid/content/ContentResolver;)I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/uy0;->g(Z)Lcom/google/android/gms/internal/ads/zzvy;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ux2;->y(Lcom/google/android/gms/internal/ads/zzvy;)Lcom/google/android/gms/internal/ads/ux2;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->f()Lcom/google/android/gms/ads/internal/util/d;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uy0;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/uy0;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/ads/internal/util/d;->p(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzvy;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ux2;->z(Lcom/google/android/gms/internal/ads/zzvy;)Lcom/google/android/gms/internal/ads/ux2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/uy0;->d:Lcom/google/android/gms/internal/ads/ny0;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ny0;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/ux2;->s(J)Lcom/google/android/gms/internal/ads/ux2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/uy0;->d:Lcom/google/android/gms/internal/ads/ny0;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ny0;->h()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/ux2;->t(J)Lcom/google/android/gms/internal/ads/ux2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/uy0;->d:Lcom/google/android/gms/internal/ads/ny0;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ny0;->b()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ux2;->D(I)Lcom/google/android/gms/internal/ads/ux2;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/ux2;->G(Lcom/google/android/gms/internal/ads/zzwx;)Lcom/google/android/gms/internal/ads/ux2;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/ux2;->v(Lcom/google/android/gms/internal/ads/qx2;)Lcom/google/android/gms/internal/ads/ux2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/uy0;->g:Lcom/google/android/gms/internal/ads/zzvy;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ux2;->E(Lcom/google/android/gms/internal/ads/zzvy;)Lcom/google/android/gms/internal/ads/ux2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uy0;->g(Z)Lcom/google/android/gms/internal/ads/zzvy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ux2;->r(Lcom/google/android/gms/internal/ads/zzvy;)Lcom/google/android/gms/internal/ads/ux2;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ux2;->q(J)Lcom/google/android/gms/internal/ads/ux2;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/uy0;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->f()Lcom/google/android/gms/ads/internal/util/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/internal/util/d;->e(Landroid/content/ContentResolver;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uy0;->g(Z)Lcom/google/android/gms/internal/ads/zzvy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ux2;->w(Lcom/google/android/gms/internal/ads/zzvy;)Lcom/google/android/gms/internal/ads/ux2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/vx2;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/db2;->A()[B

    move-result-object p0

    return-object p0
.end method

.method private static final g(Z)Lcom/google/android/gms/internal/ads/zzvy;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzvy;->c:Lcom/google/android/gms/internal/ads/zzvy;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzvy;->b:Lcom/google/android/gms/internal/ads/zzvy;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uy0;->b:Lcom/google/android/gms/internal/ads/x60;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x60;->a()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ty0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ty0;-><init>(Lcom/google/android/gms/internal/ads/uy0;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zo;->f:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    return-void
.end method
