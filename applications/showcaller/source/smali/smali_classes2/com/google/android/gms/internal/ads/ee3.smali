.class public Lcom/google/android/gms/internal/ads/ee3;
.super Lcom/google/android/gms/internal/ads/sc3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/ie3<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/ee3<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/sc3<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ie3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected e:Lcom/google/android/gms/internal/ads/ie3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected f:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/ie3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sc3;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ee3;->d:Lcom/google/android/gms/internal/ads/ie3;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/ie3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ie3;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    return-void
.end method

.method private static final i(Lcom/google/android/gms/internal/ads/ie3;Lcom/google/android/gms/internal/ads/ie3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/uf3;->a()Lcom/google/android/gms/internal/ads/uf3;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uf3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/cg3;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cg3;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic P()Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->m()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->l()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->d:Lcom/google/android/gms/internal/ads/ie3;

    return-object v0
.end method

.method protected final bridge synthetic h(Lcom/google/android/gms/internal/ads/tc3;)Lcom/google/android/gms/internal/ads/sc3;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ee3;->o(Lcom/google/android/gms/internal/ads/ie3;)Lcom/google/android/gms/internal/ads/ee3;

    return-object p0
.end method

.method protected j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/ie3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ie3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ee3;->i(Lcom/google/android/gms/internal/ads/ie3;Lcom/google/android/gms/internal/ads/ie3;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    return-void
.end method

.method public final l()Lcom/google/android/gms/internal/ads/ee3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->d:Lcom/google/android/gms/internal/ads/ie3;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/ie3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/ee3;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->m()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ee3;->o(Lcom/google/android/gms/internal/ads/ie3;)Lcom/google/android/gms/internal/ads/ee3;

    return-object v0
.end method

.method public m()Lcom/google/android/gms/internal/ads/ie3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/uf3;->a()Lcom/google/android/gms/internal/ads/uf3;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/uf3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/cg3;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/cg3;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/ie3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->m()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgin;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgin;-><init>(Lcom/google/android/gms/internal/ads/mf3;)V

    .line 4
    throw v1
.end method

.method public final o(Lcom/google/android/gms/internal/ads/ie3;)Lcom/google/android/gms/internal/ads/ee3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ee3;->i(Lcom/google/android/gms/internal/ads/ie3;Lcom/google/android/gms/internal/ads/ie3;)V

    return-object p0
.end method

.method public final p([BIILcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/ee3;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/vd3;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/uf3;->a()Lcom/google/android/gms/internal/ads/uf3;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/uf3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/cg3;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    new-instance v6, Lcom/google/android/gms/internal/ads/wc3;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/ads/wc3;-><init>(Lcom/google/android/gms/internal/ads/vd3;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/cg3;->h(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/wc3;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    .line 5
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 7
    throw p1
.end method
