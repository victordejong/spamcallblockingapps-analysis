.class public Lscala/runtime/Tuple2Zipped$Ops$;
.super Ljava/lang/Object;
.source "Tuple2Zipped.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/runtime/Tuple2Zipped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ops$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/runtime/Tuple2Zipped$Ops$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/Tuple2Zipped$Ops$;

    invoke-direct {v0}, Lscala/runtime/Tuple2Zipped$Ops$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/Tuple2Zipped$Ops$;->MODULE$:Lscala/runtime/Tuple2Zipped$Ops$;

    return-void
.end method


# virtual methods
.method public final equals$extension(Lscala/Tuple2;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TT1;TT2;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 116
    instance-of v0, p2, Lscala/runtime/Tuple2Zipped$Ops;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/runtime/Tuple2Zipped$Ops;

    invoke-virtual {p2}, Lscala/runtime/Tuple2Zipped$Ops;->x()Lscala/Tuple2;

    move-result-object p2

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public final hashCode$extension(Lscala/Tuple2;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TT1;TT2;>;)I"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lscala/Tuple2;->hashCode()I

    move-result p1

    return p1
.end method

.method public final invert$extension(Lscala/Tuple2;Lscala/Predef$$less$colon$less;Lscala/Predef$$less$colon$less;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<El1:",
            "Ljava/lang/Object;",
            "CC1::",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;El2:",
            "Ljava/lang/Object;",
            "CC2::",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;That:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TT1;TT2;>;",
            "Lscala/Predef$$less$colon$less<",
            "TT1;TCC1;>;",
            "Lscala/Predef$$less$colon$less<",
            "TT2;TCC2;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TCC1;",
            "Lscala/Tuple2<",
            "TEl1;TEl2;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lscala/Predef$$less$colon$less;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p4

    .line 123
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lscala/Predef$$less$colon$less;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/GenTraversableOnce;

    invoke-interface {p2}, Lscala/collection/GenTraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object p2

    .line 124
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lscala/Predef$$less$colon$less;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversableOnce;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object p1

    .line 125
    :goto_0
    invoke-interface {p2}, Lscala/collection/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 126
    new-instance p3, Lscala/Tuple2;

    invoke-interface {p2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p3}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 128
    :cond_0
    invoke-interface {p4}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zipped$extension(Lscala/Tuple2;Lscala/Function1;Lscala/Function1;)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<El1:",
            "Ljava/lang/Object;",
            "Repr1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            "Repr2:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TT1;TT2;>;",
            "Lscala/Function1<",
            "TT1;",
            "Lscala/collection/TraversableLike<",
            "TEl1;TRepr1;>;>;",
            "Lscala/Function1<",
            "TT2;",
            "Lscala/collection/IterableLike<",
            "TEl2;TRepr2;>;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/TraversableLike<",
            "TEl1;TRepr1;>;",
            "Lscala/collection/IterableLike<",
            "TEl2;TRepr2;>;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
