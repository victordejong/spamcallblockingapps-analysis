.class public final Lcom/google/android/gms/internal/ads/zzboo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzdnb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfwt:Lcom/google/android/gms/internal/ads/zzboj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzboj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboo;->zzfwt:Lcom/google/android/gms/internal/ads/zzboj;

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzboj;)Lcom/google/android/gms/internal/ads/zzboo;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzboo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzboo;-><init>(Lcom/google/android/gms/internal/ads/zzboj;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboo;->zzfwt:Lcom/google/android/gms/internal/ads/zzboj;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboj;->zzaky()Lcom/google/android/gms/internal/ads/zzdnb;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdnb;

    return-object v0
.end method
