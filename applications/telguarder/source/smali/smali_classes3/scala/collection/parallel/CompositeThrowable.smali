.class public final Lscala/collection/parallel/CompositeThrowable;
.super Ljava/lang/Exception;
.source "package.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\u001draB\u0001\u0003\u0003\u0003E\t!C\u0001\u0013\u0007>l\u0007o\\:ji\u0016$\u0006N]8xC\ndWM\u0003\u0002\u0004\t\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\u000b\u00175\t!AB\u0004\r\u0005\u0005\u0005\t\u0012A\u0007\u0003%\r{W\u000e]8tSR,G\u000b\u001b:po\u0006\u0014G.Z\n\u0004\u00179I\u0003\u0003B\u0008\u0013)\u0001j\u0011\u0001\u0005\u0006\u0003#\u0019\tqA];oi&lW-\u0003\u0002\u0014!\t\t\u0012IY:ue\u0006\u001cGOR;oGRLwN\\\u0019\u0011\u0007U1\u0002$D\u0001\u0005\u0013\t9BAA\u0002TKR\u0004\"!G\u000f\u000f\u0005iYR\"\u0001\u0004\n\u0005q1\u0011a\u00029bG.\u000cw-Z\u0005\u0003=}\u0011\u0011\u0002\u00165s_^\u000c\'\r\\3\u000b\u0005q1\u0001C\u0001\u0006\"\r\u0011a!A\u0011\u0012\u0014\t\u0005\u001ac%\u000b\t\u00033\u0011J!!J\u0010\u0003\u0013\u0015C8-\u001a9uS>t\u0007C\u0001\u000e(\u0013\tAcAA\u0004Qe>$Wo\u0019;\u0011\u0005iQ\u0013BA\u0016\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!i\u0013E!f\u0001\n\u0003q\u0013A\u0003;ie><\u0018M\u00197fgV\tA\u0003\u0003\u00051C\tE\t\u0015!\u0003\u0015\u0003-!\u0008N]8xC\ndWm\u001d\u0011\t\u000bI\nC\u0011A\u001a\u0002\rqJg.\u001b;?)\t\u0001C\u0007C\u0003.c\u0001\u0007A\u0003C\u00047C\u0005\u0005I\u0011A\u001c\u0002\t\r|\u0007/\u001f\u000b\u0003AaBq!L\u001b\u0011\u0002\u0003\u0007A\u0003C\u0004;CE\u0005I\u0011A\u001e\u0002\u001d\r|\u0007/\u001f\u0013eK\u001a\u000cW\u000f\u001c;%cU\tAH\u000b\u0002\u0015{-\na\u0008\u0005\u0002@\t6\t\u0001I\u0003\u0002B\u0005\u0006IQO\\2iK\u000e\\W\r\u001a\u0006\u0003\u0007\u001a\t!\"\u00198o_R\u000cG/[8o\u0013\t)\u0005IA\tv]\u000eDWmY6fIZ\u000b\'/[1oG\u0016DqaR\u0011\u0002\u0002\u0013\u0005\u0003*A\u0007qe>$Wo\u0019;Qe\u00164\u0017\u000e_\u000b\u0002\u0013B\u0011!jT\u0007\u0002\u0017*\u0011A*T\u0001\u0005Y\u0006twMC\u0001O\u0003\u0011Q\u0017M^1\n\u0005A[%AB*ue&tw\rC\u0004SC\u0005\u0005I\u0011A*\u0002\u0019A\u0014x\u000eZ;di\u0006\u0013\u0018\u000e^=\u0016\u0003Q\u0003\"AG+\n\u0005Y3!aA%oi\"9\u0001,IA\u0001\n\u0003I\u0016A\u00049s_\u0012,8\r^#mK6,g\u000e\u001e\u000b\u00035v\u0003\"AG.\n\u0005q3!aA!os\"9alVA\u0001\u0002\u0004!\u0016a\u0001=%c!9\u0001-IA\u0001\n\u0003\n\u0017a\u00049s_\u0012,8\r^%uKJ\u000cGo\u001c:\u0016\u0003\t\u00042!F2[\u0013\t!GA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u001d1\u0017%!A\u0005\u0002\u001d\u000c\u0001bY1o\u000bF,\u0018\r\u001c\u000b\u0003Q.\u0004\"AG5\n\u0005)4!a\u0002\"p_2,\u0017M\u001c\u0005\u0008=\u0016\u000c\t\u00111\u0001[\u0011\u001di\u0017%!A\u0005B9\u000c\u0001\u0002[1tQ\u000e{G-\u001a\u000b\u0002)\"9\u0001/IA\u0001\n\u0003\n\u0018AB3rk\u0006d7\u000f\u0006\u0002ie\"9al\\A\u0001\u0002\u0004Q\u0006\u0006B\u0011uof\u0004\"AG;\n\u0005Y4!A\u00033faJ,7-\u0019;fI\u0006\n\u00010A\u000eUQ&\u001c\u0008e\u00197bgN\u0004s/\u001b7mA\t,\u0007E]3n_Z,GML\u0011\u0002u\u00061!GL\u00192]ABQAM\u0006\u0005\u0002q$\u0012!\u0003\u0005\u0008}.\t\t\u0011\"\u0012\u0000\u0003!!xn\u0015;sS:<G#A%\t\u0013\u0005\r1\"!A\u0005\u0002\u0006\u0015\u0011!B1qa2LHc\u0001\u0011\u0002\u0008!1Q&!\u0001A\u0002QA\u0011\"a\u0003\u000c\u0003\u0003%\t)!\u0004\u0002\u000fUt\u0017\r\u001d9msR!\u0011qBA\u000b!\u0011Q\u0012\u0011\u0003\u000b\n\u0007\u0005MaA\u0001\u0004PaRLwN\u001c\u0005\n\u0003/\tI!!AA\u0002\u0001\n1\u0001\u001f\u00131\u0011%\tYbCA\u0001\n\u0013\ti\"A\u0006sK\u0006$\'+Z:pYZ,GCAA\u0010!\rQ\u0015\u0011E\u0005\u0004\u0003GY%AB(cU\u0016\u001cG\u000f\u000b\u0003\u000ci^L\u0008"
.end annotation


