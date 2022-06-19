.class final Landroidx/media2/exoplayer/external/extractor/e/af$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/e/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/extractor/e/af;

.field private final b:Landroidx/media2/exoplayer/external/util/o;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/e/af;)V
    .locals 1

    .line 453
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance p1, Landroidx/media2/exoplayer/external/util/o;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->b:Landroidx/media2/exoplayer/external/util/o;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 9

    .line 465
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 473
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 475
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 477
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {p1, v4, v1}, Landroidx/media2/exoplayer/external/util/p;->a(Landroidx/media2/exoplayer/external/util/o;I)V

    .line 478
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->b:Landroidx/media2/exoplayer/external/util/o;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 479
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->b:Landroidx/media2/exoplayer/external/util/o;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_1

    .line 481
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    goto :goto_1

    .line 483
    :cond_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 484
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/e/af;->a(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Landroidx/media2/exoplayer/external/extractor/e/aa;

    new-instance v7, Landroidx/media2/exoplayer/external/extractor/e/af$b;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-direct {v7, v8, v4}, Landroidx/media2/exoplayer/external/extractor/e/af$b;-><init>(Landroidx/media2/exoplayer/external/extractor/e/af;I)V

    invoke-direct {v6, v7}, Landroidx/media2/exoplayer/external/extractor/e/aa;-><init>(Landroidx/media2/exoplayer/external/extractor/e/z;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/e/af;->b(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/e/af;->c(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 489
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af$a;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/e/af;->a(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 0

    return-void
.end method
