.class final synthetic Lcom/google/android/gms/internal/ads/zzaah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcln:Lcom/google/android/gms/internal/ads/zzaae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzcln:Lcom/google/android/gms/internal/ads/zzaae;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzcln:Lcom/google/android/gms/internal/ads/zzaae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaae;->zzru()V

    return-void
.end method
