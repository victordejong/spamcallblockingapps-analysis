.class public interface abstract Lscala/collection/parallel/Tasks;
.super Ljava/lang/Object;
.source "Tasks.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/Tasks$WrappedTask;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\raaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0006)\u0006\u001c8n\u001d\u0006\u0003\u0007\u0011\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\n\u0003\u0001)\u0001\"a\u0003\u0007\u000e\u0003\u0019I!!\u0004\u0004\u0003\r\u0005s\u0017PU3g\u0011\u0015y\u0001\u0001\"\u0001\u0011\u0003\u0019!\u0013N\\5uIQ\t\u0011\u0003\u0005\u0002\u000c%%\u00111C\u0002\u0002\u0005+:LG\u000f\u0003\u0005\u0016\u0001\t\u0007I\u0011\u0001\u0002\u0017\u00035!WMY;h\u001b\u0016\u001c8/Y4fgV\tq\u0003E\u0002\u00197ui\u0011!\u0007\u0006\u00035\u0011\tq!\\;uC\ndW-\u0003\u0002\u001d3\tY\u0011I\u001d:bs\n+hMZ3s!\tq\u0012E\u0004\u0002\u000c?%\u0011\u0001EB\u0001\u0007!J,G-\u001a4\n\u0005\t\u001a#AB*ue&twM\u0003\u0002!\r!1Q\u0005\u0001Q\u0001\n]\ta\u0002Z3ck\u001elUm]:bO\u0016\u001c\u0008\u0005\u0003\u0004(\u0001\u0011\u0005!\u0001K\u0001\tI\u0016\u0014Wo\u001a7pOR\u0011q#\u000b\u0005\u0006U\u0019\u0002\r!H\u0001\u0002g\u001a9A\u0006\u0001I\u0001\u0004\u0003i#aC,sCB\u0004X\r\u001a+bg.,2AL\u001dD\'\tY#\u0002C\u0003\u0010W\u0011\u0005\u0001\u0003C\u00042W\t\u0007i\u0011\u0001\u001a\u0002\t\t|G-_\u000b\u0002gA!A\'N\u001cC\u001b\u0005\u0011\u0011B\u0001\u001c\u0003\u0005\u0011!\u0016m]6\u0011\u0005aJD\u0002\u0001\u0003\u0006u-\u0012\ra\u000f\u0002\u0002%F\u0011Ah\u0010\t\u0003\u0017uJ!A\u0010\u0004\u0003\u000f9{G\u000f[5oOB\u00111\u0002Q\u0005\u0003\u0003\u001a\u00111!\u00118z!\tA4\t\u0002\u0004EW\u0011\u0015\ra\u000f\u0002\u0003)BDQAR\u0016\u0007\u0002\u001d\u000bQa\u001d9mSR,\u0012\u0001\u0013\t\u0004\u00132{eBA\u0006K\u0013\tYe!A\u0004qC\u000e\\\u0017mZ3\n\u00055s%aA*fc*\u00111J\u0002\t\u0005!.:$)D\u0001\u0001\u0011\u0015\u00116F\"\u0001\u0011\u0003\u001d\u0019w.\u001c9vi\u0016DQ\u0001V\u0016\u0007\u0002A\tQa\u001d;beRDQAV\u0016\u0007\u0002A\tAa]=oG\")\u0001l\u000bD\u00013\u0006IAO]=DC:\u001cW\r\u001c\u000b\u00025B\u00111bW\u0005\u00039\u001a\u0011qAQ8pY\u0016\u000cg\u000eC\u0003_W\u0011\u0005\u0001#A\u0004sK2,\u0017m]3\t\u000f\u0001\u0004!\u0019!D\u0001C\u0006YQM\u001c<je>tW.\u001a8u+\u0005Q\u0001\"B2\u0001\r\u0003!\u0017aB3yK\u000e,H/Z\u000b\u0004K*|GC\u00014l!\rYq-[\u0005\u0003Q\u001a\u0011\u0011BR;oGRLwN\u001c\u0019\u0011\u0005aRG!\u0002\u001ec\u0005\u0004Y\u0004\"\u00027c\u0001\u0004i\u0017A\u00024ki\u0006\u001c8\u000e\u0005\u00035k%t\u0007C\u0001\u001dp\t\u0015!%M1\u0001<\u0011\u0015\t\u0008A\"\u0001s\u0003Q)\u00070Z2vi\u0016\u000ce\u000eZ,bSR\u0014Vm];miV\u00191/\u001e>\u0015\u0005Q4\u0008C\u0001\u001dv\t\u0015Q\u0004O1\u0001<\u0011\u00159\u0008\u000f1\u0001y\u0003\u0011!\u0018m]6\u0011\tQ*D/\u001f\t\u0003qi$Q\u0001\u00129C\u0002mBQ\u0001 \u0001\u0007\u0002u\u000c\u0001\u0003]1sC2dW\r\\5t[2+g/\u001a7\u0016\u0003y\u0004\"aC@\n\u0007\u0005\u0005aAA\u0002J]R\u0004"
.end annotation


# virtual methods
.method public abstract debugMessages()Lscala/collection/mutable/ArrayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract debuglog(Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract environment()Ljava/lang/Object;
.end method

.method public abstract execute(Lscala/collection/parallel/Task;)Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "Tp:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)",
            "Lscala/Function0<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "Tp:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)TR;"
        }
    .end annotation
.end method

.method public abstract parallelismLevel()I
.end method

.method public abstract scala$collection$parallel$Tasks$_setter_$debugMessages_$eq(Lscala/collection/mutable/ArrayBuffer;)V
.end method