# instance fields
.field private final throwables:Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lscala/collection/parallel/CompositeThrowable;->throwables:Lscala/collection/Set;

    .line 148
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Multiple exceptions thrown during a parallel computation: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    .line 149
    new-instance v1, Lscala/collection/parallel/CompositeThrowable$$anonfun$$lessinit$greater$1;

    invoke-direct {v1}, Lscala/collection/parallel/CompositeThrowable$$anonfun$$lessinit$greater$1;-><init>()V

    sget-object v2, Lscala/collection/Set$;->MODULE$:Lscala/collection/Set$;

    invoke-virtual {v2}, Lscala/collection/Set$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lscala/collection/Set;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    const-string v1, "\n\n"

    invoke-interface {p1, v1}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method

.method public static andThen(Lscala/Function1;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/parallel/CompositeThrowable;",
            "TA;>;)",
            "Lscala/Function1<",
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/CompositeThrowable$;->MODULE$:Lscala/collection/parallel/CompositeThrowable$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/CompositeThrowable$;->andThen(Lscala/Function1;)Lscala/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/collection/Set;)Lscala/collection/parallel/CompositeThrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lscala/collection/parallel/CompositeThrowable;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/CompositeThrowable$;->MODULE$:Lscala/collection/parallel/CompositeThrowable$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/CompositeThrowable$;->apply(Lscala/collection/Set;)Lscala/collection/parallel/CompositeThrowable;

    move-result-object p0

    return-object p0
.end method

.method public static compose(Lscala/Function1;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/parallel/CompositeThrowable;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/CompositeThrowable$;->MODULE$:Lscala/collection/parallel/CompositeThrowable$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/CompositeThrowable$;->compose(Lscala/Function1;)Lscala/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/collection/parallel/CompositeThrowable;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/CompositeThrowable;",
            ")",
            "Lscala/Option<",
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/CompositeThrowable$;->MODULE$:Lscala/collection/parallel/CompositeThrowable$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/CompositeThrowable$;->unapply(Lscala/collection/parallel/CompositeThrowable;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 147
    instance-of p1, p1, Lscala/collection/parallel/CompositeThrowable;

    return p1
.end method

.method public copy(Lscala/collection/Set;)Lscala/collection/parallel/CompositeThrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lscala/collection/parallel/CompositeThrowable;"
        }
    .end annotation

    .line 147
    new-instance v0, Lscala/collection/parallel/CompositeThrowable;

    invoke-direct {v0, p1}, Lscala/collection/parallel/CompositeThrowable;-><init>(Lscala/collection/Set;)V

    return-object v0
.end method

.method public copy$default$1()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lscala/collection/parallel/CompositeThrowable;->throwables()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_3

    .line 147
    instance-of v2, p1, Lscala/collection/parallel/CompositeThrowable;

    if-eqz v2, :cond_4

    check-cast p1, Lscala/collection/parallel/CompositeThrowable;

    invoke-virtual {p0}, Lscala/collection/parallel/CompositeThrowable;->throwables()Lscala/collection/Set;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/parallel/CompositeThrowable;->throwables()Lscala/collection/Set;

    move-result-object p1

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 147
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lscala/collection/parallel/CompositeThrowable;->throwables()Lscala/collection/Set;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 147
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "CompositeThrowable"

    return-object v0
.end method

.method public throwables()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lscala/collection/parallel/CompositeThrowable;->throwables:Lscala/collection/Set;

    return-object v0
.end method
