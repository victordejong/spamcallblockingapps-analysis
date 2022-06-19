.class public final Lcom/google/android/gms/internal/ads/zzbwm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

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
.field private final zzgav:Lcom/google/android/gms/internal/ads/zzbwg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbwg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwm;->zzgav:Lcom/google/android/gms/internal/ads/zzbwg;

    return-void
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzbwm;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbwm;-><init>(Lcom/google/android/gms/internal/ads/zzbwg;)V

    return-object v0
.end method

.method public static zzk(Lcom/google/android/gms/internal/ads/zzbwg;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbwg;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbya<",
            "Lcom/google/android/gms/internal/ads/zzbtb;",
            ">;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwm;->zzgav:Lcom/google/android/gms/internal/ads/zzbwg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbwm;->zzk(Lcom/google/android/gms/internal/ads/zzbwg;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
