.class public final Lcom/google/android/gms/internal/ads/zzbmj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzbya<",
        "Lcom/google/android/gms/internal/ads/zzbtb;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzftr:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzbno;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfvc:Lcom/google/android/gms/internal/ads/zzbmc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmc;Lcom/google/android/gms/internal/ads/zzeqo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbmc;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzbno;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfvc:Lcom/google/android/gms/internal/ads/zzbmc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzftr:Lcom/google/android/gms/internal/ads/zzeqo;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbmc;Lcom/google/android/gms/internal/ads/zzbno;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbmc;",
            "Lcom/google/android/gms/internal/ads/zzbno;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbya<",
            "Lcom/google/android/gms/internal/ads/zzbtb;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbya;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbya;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfvc:Lcom/google/android/gms/internal/ads/zzbmc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzftr:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbno;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmj;->zza(Lcom/google/android/gms/internal/ads/zzbmc;Lcom/google/android/gms/internal/ads/zzbno;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
