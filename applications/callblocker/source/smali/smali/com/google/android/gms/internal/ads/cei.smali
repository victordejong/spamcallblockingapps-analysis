.class public final Lcom/google/android/gms/internal/ads/cei;
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
.field public final a:Lcom/google/android/gms/internal/ads/cjb;

.field public final b:Lcom/google/android/gms/internal/ads/pw;

.field public final c:Lcom/google/android/gms/internal/ads/ciy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cjb;Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/ciy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cjb;",
            "Lcom/google/android/gms/internal/ads/pw;",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cei;->a:Lcom/google/android/gms/internal/ads/cjb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cei;->b:Lcom/google/android/gms/internal/ads/pw;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cei;->c:Lcom/google/android/gms/internal/ads/ciy;

    .line 5
    return-void
.end method
