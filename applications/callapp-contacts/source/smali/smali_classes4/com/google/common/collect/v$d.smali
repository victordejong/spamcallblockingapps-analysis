.class final Lcom/google/common/collect/v$d;
.super Lcom/google/common/collect/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/common/collect/v;


# direct methods
.method constructor <init>(Lcom/google/common/collect/v;II)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/google/common/collect/v$d;->c:Lcom/google/common/collect/v;

    invoke-direct {p0}, Lcom/google/common/collect/v;-><init>()V

    .line 438
    iput p2, p0, Lcom/google/common/collect/v$d;->a:I

    .line 439
    iput p3, p0, Lcom/google/common/collect/v$d;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/common/collect/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    .line 470
    iget v0, p0, Lcom/google/common/collect/v$d;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/m;->a(III)V

    .line 471
    iget-object v0, p0, Lcom/google/common/collect/v$d;->c:Lcom/google/common/collect/v;

    iget v1, p0, Lcom/google/common/collect/v$d;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v;->a(II)Lcom/google/common/collect/v;

    move-result-object p1

    return-object p1
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/common/collect/v$d;->c:Lcom/google/common/collect/v;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final c()I
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/google/common/collect/v$d;->c:Lcom/google/common/collect/v;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->c()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/v$d;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final d()I
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/google/common/collect/v$d;->c:Lcom/google/common/collect/v;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->c()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/v$d;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/collect/v$d;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 464
    iget v0, p0, Lcom/google/common/collect/v$d;->b:I

    invoke-static {p1, v0}, Lcom/google/common/base/m;->a(II)I

    .line 465
    iget-object v0, p0, Lcom/google/common/collect/v$d;->c:Lcom/google/common/collect/v;

    iget v1, p0, Lcom/google/common/collect/v$d;->a:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 433
    invoke-super {p0}, Lcom/google/common/collect/v;->a()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 433
    invoke-super {p0}, Lcom/google/common/collect/v;->h()Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 433
    invoke-super {p0, p1}, Lcom/google/common/collect/v;->a(I)Lcom/google/common/collect/az;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/google/common/collect/v$d;->b:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/v$d;->a(II)Lcom/google/common/collect/v;

    move-result-object p1

    return-object p1
.end method
