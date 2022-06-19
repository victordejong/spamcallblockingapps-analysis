.class final Lcom/google/android/gms/internal/ads/uj3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wk3;
.implements Lcom/google/android/gms/internal/ads/fk2;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Lcom/google/android/gms/internal/ads/vk3;

.field private f:Lcom/google/android/gms/internal/ads/gj2;

.field final synthetic g:Lcom/google/android/gms/internal/ads/wj3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wj3;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uj3;->g:Lcom/google/android/gms/internal/ads/wj3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dg3;->s(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/vk3;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uj3;->e:Lcom/google/android/gms/internal/ads/vk3;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dg3;->u(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/gj2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uj3;->f:Lcom/google/android/gms/internal/ads/gj2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uj3;->d:Ljava/lang/Object;

    return-void
.end method

.method private final a(ILcom/google/android/gms/internal/ads/mk3;)Z
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uj3;->g:Lcom/google/android/gms/internal/ads/wj3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uj3;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/wj3;->z(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uj3;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    iget v1, v0, Lcom/google/android/gms/internal/ads/vk3;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vk3;->b:Lcom/google/android/gms/internal/ads/mk3;

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uj3;->g:Lcom/google/android/gms/internal/ads/wj3;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/dg3;->t(ILcom/google/android/gms/internal/ads/mk3;J)Lcom/google/android/gms/internal/ads/vk3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uj3;->e:Lcom/google/android/gms/internal/ads/vk3;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uj3;->f:Lcom/google/android/gms/internal/ads/gj2;

    .line 4
    iget v1, v0, Lcom/google/android/gms/internal/ads/gj2;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/gj2;->b:Lcom/google/android/gms/internal/ads/mk3;

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uj3;->g:Lcom/google/android/gms/internal/ads/wj3;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dg3;->v(ILcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/gj2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uj3;->f:Lcom/google/android/gms/internal/ads/gj2;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final b(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/uj3;->a(ILcom/google/android/gms/internal/ads/mk3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uj3;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/vk3;->m(Lcom/google/android/gms/internal/ads/jk3;)V

    :cond_0
    return-void
.end method

.method public final d(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/uj3;->a(ILcom/google/android/gms/internal/ads/mk3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uj3;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/vk3;->e(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    :cond_0
    return-void
.end method

.method public final g(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/uj3;->a(ILcom/google/android/gms/internal/ads/mk3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uj3;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/vk3;->g(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    :cond_0
    return-void
.end method

.method public final j(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/uj3;->a(ILcom/google/android/gms/internal/ads/mk3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uj3;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/vk3;->i(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    :cond_0
    return-void
.end method

.method public final r(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/uj3;->a(ILcom/google/android/gms/internal/ads/mk3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uj3;->e:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/gms/internal/ads/vk3;->k(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method
