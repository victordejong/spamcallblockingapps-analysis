.class public final Lcom/google/android/gms/internal/ads/ul2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/g21<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/jl2;

.field public final b:Lcom/google/android/gms/internal/ads/dm2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dm2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jl2;Lcom/google/android/gms/internal/ads/dm2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/jl2;",
            "Lcom/google/android/gms/internal/ads/dm2<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ul2;->a:Lcom/google/android/gms/internal/ads/jl2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ul2;->b:Lcom/google/android/gms/internal/ads/dm2;

    return-void
.end method
