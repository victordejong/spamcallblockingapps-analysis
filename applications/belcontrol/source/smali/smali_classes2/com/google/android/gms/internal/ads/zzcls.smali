.class public final synthetic Lcom/google/android/gms/internal/ads/zzcls;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgmp:Lcom/google/android/gms/internal/ads/zzclq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzclq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcls;->zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcls;->zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclq;->zzarg()V

    return-void
.end method
