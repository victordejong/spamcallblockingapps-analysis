.class public final Lscala/runtime/Tuple2Zipped$Ops;
.super Ljava/lang/Object;
.source "Tuple2Zipped.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/runtime/Tuple2Zipped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final x:Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Tuple2<",
            "TT1;TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Tuple2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TT1;TT2;>;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lscala/runtime/Tuple2Zipped$Ops;->x:Lscala/Tuple2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 116
    sget-object v0, Lscala/runtime/Tuple2Zipped$Ops$;->MODULE$:Lscala/runtime/Tuple2Zipped$Ops$;

    invoke-virtual {p0}, Lscala/runtime/Tuple2Zipped$Ops;->x()Lscala/Tuple2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/runtime/Tuple2Zipped$Ops$;->equals$extension(Lscala/Tuple2;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 116
    sget-object v0, Lscala/runtime/Tuple2Zipped$Ops$;->MODULE$:Lscala/runtime/Tuple2Zipped$Ops$;

    invoke-virtual {p0}, Lscala/runtime/Tuple2Zipped$Ops;->x()Lscala/Tuple2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/runtime/Tuple2Zipped$Ops$;->hashCode$extension(Lscala/Tuple2;)I

    move-result v0

    return v0
.end method

.method public invert(Lscala/Predef$$less$colon$less;Lscala/Predef$$less$colon$less;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
            ">(",
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

    .line 121
    sget-object v0, Lscala/runtime/Tuple2Zipped$Ops$;->MODULE$:Lscala/runtime/Tuple2Zipped$Ops$;

    invoke-virtual {p0}, Lscala/runtime/Tuple2Zipped$Ops;->x()Lscala/Tuple2;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lscala/runtime/Tuple2Zipped$Ops$;->invert$extension(Lscala/Tuple2;Lscala/Predef$$less$colon$less;Lscala/Predef$$less$colon$less;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TT1;TT2;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$Ops;->x:Lscala/Tuple2;

    return-object v0
.end method

.method public zipped(Lscala/Function1;Lscala/Function1;)Lscala/Tuple2;
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
            ">(",
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
    sget-object v0, Lscala/runtime/Tuple2Zipped$Ops$;->MODULE$:Lscala/runtime/Tuple2Zipped$Ops$;

    invoke-virtual {p0}, Lscala/runtime/Tuple2Zipped$Ops;->x()Lscala/Tuple2;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lscala/runtime/Tuple2Zipped$Ops$;->zipped$extension(Lscala/Tuple2;Lscala/Function1;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method
