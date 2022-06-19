.class public abstract Lscala/runtime/AbstractFunction5;
.super Ljava/lang/Object;
.source "AbstractFunction5.scala"

# interfaces
.implements Lscala/Function5;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function5<",
        "TT1;TT2;TT3;TT4;TT5;TR;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001=2Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\u000c7\r\u001e$v]\u000e$\u0018n\u001c86\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!F\u0004\t%qy\"%\n\u0015\u0014\u0007\u0001IQ\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u0004\u0002B\u0003\u0008\u00117y\tCeJ\u0005\u0003\u001f\u0011\u0011\u0011BR;oGRLwN\\\u001b\u0011\u0005E\u0011B\u0002\u0001\u0003\u0007\'\u0001A)\u0019\u0001\u000b\u0003\u0005Q\u000b\u0014CA\u000b\u0019!\tQa#\u0003\u0002\u0018\t\t9aj\u001c;iS:<\u0007C\u0001\u0006\u001a\u0013\tQBAA\u0002B]f\u0004\"!\u0005\u000f\u0005\ru\u0001\u0001R1\u0001\u0015\u0005\t!&\u0007\u0005\u0002\u0012?\u00111\u0001\u0005\u0001EC\u0002Q\u0011!\u0001V\u001a\u0011\u0005E\u0011CAB\u0012\u0001\u0011\u000b\u0007AC\u0001\u0002UiA\u0011\u0011#\n\u0003\u0007M\u0001A)\u0019\u0001\u000b\u0003\u0005Q+\u0004CA\t)\t\u0019I\u0003\u0001\"b\u0001)\t\t!\u000bC\u0003,\u0001\u0011\u0005A&\u0001\u0004=S:LGO\u0010\u000b\u0002[AAa\u0006\u0001\t\u001c=\u0005\"s%D\u0001\u0003\u0001"
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

    invoke-static {p0}, Lscala/Function5$class;->$init$(Lscala/Function5;)V

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
            "TT5;TR;>;>;>;>;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lscala/Function5$class;->curried(Lscala/Function5;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-static {p0}, Lscala/Function5$class;->toString(Lscala/Function5;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tupled()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Lscala/Tuple5<",
            "TT1;TT2;TT3;TT4;TT5;>;TR;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lscala/Function5$class;->tupled(Lscala/Function5;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method
