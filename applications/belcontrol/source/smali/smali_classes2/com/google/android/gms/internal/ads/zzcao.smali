.class public final Lcom/google/android/gms/internal/ads/zzcao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbny;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbny<",
        "Lcom/google/android/gms/internal/ads/zzbnz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfup:Lcom/google/android/gms/internal/ads/zzcco;

.field private final zzfwj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcrj<",
            "Lcom/google/android/gms/internal/ads/zzbnz;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzgbu:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzbny<",
            "Lcom/google/android/gms/internal/ads/zzblv;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzgbv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcrj<",
            "Lcom/google/android/gms/internal/ads/zzcbu;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzgbw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcty<",
            "Lcom/google/android/gms/internal/ads/zzcbu;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzcco;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcrj<",
            "Lcom/google/android/gms/internal/ads/zzbnz;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcrj<",
            "Lcom/google/android/gms/internal/ads/zzcbu;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcty<",
            "Lcom/google/android/gms/internal/ads/zzcbu;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzbny<",
            "Lcom/google/android/gms/internal/ads/zzblv;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzcco;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzfwj:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzgbv:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzgbw:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzgbu:Lcom/google/android/gms/internal/ads/zzeqo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzfup:Lcom/google/android/gms/internal/ads/zzcco;

    return-void
.end method


# virtual methods
.method public final zze(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzcrj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcrj<",
            "Lcom/google/android/gms/internal/ads/zzbnz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzfwj:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcrj;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzgbw:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcty;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnz;->zza(Lcom/google/android/gms/internal/ads/zzcty;)Lcom/google/android/gms/internal/ads/zzcrj;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzgbv:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrj;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnz;->zza(Lcom/google/android/gms/internal/ads/zzcrj;)Lcom/google/android/gms/internal/ads/zzcrj;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzfup:Lcom/google/android/gms/internal/ads/zzcco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcco;->zzaom()Lcom/google/android/gms/internal/ads/zzagf;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzgbu:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbny;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbny;->zze(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzcrj;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnz;->zza(Lcom/google/android/gms/internal/ads/zzcrj;)Lcom/google/android/gms/internal/ads/zzcrj;

    move-result-object p1

    return-object p1
.end method
