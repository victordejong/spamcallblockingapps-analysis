.class final Lcom/google/common/collect/y$d;
.super Lcom/google/common/collect/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/t<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/common/collect/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/y<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 692
    invoke-direct {p0}, Lcom/google/common/collect/t;-><init>()V

    .line 693
    iput-object p1, p0, Lcom/google/common/collect/y$d;->a:Lcom/google/common/collect/y;

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/google/common/collect/y$d;->a:Lcom/google/common/collect/y;

    iget-object v0, v0, Lcom/google/common/collect/y;->b:Lcom/google/common/collect/x;

    invoke-virtual {v0}, Lcom/google/common/collect/x;->g()Lcom/google/common/collect/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/t;->a()Lcom/google/common/collect/ay;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/t;

    .line 710
    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/t;->a([Ljava/lang/Object;I)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method

.method public final a()Lcom/google/common/collect/ay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ay<",
            "TV;>;"
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/google/common/collect/y$d;->a:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/y;->d()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/google/common/collect/y$d;->a:Lcom/google/common/collect/y;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/y;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1703
    iget-object v0, p0, Lcom/google/common/collect/y$d;->a:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/y;->d()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/google/common/collect/y$d;->a:Lcom/google/common/collect/y;

    .line 1480
    iget v0, v0, Lcom/google/common/collect/y;->c:I

    return v0
.end method
