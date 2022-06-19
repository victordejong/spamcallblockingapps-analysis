.class final Lcom/google/android/gms/internal/ads/dqi;
.super Lcom/google/android/gms/internal/ads/dqh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dqh<",
        "Lcom/google/android/gms/internal/ads/dqj;",
        "Lcom/google/android/gms/internal/ads/dqj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqh;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dqj;)V
    .locals 0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/dnh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dnh;->zzitn:Lcom/google/android/gms/internal/ads/dqj;

    return-void
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/dqj;->b()Lcom/google/android/gms/internal/ads/dqj;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 42
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    const/4 v0, 0x0

    .line 3018
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/dqj;->e:Z

    return-object p1
.end method

.method final synthetic a(Ljava/lang/Object;II)V
    .locals 0

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 62
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/dqj;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;IJ)V
    .locals 0

    .line 64
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    shl-int/lit8 p2, p2, 0x3

    .line 66
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/dqj;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dlw;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/dqj;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    check-cast p3, Lcom/google/android/gms/internal/ads/dqj;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 50
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/dqj;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/drd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dqj;->a(Lcom/google/android/gms/internal/ads/drd;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/google/android/gms/internal/ads/dqj;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dqi;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dqj;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dnh;->zzitn:Lcom/google/android/gms/internal/ads/dqj;

    return-object p1
.end method

.method final synthetic b(Ljava/lang/Object;IJ)V
    .locals 0

    .line 56
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 58
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/dqj;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/drd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    .line 2020
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/drd;->a()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/drc;->b:I

    if-ne v0, v1, :cond_1

    .line 2021
    iget v0, p1, Lcom/google/android/gms/internal/ads/dqj;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2022
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dqj;->b:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 2025
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dqj;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/ads/drd;->a(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2027
    :goto_1
    iget v1, p1, Lcom/google/android/gms/internal/ads/dqj;->a:I

    if-ge v0, v1, :cond_2

    .line 2028
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dqj;->b:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 2031
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dqj;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/ads/drd;->a(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/gms/internal/ads/dqj;

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dqi;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dqj;)V

    return-void
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dnh;->zzitn:Lcom/google/android/gms/internal/ads/dqj;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/dqj;->a()Lcom/google/android/gms/internal/ads/dqj;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/dqj;->b()Lcom/google/android/gms/internal/ads/dqj;

    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dqi;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dqj;)V

    :cond_0
    return-object v0
.end method

.method final synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    check-cast p2, Lcom/google/android/gms/internal/ads/dqj;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/dqj;->a()Lcom/google/android/gms/internal/ads/dqj;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/dqj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dqj;->a(Lcom/google/android/gms/internal/ads/dqj;Lcom/google/android/gms/internal/ads/dqj;)Lcom/google/android/gms/internal/ads/dqj;

    move-result-object p1

    return-object p1
.end method

.method final d(Ljava/lang/Object;)V
    .locals 1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dnh;->zzitn:Lcom/google/android/gms/internal/ads/dqj;

    const/4 v0, 0x0

    .line 1018
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/dqj;->e:Z

    return-void
.end method

.method final synthetic e(Ljava/lang/Object;)I
    .locals 4

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    .line 1067
    iget v0, p1, Lcom/google/android/gms/internal/ads/dqj;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1071
    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/ads/dqj;->a:I

    if-ge v0, v2, :cond_1

    .line 1072
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dqj;->b:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    .line 1075
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dqj;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/dlw;

    .line 1076
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzemk;->d(ILcom/google/android/gms/internal/ads/dlw;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1078
    :cond_1
    iput v1, p1, Lcom/google/android/gms/internal/ads/dqj;->d:I

    return v1
.end method

.method final synthetic f(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/dqj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dqj;->c()I

    move-result p1

    return p1
.end method
