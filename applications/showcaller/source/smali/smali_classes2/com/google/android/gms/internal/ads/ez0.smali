.class public final Lcom/google/android/gms/internal/ads/ez0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+",
            "Lcom/google/android/gms/internal/ads/xy0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xy0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ez0;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+",
            "Lcom/google/android/gms/internal/ads/xy0;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ez0;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/fz1;)Lcom/google/android/gms/internal/ads/qw1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/fz1<",
            "+",
            "Lcom/google/android/gms/internal/ads/xy0;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/qw1<",
            "Lcom/google/android/gms/internal/ads/ez0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/rw1;

    sget-object v1, Lcom/google/android/gms/internal/ads/cz0;->a:Lcom/google/android/gms/internal/ads/nu2;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/rw1;-><init>(Lcom/google/android/gms/internal/ads/qw1;Lcom/google/android/gms/internal/ads/nu2;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/qw1;)Lcom/google/android/gms/internal/ads/qw1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qw1<",
            "+",
            "Lcom/google/android/gms/internal/ads/xy0;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/qw1<",
            "Lcom/google/android/gms/internal/ads/ez0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/rw1;

    sget-object v1, Lcom/google/android/gms/internal/ads/dz0;->a:Lcom/google/android/gms/internal/ads/nu2;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/rw1;-><init>(Lcom/google/android/gms/internal/ads/qw1;Lcom/google/android/gms/internal/ads/nu2;)V

    return-object v0
.end method
