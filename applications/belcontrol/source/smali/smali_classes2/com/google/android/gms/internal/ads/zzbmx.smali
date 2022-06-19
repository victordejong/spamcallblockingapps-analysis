.class public final Lcom/google/android/gms/internal/ads/zzbmx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzakh()Lcom/google/android/gms/internal/ads/zzbmx;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbna;->zzakk()Lcom/google/android/gms/internal/ads/zzbmx;

    move-result-object v0

    return-object v0
.end method

.method public static zzaki()Ljava/lang/String;
    .locals 2

    const-string v0, "banner"

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbmx;->zzaki()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
