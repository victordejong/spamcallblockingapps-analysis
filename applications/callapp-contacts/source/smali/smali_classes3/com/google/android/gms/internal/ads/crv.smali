.class public final Lcom/google/android/gms/internal/ads/crv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/crj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/crx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crj;Lcom/google/android/gms/internal/ads/crx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;",
            "Lcom/google/android/gms/internal/ads/crx;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/crv;->a:Lcom/google/android/gms/internal/ads/crj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/crv;->b:Lcom/google/android/gms/internal/ads/crx;

    return-void
.end method
