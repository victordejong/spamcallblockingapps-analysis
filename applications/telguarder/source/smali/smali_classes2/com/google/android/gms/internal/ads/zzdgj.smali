.class final synthetic Lcom/google/android/gms/internal/ads/zzdgj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhef:Lcom/google/android/gms/internal/ads/zzdgg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdgg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzhef:Lcom/google/android/gms/internal/ads/zzdgg;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzhef:Lcom/google/android/gms/internal/ads/zzdgg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgg;->zzatt()Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object v0

    return-object v0
.end method
