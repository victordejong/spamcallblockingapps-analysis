.class final synthetic Lcom/google/android/gms/internal/ads/zzdse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhrs:Lcom/google/android/gms/internal/ads/zzdsb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzhrs:Lcom/google/android/gms/internal/ads/zzdsb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzhrs:Lcom/google/android/gms/internal/ads/zzdsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsb;->zzaxk()V

    return-void
.end method
