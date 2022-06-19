.class public final Lcom/google/android/gms/internal/ads/zzbes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzetv:Lcom/google/android/gms/internal/ads/zzbeq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbeq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbes;->zzetv:Lcom/google/android/gms/internal/ads/zzbeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbes;->zzetv:Lcom/google/android/gms/internal/ads/zzbeq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbeq;->zza(Lcom/google/android/gms/internal/ads/zzbeq;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->destroy()V

    return-void
.end method
