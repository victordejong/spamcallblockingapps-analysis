.class abstract Lcom/google/android/gms/internal/ads/dfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dbi;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/google/android/gms/internal/ads/dbi;",
            ")V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/dgo;",
            ")V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract a(Lcom/google/android/gms/internal/ads/dex;)Z
.end method

.method final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dex;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/google/android/gms/internal/ads/dex;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->b()I

    move-result v1

    .line 4
    ushr-int/lit8 v2, v1, 0x3

    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->f()Lcom/google/android/gms/internal/ads/zzecn;

    move-result-object v0

    throw v0

    .line 9
    :pswitch_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->g()J

    move-result-wide v4

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;IJ)V

    .line 28
    :goto_0
    return v0

    .line 11
    :pswitch_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->j()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;II)V

    goto :goto_0

    .line 13
    :pswitch_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->i()J

    move-result-wide v4

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;IJ)V

    goto :goto_0

    .line 15
    :pswitch_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->n()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dbi;)V

    goto :goto_0

    .line 17
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dfv;->a()Ljava/lang/Object;

    move-result-object v1

    .line 19
    shl-int/lit8 v3, v2, 0x3

    or-int/lit8 v3, v3, 0x4

    .line 22
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_1

    .line 23
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dex;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 24
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->b()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->e()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 26
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 28
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_0

    .line 8
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method abstract b(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/dgo;",
            ")V"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method abstract d(Ljava/lang/Object;)V
.end method

.method abstract e(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract f(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
