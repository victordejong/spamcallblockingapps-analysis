.class public final Lcom/google/android/gms/internal/ads/zzdpp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lcom/google/android/gms/internal/ads/zzbnt;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

.field public final zzhol:Lcom/google/android/gms/internal/ads/zzdpu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpu<",
            "TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpc;Lcom/google/android/gms/internal/ads/zzdpu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpc;",
            "Lcom/google/android/gms/internal/ads/zzdpu<",
            "TAdT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpp;->zzhol:Lcom/google/android/gms/internal/ads/zzdpu;

    return-void
.end method
