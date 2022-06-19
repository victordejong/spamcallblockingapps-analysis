.class final Lcom/google/android/gms/internal/ads/mi1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/a70<",
        "+",
        "Lcom/google/android/gms/internal/ads/u30;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dn1;

.field private final b:Lcom/google/android/gms/internal/ads/oi1;

.field private final c:Lcom/google/android/gms/internal/ads/pi1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pi1<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Lcom/google/android/gms/internal/ads/li1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dn1;Lcom/google/android/gms/internal/ads/oi1;Lcom/google/android/gms/internal/ads/pi1;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dn1;",
            "Lcom/google/android/gms/internal/ads/oi1;",
            "Lcom/google/android/gms/internal/ads/pi1<",
            "TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/dn1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mi1;->b:Lcom/google/android/gms/internal/ads/oi1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mi1;->c:Lcom/google/android/gms/internal/ads/pi1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mi1;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/mi1;Lcom/google/android/gms/internal/ads/li1;)Lcom/google/android/gms/internal/ads/li1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mi1;->e:Lcom/google/android/gms/internal/ads/li1;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/mi1;)Lcom/google/android/gms/internal/ads/mn1;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mi1;->e()Lcom/google/android/gms/internal/ads/mn1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/mi1;)Lcom/google/android/gms/internal/ads/li1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/mi1;->e:Lcom/google/android/gms/internal/ads/li1;

    return-object p0
.end method

.method private final e()Lcom/google/android/gms/internal/ads/mn1;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mi1;->c:Lcom/google/android/gms/internal/ads/pi1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mi1;->b:Lcom/google/android/gms/internal/ads/oi1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/pi1;->a(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/z60;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/z60;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/a70;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/a70;->zza()Lcom/google/android/gms/internal/ads/sl1;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->d:Lcom/google/android/gms/internal/ads/zzys;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sl1;->j:Lcom/google/android/gms/internal/ads/zzzd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/dn1;

    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/dn1;->d(Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzzd;)Lcom/google/android/gms/internal/ads/mn1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/rz1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/li1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mi1;->e:Lcom/google/android/gms/internal/ads/li1;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/f5;->a:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/li1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mi1;->e()Lcom/google/android/gms/internal/ads/mn1;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/li1;-><init>(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/mn1;Lcom/google/android/gms/internal/ads/ii1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mi1;->e:Lcom/google/android/gms/internal/ads/li1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mi1;->c:Lcom/google/android/gms/internal/ads/pi1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mi1;->b:Lcom/google/android/gms/internal/ads/oi1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/pi1;->a(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/z60;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/xh1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/dn1;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dn1;->a()Lcom/google/android/gms/internal/ads/zzdsy;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdsy;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/xh1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/z60;->s(Lcom/google/android/gms/internal/ads/xh1;)Lcom/google/android/gms/internal/ads/z60;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/z60;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/a70;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/a70;->c()Lcom/google/android/gms/internal/ads/y40;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/dn1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dn1;->a()Lcom/google/android/gms/internal/ads/zzdsy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/y40;->e(Lcom/google/android/gms/internal/ads/zzdsy;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bz1;->E(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/bz1;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ji1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ji1;-><init>(Lcom/google/android/gms/internal/ads/mi1;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mi1;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/kz1;->i(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/fw1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ii1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ii1;-><init>(Lcom/google/android/gms/internal/ads/mi1;)V

    const-class v2, Lcom/google/android/gms/internal/ads/zzcsk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mi1;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/kz1;->e(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/fw1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/hi1;->a:Lcom/google/android/gms/internal/ads/fw1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mi1;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/kz1;->i(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/fw1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    return-object v0
.end method
