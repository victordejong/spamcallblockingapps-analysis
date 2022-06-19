.class public final Lcom/google/android/gms/internal/ads/ix3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/u4;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/android/gms/internal/ads/yr3;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/u4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ix3;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/yr3;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ix3;->b:[Lcom/google/android/gms/internal/ads/yr3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/tx3;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ix3;->b:[Lcom/google/android/gms/internal/ads/yr3;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->a()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ix3;->a:Ljava/util/List;

    .line 4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/u4;

    .line 5
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string v5, "application/cea-608"

    .line 6
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 8
    :cond_2
    new-instance v5, Ljava/lang/String;

    .line 9
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_2
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/y8;->b(ZLjava/lang/Object;)V

    .line 11
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/u4;->c:Ljava/lang/String;

    if-nez v5, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->c()Ljava/lang/String;

    move-result-object v5

    :cond_3
    new-instance v6, Lcom/google/android/gms/internal/ads/s4;

    .line 12
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 13
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/s4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 14
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    iget v4, v3, Lcom/google/android/gms/internal/ads/u4;->f:I

    .line 15
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/s4;->h(I)Lcom/google/android/gms/internal/ads/s4;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/u4;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/s4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    iget v4, v3, Lcom/google/android/gms/internal/ads/u4;->F:I

    .line 17
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/s4;->G(I)Lcom/google/android/gms/internal/ads/s4;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/u4;->p:Ljava/util/List;

    .line 18
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/s4;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/s4;

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v3

    .line 20
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ix3;->b:[Lcom/google/android/gms/internal/ads/yr3;

    .line 21
    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b(JLcom/google/android/gms/internal/ads/la;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix3;->b:[Lcom/google/android/gms/internal/ads/yr3;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/mq3;->a(JLcom/google/android/gms/internal/ads/la;[Lcom/google/android/gms/internal/ads/yr3;)V

    return-void
.end method
