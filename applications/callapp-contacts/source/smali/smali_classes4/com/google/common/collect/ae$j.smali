.class final Lcom/google/common/collect/ae$j;
.super Lcom/google/common/collect/ae$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ae$k<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ae;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ae;)V
    .locals 0

    .line 2684
    iput-object p1, p0, Lcom/google/common/collect/ae$j;->a:Lcom/google/common/collect/ae;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ae$k;-><init>(Lcom/google/common/collect/ae$1;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 2713
    iget-object v0, p0, Lcom/google/common/collect/ae$j;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0}, Lcom/google/common/collect/ae;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2703
    iget-object v0, p0, Lcom/google/common/collect/ae$j;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ae;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/google/common/collect/ae$j;->a:Lcom/google/common/collect/ae;

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
            "TK;>;"
        }
    .end annotation

    .line 2688
    new-instance v0, Lcom/google/common/collect/ae$i;

    iget-object v1, p0, Lcom/google/common/collect/ae$j;->a:Lcom/google/common/collect/ae;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ae$i;-><init>(Lcom/google/common/collect/ae;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2708
    iget-object v0, p0, Lcom/google/common/collect/ae$j;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ae;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    .line 2693
    iget-object v0, p0, Lcom/google/common/collect/ae$j;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0}, Lcom/google/common/collect/ae;->size()I

    move-result v0

    return v0
.end method
