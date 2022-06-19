.class public abstract Lscala/runtime/AbstractFunction10;
.super Ljava/lang/Object;
.source "AbstractFunction10.scala"

# interfaces
.implements Lscala/Function10;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "T5:",
        "Ljava/lang/Object;",
        "T6:",
        "Ljava/lang/Object;",
        "T7:",
        "Ljava/lang/Object;",
        "T8:",
        "Ljava/lang/Object;",
        "T9:",
        "Ljava/lang/Object;",
        "T10:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function10<",
        "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TR;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001y2Q!\u0001\u0002\u0002\u0002\u001d\u0011!#\u00112tiJ\u000c7\r\u001e$v]\u000e$\u0018n\u001c82a)\u00111\u0001B\u0001\u0008eVtG/[7f\u0015\u0005)\u0011!B:dC2\u000c7\u0001A\u000b\r\u0011IarDI\u0013)W9\nDgN\n\u0004\u0001%i\u0001C\u0001\u0006\u000c\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMBi!B\u0004\t\u001c=\u0005\"sEK\u00171gYJ!a\u0004\u0003\u0003\u0015\u0019+hn\u0019;j_:\u000c\u0004\u0007\u0005\u0002\u0012%1\u0001AAB\n\u0001\u0011\u000b\u0007AC\u0001\u0002UcE\u0011Q\u0003\u0007\t\u0003\u0015YI!a\u0006\u0003\u0003\u000f9{G\u000f[5oOB\u0011!\"G\u0005\u00035\u0011\u00111!\u00118z!\t\tB\u0004\u0002\u0004\u001e\u0001!\u0015\r\u0001\u0006\u0002\u0003)J\u0002\"!E\u0010\u0005\r\u0001\u0002\u0001R1\u0001\u0015\u0005\t!6\u0007\u0005\u0002\u0012E\u001111\u0005\u0001EC\u0002Q\u0011!\u0001\u0016\u001b\u0011\u0005E)CA\u0002\u0014\u0001\u0011\u000b\u0007AC\u0001\u0002UkA\u0011\u0011\u0003\u000b\u0003\u0007S\u0001A)\u0019\u0001\u000b\u0003\u0005Q3\u0004CA\t,\t\u0019a\u0003\u0001#b\u0001)\t\u0011Ak\u000e\t\u0003#9\"aa\u000c\u0001\t\u0006\u0004!\"A\u0001+9!\t\t\u0012\u0007\u0002\u00043\u0001!\u0015\r\u0001\u0006\u0002\u0003)f\u0002\"!\u0005\u001b\u0005\rU\u0002\u0001R1\u0001\u0015\u0005\r!\u0016\u0007\r\t\u0003#]\"a\u0001\u000f\u0001\u0005\u0006\u0004!\"!\u0001*\t\u000bi\u0002A\u0011A\u001e\u0002\rqJg.\u001b;?)\u0005a\u0004#D\u001f\u0001!mq\u0012\u0005J\u0014+[A\u001ad\'D\u0001\u0003\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function10$class;->$init$(Lscala/Function10;)V

    return-void
.end method


# virtual methods
.method public curried()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TT1;",
            "Lscala/Function1<",
            "TT2;",
            "Lscala/Function1<",
            "TT3;",
            "Lscala/Function1<",
            "TT4;",
            "Lscala/Function1<",
            "TT5;",
            "Lscala/Function1<",
            "TT6;",
            "Lscala/Function1<",
            "TT7;",
            "Lscala/Function1<",
            "TT8;",
            "Lscala/Function1<",
            "TT9;",
            "Lscala/Function1<",
            "TT10;TR;>;>;>;>;>;>;>;>;>;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lscala/Function10$class;->curried(Lscala/Function10;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-static {p0}, Lscala/Function10$class;->toString(Lscala/Function10;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tupled()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Lscala/Tuple10<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;>;TR;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lscala/Function10$class;->tupled(Lscala/Function10;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method
