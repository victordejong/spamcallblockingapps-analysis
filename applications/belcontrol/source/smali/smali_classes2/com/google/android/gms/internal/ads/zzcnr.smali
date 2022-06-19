.class public final synthetic Lcom/google/android/gms/internal/ads/zzcnr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgov:Lcom/google/android/gms/internal/ads/zzcns;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcns;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzgov:Lcom/google/android/gms/internal/ads/zzcns;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzgov:Lcom/google/android/gms/internal/ads/zzcns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnl;->zzarp()V

    return-void
.end method
