.class final Lcom/google/common/collect/ae$t;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ae;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ae;)V
    .locals 0

    .line 2718
    iput-object p1, p0, Lcom/google/common/collect/ae$t;->a:Lcom/google/common/collect/ae;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 2742
    iget-object v0, p0, Lcom/google/common/collect/ae$t;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0}, Lcom/google/common/collect/ae;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2737
    iget-object v0, p0, Lcom/google/common/collect/ae$t;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ae;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 2732
    iget-object v0, p0, Lcom/google/common/collect/ae$t;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0}, Lcom/google/common/collect/ae;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 2722
    new-instance v0, Lcom/google/common/collect/ae$s;

    iget-object v1, p0, Lcom/google/common/collect/ae$t;->a:Lcom/google/common/collect/ae;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ae$s;-><init>(Lcom/google/common/collect/ae;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 2727
    iget-object v0, p0, Lcom/google/common/collect/ae$t;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0}, Lcom/google/common/collect/ae;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 2750
    invoke-static {p0}, Lcom/google/common/collect/ae;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2755
    invoke-static {p0}, Lcom/google/common/collect/ae;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
