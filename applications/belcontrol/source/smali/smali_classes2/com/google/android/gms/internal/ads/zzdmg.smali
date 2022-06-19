.class public final synthetic Lcom/google/android/gms/internal/ads/zzdmg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhil:Lcom/google/android/gms/internal/ads/zzdlh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdlh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzhil:Lcom/google/android/gms/internal/ads/zzdlh;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdlh;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdmg;-><init>(Lcom/google/android/gms/internal/ads/zzdlh;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzhil:Lcom/google/android/gms/internal/ads/zzdlh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlh;->onAdLoaded()V

    return-void
.end method
