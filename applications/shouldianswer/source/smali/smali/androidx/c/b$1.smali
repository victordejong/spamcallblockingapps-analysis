.class Landroidx/c/b$1;
.super Landroidx/c/f;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/c/b;->b()Landroidx/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/c/f<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/b;


# direct methods
.method constructor <init>(Landroidx/c/b;)V
    .locals 0

    .line 635
    iput-object p1, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-direct {p0}, Landroidx/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 638
    iget-object v0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    iget v0, v0, Landroidx/c/b;->b:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 1

    .line 648
    iget-object v0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-virtual {v0, p1}, Landroidx/c/b;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 0

    .line 643
    iget-object p2, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    iget-object p2, p2, Landroidx/c/b;->a:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 668
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(I)V
    .locals 1

    .line 673
    iget-object v0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-virtual {v0, p1}, Landroidx/c/b;->c(I)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 663
    iget-object p2, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-virtual {p2, p1}, Landroidx/c/b;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1

    .line 653
    iget-object v0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-virtual {v0, p1}, Landroidx/c/b;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 658
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()V
    .locals 1

    .line 678
    iget-object v0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-virtual {v0}, Landroidx/c/b;->clear()V

    return-void
.end method
