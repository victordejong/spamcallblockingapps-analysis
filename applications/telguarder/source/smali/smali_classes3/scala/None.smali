.class public final Lscala/None;
.super Ljava/lang/Object;
.source "Option.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001m;Q!\u0001\u0002\t\u0002\u0016\tAAT8oK*\t1!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005\u00199Q\"\u0001\u0002\u0007\u000b!\u0011\u0001\u0012Q\u0005\u0003\t9{g.Z\n\u0005\u000f)\u00012\u0003E\u0002\u0007\u00175I!\u0001\u0004\u0002\u0003\r=\u0003H/[8o!\t1a\"\u0003\u0002\u0010\u0005\t9aj\u001c;iS:<\u0007C\u0001\u0004\u0012\u0013\t\u0011\"AA\u0004Qe>$Wo\u0019;\u0011\u0005\u0019!\u0012BA\u000b\u0003\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011\u00159r\u0001\"\u0001\u0019\u0003\u0019a\u0014N\\5u}Q\tQ\u0001C\u0003\u001b\u000f\u0011\u00051$A\u0004jg\u0016k\u0007\u000f^=\u0016\u0003q\u0001\"AB\u000f\n\u0005y\u0011!a\u0002\"p_2,\u0017M\u001c\u0005\u0006A\u001d!\t!I\u0001\u0004O\u0016$X#A\u0007\t\u000f\r:\u0011\u0011!C!I\u0005i\u0001O]8ek\u000e$\u0008K]3gSb,\u0012!\n\t\u0003M-j\u0011a\n\u0006\u0003Q%\nA\u0001\\1oO*\t!&\u0001\u0003kCZ\u000c\u0017B\u0001\u0017(\u0005\u0019\u0019FO]5oO\"9afBA\u0001\n\u0003y\u0013\u0001\u00049s_\u0012,8\r^!sSRLX#\u0001\u0019\u0011\u0005\u0019\t\u0014B\u0001\u001a\u0003\u0005\rIe\u000e\u001e\u0005\u0008i\u001d\t\t\u0011\"\u00016\u00039\u0001(o\u001c3vGR,E.Z7f]R$\"AN\u001d\u0011\u0005\u00199\u0014B\u0001\u001d\u0003\u0005\r\te.\u001f\u0005\u0008uM\n\t\u00111\u00011\u0003\rAH%\r\u0005\u0008y\u001d\t\t\u0011\"\u0011>\u0003=\u0001(o\u001c3vGRLE/\u001a:bi>\u0014X#\u0001 \u0011\u0007}\u0012e\'D\u0001A\u0015\t\t%!\u0001\u0006d_2dWm\u0019;j_:L!a\u0011!\u0003\u0011%#XM]1u_JDq!R\u0004\u0002\u0002\u0013\u0005a)\u0001\u0005dC:,\u0015/^1m)\tar\tC\u0004;\t\u0006\u0005\t\u0019\u0001\u001c\t\u000f%;\u0011\u0011!C!\u0015\u0006A\u0001.Y:i\u0007>$W\rF\u00011\u0011\u001dau!!A\u0005B5\u000b\u0001\u0002^8TiJLgn\u001a\u000b\u0002K!9qjBA\u0001\n\u0013\u0001\u0016a\u0003:fC\u0012\u0014Vm]8mm\u0016$\u0012!\u0015\t\u0003MIK!aU\u0014\u0003\r=\u0013\'.Z2uQ\u00119Q\u000bW-\u0011\u0005\u00191\u0016BA,\u0003\u0005A\u0019VM]5bYZ+\'o]5p]VKE)A\u0003wC2,XM\u0008\u0005G!\u00122@K3K-R\u0011\u0001Q\u000bW-"
.end annotation


# direct methods
.method public static canEqual(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->canEqual(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static collect(Lscala/PartialFunction;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/runtime/Nothing$;",
            "TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->collect(Lscala/PartialFunction;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static exists(Lscala/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/runtime/Nothing$;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->exists(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static filter(Lscala/Function1;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/runtime/Nothing$;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->filter(Lscala/Function1;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static filterNot(Lscala/Function1;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/runtime/Nothing$;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->filterNot(Lscala/Function1;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static flatMap(Lscala/Function1;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/runtime/Nothing$;",
            "Lscala/Option<",
            "TB;>;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->flatMap(Lscala/Function1;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static flatten(Lscala/Predef$$less$colon$less;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "Lscala/runtime/Nothing$;",
            "Lscala/Option<",
            "TB;>;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->flatten(Lscala/Predef$$less$colon$less;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static fold(Lscala/Function0;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TB;>;",
            "Lscala/Function1<",
            "Lscala/runtime/Nothing$;",
            "TB;>;)TB;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0, p1}, Lscala/None$;->fold(Lscala/Function0;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forall(Lscala/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/runtime/Nothing$;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->forall(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static foreach(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/runtime/Nothing$;",
            "TU;>;)V"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static get()Lscala/runtime/Nothing$;
    .locals 1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->get()Lscala/runtime/Nothing$;

    move-result-object v0

    return-object v0
.end method

.method public static getOrElse(Lscala/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TB;>;)TB;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hashCode()I
    .locals 1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->hashCode()I

    move-result v0

    return v0
.end method

.method public static isDefined()Z
    .locals 1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->isDefined()Z

    move-result v0

    return v0
.end method

.method public static isEmpty()Z
    .locals 1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static map(Lscala/Function1;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/runtime/Nothing$;",
            "TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->map(Lscala/Function1;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static nonEmpty()Z
    .locals 1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->nonEmpty()Z

    move-result v0

    return v0
.end method

.method public static orElse(Lscala/Function0;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/Option<",
            "TB;>;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->orElse(Lscala/Function0;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static orNull(Lscala/Predef$$less$colon$less;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "Lscala/runtime/Null$;",
            "TA1;>;)TA1;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->orNull(Lscala/Predef$$less$colon$less;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static productArity()I
    .locals 1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->productArity()I

    move-result v0

    return v0
.end method

.method public static productElement(I)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->productElement(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->productIterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static productPrefix()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->productPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLeft(Lscala/Function0;)Lscala/util/Either;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TX;>;)",
            "Lscala/Product;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->toLeft(Lscala/Function0;)Lscala/util/Either;

    move-result-object p0

    return-object p0
.end method

.method public static toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public static toRight(Lscala/Function0;)Lscala/util/Either;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TX;>;)",
            "Lscala/Product;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->toRight(Lscala/Function0;)Lscala/util/Either;

    move-result-object p0

    return-object p0
.end method

.method public static toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/None$;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static withFilter(Lscala/Function1;)Lscala/Option$WithFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/runtime/Nothing$;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/runtime/Nothing$;",
            ">.WithFilter;"
        }
    .end annotation

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p0}, Lscala/None$;->withFilter(Lscala/Function1;)Lscala/Option$WithFilter;

    move-result-object p0

    return-object p0
.end method
