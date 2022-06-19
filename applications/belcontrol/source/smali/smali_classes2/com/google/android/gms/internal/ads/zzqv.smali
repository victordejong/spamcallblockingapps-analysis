.class public final synthetic Lcom/google/android/gms/internal/ads/zzqv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbrt:Lcom/google/android/gms/internal/ads/zzqs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzqs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrt:Lcom/google/android/gms/internal/ads/zzqs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrt:Lcom/google/android/gms/internal/ads/zzqs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqs;->zzlu()V

    return-void
.end method
