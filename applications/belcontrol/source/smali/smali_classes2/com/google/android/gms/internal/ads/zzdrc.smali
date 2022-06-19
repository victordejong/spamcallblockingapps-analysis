.class public final synthetic Lcom/google/android/gms/internal/ads/zzdrc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhqb:Lcom/google/android/gms/internal/ads/zzdqt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdqt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqb:Lcom/google/android/gms/internal/ads/zzdqt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqb:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqt;->run()V

    const/4 v0, 0x0

    return-object v0
.end method
