.class public final Lcom/google/android/gms/internal/ads/am2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/google/android/gms/internal/ads/g21<",
        "TA;>;A:",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/ql2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ql2<",
            "TU;TA;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/cm2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cm2<",
            "TU;TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ql2;Lcom/google/android/gms/internal/ads/cm2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ql2<",
            "TU;TA;>;",
            "Lcom/google/android/gms/internal/ads/cm2<",
            "TU;TA;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/am2;->a:Lcom/google/android/gms/internal/ads/ql2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/am2;->b:Lcom/google/android/gms/internal/ads/cm2;

    return-void
.end method
