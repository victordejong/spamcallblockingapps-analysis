.class final Lcom/google/android/gms/internal/ads/dqz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/ads/dlf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dqw;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqz;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dlf;

    check-cast p2, Lcom/google/android/gms/internal/ads/dlf;

    .line 3
    iget v0, p2, Lcom/google/android/gms/internal/ads/dlf;->a:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->a:I

    sub-int/2addr v0, v1

    .line 4
    return v0
.end method
