.class public final Lcom/google/android/gms/internal/ads/zzbgp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzazn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzewc:Lcom/google/android/gms/internal/ads/zzbgb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgp;->zzewc:Lcom/google/android/gms/internal/ads/zzbgb;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbgb;)Lcom/google/android/gms/internal/ads/zzazn;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgb;->zzaew()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzazn;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgp;->zzewc:Lcom/google/android/gms/internal/ads/zzbgb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgp;->zzb(Lcom/google/android/gms/internal/ads/zzbgb;)Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v0

    return-object v0
.end method
