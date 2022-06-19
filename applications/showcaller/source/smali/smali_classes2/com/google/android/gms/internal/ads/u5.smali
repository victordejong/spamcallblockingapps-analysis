.class final Lcom/google/android/gms/internal/ads/u5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wk3;
.implements Lcom/google/android/gms/internal/ads/fk2;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/w5;

.field private e:Lcom/google/android/gms/internal/ads/vk3;

.field private f:Lcom/google/android/gms/internal/ads/gj2;

.field final synthetic g:Lcom/google/android/gms/internal/ads/y5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/y5;Lcom/google/android/gms/internal/ads/w5;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u5;->g:Lcom/google/android/gms/internal/ads/y5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y5;->a(Lcom/google/android/gms/internal/ads/y5;)Lcom/google/android/gms/internal/ads/vk3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/u5;->e:Lcom/google/android/gms/internal/ads/vk3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y5;->b(Lcom/google/android/gms/internal/ads/y5;)Lcom/google/android/gms/internal/ads/gj2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u5;->f:Lcom/google/android/gms/internal/ads/gj2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/u5;->d:Lcom/google/android/gms/internal/ads/w5;

    return-void
.end method

.method private final a(ILcom/google/android/gms/internal/ads/mk3;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u5;->d:Lcom/google/android/gms/internal/ads/w5;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/w5;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/w5;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/ar3;->d:J

    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/ar3;->d:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/w5;->b:Ljava/lang/Object;

    .line 4
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/mk3;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object p2

    move-object v0, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/u5;->d:Lcom/google/android/gms/internal/ads/w5;

    .line 6
    iget p2, p2, Lcom/google/android/gms/internal/ads/w5;->d:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/u5;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 7
    iget v1, p2, Lcom/google/android/gms/internal/ads/vk3;->a:I

    if-ne v1, p1, :cond_4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/vk3;->b:Lcom/google/android/gms/internal/ads/mk3;

    .line 8
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/u5;->g:Lcom/google/android/gms/internal/ads/y5;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/y5;->a(Lcom/google/android/gms/internal/ads/y5;)Lcom/google/android/gms/internal/ads/vk3;

    move-result-object p2

    const-wide/16 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/vk3;->a(ILcom/google/android/gms/internal/ads/mk3;J)Lcom/google/android/gms/internal/ads/vk3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/u5;->e:Lcom/google/android/gms/internal/ads/vk3;

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/u5;->f:Lcom/google/android/gms/internal/ads/gj2;

    .line 9
    iget v1, p2, Lcom/google/android/gms/internal/ads/gj2;->a:I

    if-ne v1, p1, :cond_6

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/gj2;->b:Lcom/google/android/gms/internal/ads/mk3;

    .line 10
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/u5;->g:Lcom/google/android/gms/internal/ads/y5;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/y5;->b(Lcom/google/android/gms/internal/ads/y5;)Lcom/google/android/gms/internal/ads/gj2;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/gj2;->a(ILcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/gj2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u5;->f:Lcom/google/android/gms/internal/ads/gj2;

    :cond_7
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final b(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/u5;->a(ILcom/google/android/gms/internal/ads/mk3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u5;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/vk3;->m(Lcom/google/android/gms/internal/ads/jk3;)V

    :cond_0
    return-void
.end method

.method public final d(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/u5;->a(ILcom/google/android/gms/internal/ads/mk3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u5;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/vk3;->e(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    :cond_0
    return-void
.end method

.method public final g(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/u5;->a(ILcom/google/android/gms/internal/ads/mk3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u5;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/vk3;->g(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    :cond_0
    return-void
.end method

.method public final j(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/u5;->a(ILcom/google/android/gms/internal/ads/mk3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u5;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/vk3;->i(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    :cond_0
    return-void
.end method

.method public final r(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/u5;->a(ILcom/google/android/gms/internal/ads/mk3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u5;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/gms/internal/ads/vk3;->k(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method
