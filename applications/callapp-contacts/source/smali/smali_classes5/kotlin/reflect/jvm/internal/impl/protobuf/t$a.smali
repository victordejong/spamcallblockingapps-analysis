.class final Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V
    .locals 0

    .line 602
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    .line 695
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->b()[I

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method


# virtual methods
.method final a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V
    .locals 5

    .line 628
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1656
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a(I)I

    move-result v0

    .line 1657
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->b()[I

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    .line 1663
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto/16 :goto_3

    .line 1666
    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->b()[I

    move-result-object v1

    aget v0, v1, v0

    .line 1669
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 1670
    :goto_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 1672
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 1673
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    invoke-direct {v4, v2, v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V

    move-object v1, v4

    goto :goto_1

    .line 1677
    :cond_1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    invoke-direct {v0, v1, p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V

    .line 1680
    :goto_2
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1681
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a(I)I

    move-result p1

    .line 1682
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->b()[I

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    .line 1683
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 1684
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 1685
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    invoke-direct {v1, p1, v0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V

    move-object v0, v1

    goto :goto_2

    .line 1690
    :cond_2
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1664
    :cond_3
    :goto_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 630
    :cond_4
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    if-eqz v0, :cond_5

    .line 631
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    .line 632
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    .line 633
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    goto/16 :goto_0

    .line 635
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
