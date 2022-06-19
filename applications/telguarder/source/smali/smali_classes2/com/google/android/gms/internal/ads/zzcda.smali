.class final synthetic Lcom/google/android/gms/internal/ads/zzcda;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgfw:Lcom/google/android/gms/internal/ads/zzccx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcda;->zzgfw:Lcom/google/android/gms/internal/ads/zzccx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcda;->zzgfw:Lcom/google/android/gms/internal/ads/zzccx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzapc()V

    return-void
.end method
