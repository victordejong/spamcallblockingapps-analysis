.class public Lscala/collection/parallel/ParIterableLike$ScanLeaf;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$ScanTree;
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanLeaf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.ScanTree<TU;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private acc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private final from:I

.field private final len:I

.field private final op:Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function2<",
            "TU;TU;TU;>;"
        }
    .end annotation
.end field

.field private final pit:Lscala/collection/parallel/IterableSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;"
        }
    .end annotation
.end field

.field private prev:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/IterableSplitter;Lscala/Function2;IILscala/Option;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;",
            "Lscala/Function2<",
            "TU;TU;TU;>;II",
            "Lscala/Option<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;>;TU;)V"
        }
    .end annotation

    .line 1460
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->pit:Lscala/collection/parallel/IterableSplitter;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->op:Lscala/Function2;

    iput p4, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from:I

    iput p5, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len:I

    iput-object p6, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev:Lscala/Option;

    iput-object p7, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc:Ljava/lang/Object;

    .line 1459
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 1461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$ScanTree$class;->$init$(Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public acc()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc:Ljava/lang/Object;

    return-object v0
.end method

.method public acc_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1460
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc:Ljava/lang/Object;

    return-void
.end method

.method public beginsAt()I
    .locals 1

    .line 1462
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from()I

    move-result v0

    return v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1459
    instance-of p1, p1, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    return p1
.end method

.method public copy(Lscala/collection/parallel/IterableSplitter;Lscala/Function2;IILscala/Option;Ljava/lang/Object;)Lscala/collection/parallel/ParIterableLike$ScanLeaf;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;",
            "Lscala/Function2<",
            "TU;TU;TU;>;II",
            "Lscala/Option<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;>;TU;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;"
        }
    .end annotation

    .line 1459
    new-instance v8, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->scala$collection$parallel$ParIterableLike$ScanLeaf$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/IterableSplitter;Lscala/Function2;IILscala/Option;Ljava/lang/Object;)V

    return-object v8
.end method

.method public copy$default$1()Lscala/collection/parallel/IterableSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;"
        }
    .end annotation

    .line 1460
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$2()Lscala/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Function2<",
            "TU;TU;TU;>;"
        }
    .end annotation

    .line 1460
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->op()Lscala/Function2;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$3()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 1460
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from()I

    move-result v0

    return v0
.end method

.method public copy$default$4()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 1460
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len()I

    move-result v0

    return v0
.end method

.method public copy$default$5()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Option<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;>;"
        }
    .end annotation

    .line 1460
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev()Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    .line 1460
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_c

    .line 1459
    instance-of v2, p1, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    invoke-virtual {v2}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->scala$collection$parallel$ParIterableLike$ScanLeaf$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->scala$collection$parallel$ParIterableLike$ScanLeaf$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_d

    check-cast p1, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->op()Lscala/Function2;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->op()Lscala/Function2;

    move-result-object v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_4
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from()I

    move-result v3

    if-ne v2, v3, :cond_b

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len()I

    move-result v3

    if-ne v2, v3, :cond_b

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev()Lscala/Option;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev()Lscala/Option;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_6
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_9

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_9
    instance-of v4, v2, Ljava/lang/Character;

    if-eqz v4, :cond_a

    check-cast v2, Ljava/lang/Character;

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_b

    invoke-virtual {p1, p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_3

    :cond_b
    :goto_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_d

    :cond_c
    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public from()I
    .locals 1

    .line 1460
    iget v0, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1459
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/Statics;->anyHash(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x35014542    # -8346975.0f

    invoke-static {v1, v0}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->op()Lscala/Function2;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/Statics;->anyHash(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from()I

    move-result v1

    invoke-static {v0, v1}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len()I

    move-result v1

    invoke-static {v0, v1}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev()Lscala/Option;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/Statics;->anyHash(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/Statics;->anyHash(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lscala/runtime/Statics;->finalizeHash(II)I

    move-result v0

    return v0
.end method

.method public leftmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;"
        }
    .end annotation

    return-object p0
.end method

.method public len()I
    .locals 1

    .line 1460
    iget v0, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len:I

    return v0
.end method

.method public op()Lscala/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function2<",
            "TU;TU;TU;>;"
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->op:Lscala/Function2;

    return-object v0
.end method

.method public pit()Lscala/collection/parallel/IterableSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;"
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->pit:Lscala/collection/parallel/IterableSplitter;

    return-object v0
.end method

.method public prev()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;>;"
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev:Lscala/Option;

    return-object v0
.end method

.method public prev_$eq(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;>;)V"
        }
    .end annotation

    .line 1460
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev:Lscala/Option;

    return-void
.end method

.method public print(I)V
    .locals 4

    .line 1468
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v3, " "

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lscala/collection/immutable/StringOps;->$times(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public print$default$1()I
    .locals 1

    .line 1459
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$ScanTree$class;->print$default$1(Lscala/collection/parallel/ParIterableLike$ScanTree;)I

    move-result v0

    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1459
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev()Lscala/Option;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len()I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from()I

    move-result p1

    :goto_0
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->op()Lscala/Function2;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1459
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "ScanLeaf"

    return-object v0
.end method

.method public pushdown(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1464
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->op()Lscala/Function2;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc_$eq(Ljava/lang/Object;)V

    return-void
.end method

.method public rightmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;"
        }
    .end annotation

    return-object p0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$ScanLeaf$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1459
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$ScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1432
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->scala$collection$parallel$ParIterableLike$ScanLeaf$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1459
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
