.class public final Lcom/google/android/gms/internal/ads/zzdou;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/ads/internal/util/zzf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzhas:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzayo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhml:Lcom/google/android/gms/internal/ads/zzdor;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzeqo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdor;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzayo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzhml:Lcom/google/android/gms/internal/ads/zzdor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzhas:Lcom/google/android/gms/internal/ads/zzeqo;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzayo;)Lcom/google/android/gms/ads/internal/util/zzf;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayo;->zzxs()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/internal/util/zzf;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzdou;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdor;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzayo;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzdou;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdou;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdou;-><init>(Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzeqo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzhml:Lcom/google/android/gms/internal/ads/zzdor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzhas:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzayo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdou;->zza(Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzayo;)Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    return-object v0
.end method
