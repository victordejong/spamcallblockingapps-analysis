.class public interface abstract Lscala/collection/parallel/Task;
.super Ljava/lang/Object;
.source "Tasks.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "Tp:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\u0015aaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0005)\u0006\u001c8N\u0003\u0002\u0004\t\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0002\u000b3\u0019\u001a\"\u0001A\u0006\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rC\u0003\u0011\u0001\u0011\u0005\u0011#\u0001\u0004%S:LG\u000f\n\u000b\u0002%A\u0011AbE\u0005\u0003)\u0019\u0011A!\u00168ji\u0016!a\u0003\u0001\u0001\u0018\u0005\u0019\u0011Vm];miB\u0011\u0001$\u0007\u0007\u0001\t\u0015Q\u0002A1\u0001\u001c\u0005\u0005\u0011\u0016C\u0001\u000f !\taQ$\u0003\u0002\u001f\r\t9aj\u001c;iS:<\u0007C\u0001\u0007!\u0013\t\tcAA\u0002B]fDQa\t\u0001\u0005\u0002\u0011\nAA]3qeV\tQ\u0005\u0005\u0002\u0019M\u00111q\u0005\u0001CC\u0002m\u0011!\u0001\u00169\t\u000b%\u0002a\u0011\u0001\u0016\u0002\t1,\u0017M\u001a\u000b\u0003%-BQ\u0001\u000c\u0015A\u00025\naA]3tk2$\u0008c\u0001\u0007//%\u0011qF\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u000f1\u0002\u0001\u0019!D\u0001cU\tq\u0003C\u00044\u0001\u0001\u0007i\u0011\u0001\u001b\u0002\u0015I,7/\u001e7u?\u0012*\u0017\u000f\u0006\u0002\u0013k!9aGMA\u0001\u0002\u00049\u0012a\u0001=%c!)\u0001\u0008\u0001D\u0001s\u0005\u00112\u000f[8vY\u0012\u001c\u0006\u000f\\5u\rV\u0014H\u000f[3s+\u0005Q\u0004C\u0001\u0007<\u0013\tadAA\u0004C_>dW-\u00198\t\ry\u0002a\u0011\u0001\u0002@\u0003\u0015\u0019\u0008\u000f\\5u+\u0005\u0001\u0005cA!E\u000f:\u0011ABQ\u0005\u0003\u0007\u001a\tq\u0001]1dW\u0006<W-\u0003\u0002F\r\n\u00191+Z9\u000b\u0005\r3\u0001\u0003\u0002%\u0001/\u0015j\u0011A\u0001\u0005\u0007\u0015\u0002!\tAA&\u0002\u000b5,\'oZ3\u0015\u0005Ia\u0005\"B\'J\u0001\u0004q\u0015\u0001\u0002;iCRT#!J(,\u0003A\u0003\"!\u0015,\u000e\u0003IS!a\u0015+\u0002\u0013Ut7\r[3dW\u0016$\'BA+\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0003/J\u0013\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\u0011\u001dI\u0006\u00011A\u0005\u0002i\u000b\u0011\u0002\u001e5s_^\u000c\'\r\\3\u0016\u0003m\u0003\"!\u0011/\n\u0005u3%!\u0003+ie><\u0018M\u00197f\u0011\u001dy\u0006\u00011A\u0005\u0002\u0001\u000cQ\u0002\u001e5s_^\u000c\'\r\\3`I\u0015\u000cHC\u0001\nb\u0011\u001d1d,!AA\u0002mCaa\u0019\u0001!B\u0013Y\u0016A\u0003;ie><\u0018M\u00197fA!\u0012!-\u001a\t\u0003\u0019\u0019L!a\u001a\u0004\u0003\u0011Y|G.\u0019;jY\u0016DQ!\u001b\u0001\u0005\u0002E\t\u0001CZ8so\u0006\u0014H\r\u00165s_^\u000c\'\r\\3\t\r-\u0004A\u0011\u0001\u0002m\u0003\u001d!(/\u001f\'fC\u001a$\"AE7\t\u000b9T\u0007\u0019A\u0017\u0002\u000f1\u000c7\u000f\u001e:fg\"1\u0001\u000f\u0001C\u0001\u0005E\u000c\u0001\u0002\u001e:z\u001b\u0016\u0014x-\u001a\u000b\u0003%IDQa]8A\u00029\u000b\u0011\u0001\u001e\u0005\u0007k\u0002!\tA\u0001<\u0002\u001f5,\'oZ3UQJ|w/\u00192mKN$\"AE<\t\u000b5#\u0008\u0019\u0001=1\u0007e\\h\u0010\u0005\u0003I\u0001il\u0008C\u0001\r|\t%ax/!A\u0001\u0002\u000b\u00051DA\u0002`IE\u0002\"\u0001\u0007@\u0005\u0013}<\u0018\u0011!A\u0001\u0006\u0003Y\"aA0%e!9\u00111\u0001\u0001\u0005\u0002\t\t\u0012aC:jO:\u000cG.\u00112peR\u0004"
.end annotation


# virtual methods
.method public abstract forwardThrowable()V
.end method

.method public abstract leaf(Lscala/Option;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TR;>;)V"
        }
    .end annotation
.end method

.method public abstract merge(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTp;)V"
        }
    .end annotation
.end method

.method public abstract mergeThrowables(Lscala/collection/parallel/Task;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract repr()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTp;"
        }
    .end annotation
.end method

.method public abstract result()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract result_$eq(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public abstract shouldSplitFurther()Z
.end method

.method public abstract signalAbort()V
.end method

.method public abstract split()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;>;"
        }
    .end annotation
.end method

.method public abstract throwable()Ljava/lang/Throwable;
.end method

.method public abstract throwable_$eq(Ljava/lang/Throwable;)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract tryLeaf(Lscala/Option;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TR;>;)V"
        }
    .end annotation
.end method

.method public abstract tryMerge(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTp;)V"
        }
    .end annotation
.end method
