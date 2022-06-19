.class public final Lcom/google/android/exoplayer2/text/b/a;
.super Lcom/google/android/exoplayer2/text/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/text/b/b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "DvbDecoder"

    .line 34
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    .line 36
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result p1

    .line 37
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v0

    .line 38
    new-instance v1, Lcom/google/android/exoplayer2/text/b/b;

    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplayer2/text/b/b;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/b/a;->a:Lcom/google/android/exoplayer2/text/b/b;

    return-void
.end method


# virtual methods
.method public final a([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 1

    if-eqz p3, :cond_0

    .line 44
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/b/a;->a:Lcom/google/android/exoplayer2/text/b/b;

    .line 1120
    iget-object p3, p3, Lcom/google/android/exoplayer2/text/b/b;->a:Lcom/google/android/exoplayer2/text/b/b$h;

    .line 1885
    iget-object v0, p3, Lcom/google/android/exoplayer2/text/b/b$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1886
    iget-object v0, p3, Lcom/google/android/exoplayer2/text/b/b$h;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1887
    iget-object v0, p3, Lcom/google/android/exoplayer2/text/b/b$h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1888
    iget-object v0, p3, Lcom/google/android/exoplayer2/text/b/b$h;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1889
    iget-object v0, p3, Lcom/google/android/exoplayer2/text/b/b$h;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 1890
    iput-object v0, p3, Lcom/google/android/exoplayer2/text/b/b$h;->h:Lcom/google/android/exoplayer2/text/b/b$b;

    .line 1891
    iput-object v0, p3, Lcom/google/android/exoplayer2/text/b/b$h;->i:Lcom/google/android/exoplayer2/text/b/b$d;

    .line 46
    :cond_0
    new-instance p3, Lcom/google/android/exoplayer2/text/b/c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/b/a;->a:Lcom/google/android/exoplayer2/text/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/text/b/b;->a([BI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/text/b/c;-><init>(Ljava/util/List;)V

    return-object p3
.end method
