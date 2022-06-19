.class public final Lscala/sys/process/ProcessImpl$PipeThread$$anonfun$10;
.super Lscala/runtime/AbstractFunction1;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessImpl$PipeThread;->runloop(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/io/IOException;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/sys/process/ProcessImpl$PipeThread;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$PipeThread;)V
    .locals 0

    .line 160
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$PipeThread$$anonfun$10;->$outer:Lscala/sys/process/ProcessImpl$PipeThread;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessImpl$PipeThread$$anonfun$10;->apply(Ljava/io/IOException;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/io/IOException;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipeThread$$anonfun$10;->$outer:Lscala/sys/process/ProcessImpl$PipeThread;

    invoke-virtual {v0, p1}, Lscala/sys/process/ProcessImpl$PipeThread;->scala$sys$process$ProcessImpl$PipeThread$$ioHandler(Ljava/io/IOException;)V

    return-void
.end method
