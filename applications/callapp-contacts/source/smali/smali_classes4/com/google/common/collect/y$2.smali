.class final Lcom/google/common/collect/y$2;
.super Lcom/google/common/collect/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/y;->d()Lcom/google/common/collect/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ay<",
        "TV;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/collect/t<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/y;


# direct methods
.method constructor <init>(Lcom/google/common/collect/y;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/google/common/collect/y$2;->c:Lcom/google/common/collect/y;

    invoke-direct {p0}, Lcom/google/common/collect/ay;-><init>()V

    .line 671
    iget-object p1, p1, Lcom/google/common/collect/y;->b:Lcom/google/common/collect/x;

    invoke-virtual {p1}, Lcom/google/common/collect/x;->g()Lcom/google/common/collect/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/t;->a()Lcom/google/common/collect/ay;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/y$2;->a:Ljava/util/Iterator;

    .line 1088
    sget-object p1, Lcom/google/common/collect/ab$a;->a:Lcom/google/common/collect/az;

    .line 672
    iput-object p1, p0, Lcom/google/common/collect/y$2;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/google/common/collect/y$2;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/y$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/google/common/collect/y$2;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/google/common/collect/y$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t;

    invoke-virtual {v0}, Lcom/google/common/collect/t;->a()Lcom/google/common/collect/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/y$2;->b:Ljava/util/Iterator;

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/y$2;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
