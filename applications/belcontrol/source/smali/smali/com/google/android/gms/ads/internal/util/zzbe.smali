.class public final Lcom/google/android/gms/ads/internal/util/zzbe;
.super Lcom/google/android/gms/internal/ads/zzab;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzab<",
        "Lcom/google/android/gms/internal/ads/zzz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzegk:Lcom/google/android/gms/internal/ads/zzbaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbaa<",
            "Lcom/google/android/gms/internal/ads/zzz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzegl:Lcom/google/android/gms/internal/ads/zzaze;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbaa<",
            "Lcom/google/android/gms/internal/ads/zzz;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/ads/internal/util/zzbe;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzbaa;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzbaa<",
            "Lcom/google/android/gms/internal/ads/zzz;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzbd;

    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbd;-><init>(Lcom/google/android/gms/internal/ads/zzbaa;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzab;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzaj;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzaj:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzegk:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzaze;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzaze;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzegl:Lcom/google/android/gms/internal/ads/zzaze;

    const-string v0, "GET"

    invoke-virtual {p3, p1, v0, p2, p2}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzag<",
            "Lcom/google/android/gms/internal/ads/zzz;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbc;->zzb(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzag;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzag;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzegl:Lcom/google/android/gms/internal/ads/zzaze;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzaj:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzz;->statusCode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzegl:Lcom/google/android/gms/internal/ads/zzaze;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->data:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaze;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaze;->zzi([B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzegk:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->set(Ljava/lang/Object;)Z

    return-void
.end method
