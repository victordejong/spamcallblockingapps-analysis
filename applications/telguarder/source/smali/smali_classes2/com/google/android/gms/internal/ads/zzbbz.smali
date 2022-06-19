.class final synthetic Lcom/google/android/gms/internal/ads/zzbbz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzenn:Lcom/google/android/gms/internal/ads/zzbbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zzenn:Lcom/google/android/gms/internal/ads/zzbbr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zzenn:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbr;->zzaby()V

    return-void
.end method
