.class public final Lcom/google/android/gms/internal/ads/zzdks;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzdkn<",
        "Lcom/google/android/gms/internal/ads/zzchi;",
        "Lcom/google/android/gms/internal/ads/zzchb;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzewk:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeyu:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdov;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeyv:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdpq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdov;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdpq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzewk:Lcom/google/android/gms/internal/ads/zzeqo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzeyu:Lcom/google/android/gms/internal/ads/zzeqo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzeyv:Lcom/google/android/gms/internal/ads/zzeqo;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzewk:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzeyu:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdov;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzeyv:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpq;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcye:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdjm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdjm;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdpi;->zzhob:Lcom/google/android/gms/internal/ads/zzdpi;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdjv;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzdjv;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;)V

    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzdpq;->zza(Lcom/google/android/gms/internal/ads/zzdpi;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdov;Lcom/google/android/gms/internal/ads/zzdpx;)Lcom/google/android/gms/internal/ads/zzdpp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdke;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdkf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdkf;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzdke;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdjw;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdpp;->zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdjw;-><init>(Lcom/google/android/gms/internal/ads/zzdpc;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdpp;->zzhol:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-direct {v1, v2, v3, v0, v5}, Lcom/google/android/gms/internal/ads/zzdjr;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdpu;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdkf;-><init>()V

    :goto_0
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkn;

    return-object v0
.end method
