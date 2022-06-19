.class public final Lcom/google/android/gms/internal/ads/qp;
.super Lcom/google/android/gms/internal/ads/qu;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qu;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qp;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/qp;->b:I

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/qp;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/qp;

    if-nez v1, :cond_1

    .line 19
    :cond_0
    :goto_0
    return v0

    .line 9
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/qp;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qp;->a:Ljava/lang/String;

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/qp;->a:Ljava/lang/String;

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/qp;->b:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    iget v2, p1, Lcom/google/android/gms/internal/ads/qp;->b:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
