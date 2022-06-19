.class public final Landroidx/media2/exoplayer/external/text/b/a;
.super Landroidx/media2/exoplayer/external/text/b;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/text/b/b;


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

    .line 42
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/b;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    .line 44
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result p1

    .line 45
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v0

    .line 46
    new-instance v1, Landroidx/media2/exoplayer/external/text/b/b;

    invoke-direct {v1, p1, v0}, Landroidx/media2/exoplayer/external/text/b/b;-><init>(II)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/text/b/a;->a:Landroidx/media2/exoplayer/external/text/b/b;

    return-void
.end method


# virtual methods
.method public final a([BIZ)Landroidx/media2/exoplayer/external/text/d;
    .locals 1

    if-eqz p3, :cond_0

    .line 52
    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/b/a;->a:Landroidx/media2/exoplayer/external/text/b/b;

    .line 1122
    iget-object p3, p3, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    .line 1840
    iget-object v0, p3, Landroidx/media2/exoplayer/external/text/b/b$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1841
    iget-object v0, p3, Landroidx/media2/exoplayer/external/text/b/b$h;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1842
    iget-object v0, p3, Landroidx/media2/exoplayer/external/text/b/b$h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1843
    iget-object v0, p3, Landroidx/media2/exoplayer/external/text/b/b$h;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1844
    iget-object v0, p3, Landroidx/media2/exoplayer/external/text/b/b$h;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 1845
    iput-object v0, p3, Landroidx/media2/exoplayer/external/text/b/b$h;->h:Landroidx/media2/exoplayer/external/text/b/b$b;

    .line 1846
    iput-object v0, p3, Landroidx/media2/exoplayer/external/text/b/b$h;->i:Landroidx/media2/exoplayer/external/text/b/b$d;

    .line 54
    :cond_0
    new-instance p3, Landroidx/media2/exoplayer/external/text/b/c;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/b/a;->a:Landroidx/media2/exoplayer/external/text/b/b;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/text/b/b;->a([BI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/media2/exoplayer/external/text/b/c;-><init>(Ljava/util/List;)V

    return-object p3
.end method
