.class public final Lcom/google/android/gms/internal/ads/zzbzk;
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
        "Lcom/google/android/gms/ads/internal/overlay/zzq;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzftr:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzcai;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgbk:Lcom/google/android/gms/internal/ads/zzbyz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbyz;Lcom/google/android/gms/internal/ads/zzeqo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbyz;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzcai;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzk;->zzgbk:Lcom/google/android/gms/internal/ads/zzbyz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzk;->zzftr:Lcom/google/android/gms/internal/ads/zzeqo;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzbyz;Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzbzk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbyz;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzcai;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbzk;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbzk;-><init>(Lcom/google/android/gms/internal/ads/zzbyz;Lcom/google/android/gms/internal/ads/zzeqo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzk;->zzftr:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcai;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbya;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbya;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbya;

    return-object v0
.end method
