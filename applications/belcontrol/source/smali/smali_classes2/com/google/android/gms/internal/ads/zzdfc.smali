.class public final synthetic Lcom/google/android/gms/internal/ads/zzdfc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhdf:Lcom/google/android/gms/internal/ads/zzdfd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdfd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfc;->zzhdf:Lcom/google/android/gms/internal/ads/zzdfd;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfc;->zzhdf:Lcom/google/android/gms/internal/ads/zzdfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfd;->zzatp()Lcom/google/android/gms/internal/ads/zzdfj;

    move-result-object v0

    return-object v0
.end method
