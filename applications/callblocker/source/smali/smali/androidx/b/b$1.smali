.class Landroidx/b/b$1;
.super Landroidx/b/f;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/b/b;->b()Landroidx/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/b/f",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/b/b;


# direct methods
.method constructor <init>(Landroidx/b/b;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Landroidx/b/b$1;->a:Landroidx/b/b;

    invoke-direct {p0}, Landroidx/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Landroidx/b/b$1;->a:Landroidx/b/b;

    iget v0, v0, Landroidx/b/b;->b:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Landroidx/b/b$1;->a:Landroidx/b/b;

    invoke-virtual {v0, p1}, Landroidx/b/b;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Landroidx/b/b$1;->a:Landroidx/b/b;

    iget-object v0, v0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 668
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Landroidx/b/b$1;->a:Landroidx/b/b;

    invoke-virtual {v0, p1}, Landroidx/b/b;->c(I)Ljava/lang/Object;

    .line 674
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Landroidx/b/b$1;->a:Landroidx/b/b;

    invoke-virtual {v0, p1}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    .line 664
    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Landroidx/b/b$1;->a:Landroidx/b/b;

    invoke-virtual {v0, p1}, Landroidx/b/b;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Landroidx/b/b$1;->a:Landroidx/b/b;

    invoke-virtual {v0}, Landroidx/b/b;->clear()V

    .line 679
    return-void
.end method
