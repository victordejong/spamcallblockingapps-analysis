.class public abstract Lscala/runtime/AbstractFunction9;
.super Ljava/lang/Object;
.source "AbstractFunction9.scala"

# interfaces
.implements Lscala/Function9;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function9<",
        "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001m2Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\u000c7\r\u001e$v]\u000e$\u0018n\u001c8:\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!F\u0006\t%qy\"%\n\u0015,]E\"4c\u0001\u0001\n\u001bA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0019)q\u0001c\u0007\u0010\"I\u001dRS\u0006M\u001a\n\u0005=!!!\u0003$v]\u000e$\u0018n\u001c8:!\t\t\"\u0003\u0004\u0001\u0005\rM\u0001\u0001R1\u0001\u0015\u0005\t!\u0016\'\u0005\u0002\u00161A\u0011!BF\u0005\u0003/\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b3%\u0011!\u0004\u0002\u0002\u0004\u0003:L\u0008CA\t\u001d\t\u0019i\u0002\u0001#b\u0001)\t\u0011AK\r\t\u0003#}!a\u0001\t\u0001\t\u0006\u0004!\"A\u0001+4!\t\t\"\u0005\u0002\u0004$\u0001!\u0015\r\u0001\u0006\u0002\u0003)R\u0002\"!E\u0013\u0005\r\u0019\u0002\u0001R1\u0001\u0015\u0005\t!V\u0007\u0005\u0002\u0012Q\u00111\u0011\u0006\u0001EC\u0002Q\u0011!\u0001\u0016\u001c\u0011\u0005EYCA\u0002\u0017\u0001\u0011\u000b\u0007AC\u0001\u0002UoA\u0011\u0011C\u000c\u0003\u0007_\u0001A)\u0019\u0001\u000b\u0003\u0005QC\u0004CA\t2\t\u0019\u0011\u0004\u0001#b\u0001)\t\u0011A+\u000f\t\u0003#Q\"a!\u000e\u0001\u0005\u0006\u0004!\"!\u0001*\t\u000b]\u0002A\u0011\u0001\u001d\u0002\rqJg.\u001b;?)\u0005I\u0004\u0003\u0004\u001e\u0001!mq\u0012\u0005J\u0014+[A\u001aT\"\u0001\u0002"
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

    invoke-static {p0}, Lscala/Function9$class;->$init$(Lscala/Function9;)V

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
            "TT9;TR;>;>;>;>;>;>;>;>;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lscala/Function9$class;->curried(Lscala/Function9;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-static {p0}, Lscala/Function9$class;->toString(Lscala/Function9;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tupled()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Lscala/Tuple9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;TR;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lscala/Function9$class;->tupled(Lscala/Function9;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method
