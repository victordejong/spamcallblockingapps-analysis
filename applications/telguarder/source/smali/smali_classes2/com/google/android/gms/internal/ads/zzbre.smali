.class public final Lcom/google/android/gms/internal/ads/zzbre;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzbqx$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbqx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbre;->zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;

    return-void
.end method

.method public static zzk(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzbre;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbre;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzbqx;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbre;->zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqx;->zzalk()Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqx$zza;

    return-object v0
.end method
