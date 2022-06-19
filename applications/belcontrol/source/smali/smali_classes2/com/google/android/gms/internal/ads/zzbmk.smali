.class public final Lcom/google/android/gms/internal/ads/zzbmk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzbya<",
        "Lcom/google/android/gms/internal/ads/zzbtb;",
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

.field private final zzfqo:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzazn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfta:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdmw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfvc:Lcom/google/android/gms/internal/ads/zzbmc;

.field private final zzfvf:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdnp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmc;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbmc;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzazn;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdmw;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdnp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzfvc:Lcom/google/android/gms/internal/ads/zzbmc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzewk:Lcom/google/android/gms/internal/ads/zzeqo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzfqo:Lcom/google/android/gms/internal/ads/zzeqo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzfta:Lcom/google/android/gms/internal/ads/zzeqo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzfvf:Lcom/google/android/gms/internal/ads/zzeqo;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbmc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzbya;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbmc;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzazn;",
            "Lcom/google/android/gms/internal/ads/zzdmw;",
            "Lcom/google/android/gms/internal/ads/zzdnp;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbya<",
            "Lcom/google/android/gms/internal/ads/zzbtb;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbya;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmb;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbmb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnp;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbya;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbya;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzfvc:Lcom/google/android/gms/internal/ads/zzbmc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzewk:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzfqo:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzfta:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzfvf:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbmk;->zza(Lcom/google/android/gms/internal/ads/zzbmc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzbya;

    move-result-object v0

    return-object v0
.end method
