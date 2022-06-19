.class public final synthetic Lcom/google/android/gms/ads/internal/util/zzk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeds:Lcom/google/android/gms/ads/internal/util/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzeds:Lcom/google/android/gms/ads/internal/util/zzi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzeds:Lcom/google/android/gms/ads/internal/util/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyh()Lcom/google/android/gms/internal/ads/zzrp;

    return-void
.end method
