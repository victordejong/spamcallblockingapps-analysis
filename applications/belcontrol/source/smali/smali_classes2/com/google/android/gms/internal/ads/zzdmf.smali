.class public final synthetic Lcom/google/android/gms/internal/ads/zzdmf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhik:Lcom/google/android/gms/internal/ads/zzdmc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhik:Lcom/google/android/gms/internal/ads/zzdmc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhik:Lcom/google/android/gms/internal/ads/zzdmc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmc;->zzauv()V

    return-void
.end method
