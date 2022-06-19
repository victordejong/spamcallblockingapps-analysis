.class final Lcom/google/common/collect/ap$b;
.super Lcom/google/common/collect/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/z<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/common/collect/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient b:Lcom/google/common/collect/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/x;Lcom/google/common/collect/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x<",
            "TK;*>;",
            "Lcom/google/common/collect/v<",
            "TK;>;)V"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Lcom/google/common/collect/z;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/google/common/collect/ap$b;->a:Lcom/google/common/collect/x;

    .line 381
    iput-object p2, p0, Lcom/google/common/collect/ap$b;->b:Lcom/google/common/collect/v;

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    .line 2396
    iget-object v0, p0, Lcom/google/common/collect/ap$b;->b:Lcom/google/common/collect/v;

    .line 391
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/google/common/collect/ay;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ay<",
            "TK;>;"
        }
    .end annotation

    .line 1396
    iget-object v0, p0, Lcom/google/common/collect/ap$b;->b:Lcom/google/common/collect/v;

    const/4 v1, 0x0

    .line 2358
    invoke-virtual {v0, v1}, Lcom/google/common/collect/v;->a(I)Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/common/collect/ap$b;->a:Lcom/google/common/collect/x;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/google/common/collect/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v<",
            "TK;>;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/google/common/collect/ap$b;->b:Lcom/google/common/collect/v;

    return-object v0
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/google/common/collect/ap$b;->a()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/google/common/collect/ap$b;->a:Lcom/google/common/collect/x;

    invoke-virtual {v0}, Lcom/google/common/collect/x;->size()I

    move-result v0

    return v0
.end method
