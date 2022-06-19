.class public final Lcom/google/android/gms/internal/ads/cjg;
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
.field public final a:Lcom/google/android/gms/internal/ads/cir;

.field public final b:Lcom/google/android/gms/internal/ads/cjh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cjh",
            "<TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cir;Lcom/google/android/gms/internal/ads/cjh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cir;",
            "Lcom/google/android/gms/internal/ads/cjh",
            "<TAdT;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cjg;->a:Lcom/google/android/gms/internal/ads/cir;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cjg;->b:Lcom/google/android/gms/internal/ads/cjh;

    .line 4
    return-void
.end method
