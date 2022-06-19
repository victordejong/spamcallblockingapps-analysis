.class public final Lcom/google/android/gms/internal/ads/cjl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lcom/google/android/gms/internal/ads/amh;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/ciy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/cjn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ciy;Lcom/google/android/gms/internal/ads/cjn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;",
            "Lcom/google/android/gms/internal/ads/cjn;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cjl;->a:Lcom/google/android/gms/internal/ads/ciy;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cjl;->b:Lcom/google/android/gms/internal/ads/cjn;

    .line 4
    return-void
.end method
