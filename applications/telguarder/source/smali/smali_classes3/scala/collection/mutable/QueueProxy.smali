.class public interface abstract Lscala/collection/mutable/QueueProxy;
.super Ljava/lang/Object;
.source "QueueProxy.scala"

# interfaces
.implements Lscala/Proxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Proxy;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001!4q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0006Rk\u0016,X\r\u0015:pqfT!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"E\n\u0004\u0001-Y\u0002c\u0001\u0007\u000e\u001f5\t!!\u0003\u0002\u000f\u0005\t)\u0011+^3vKB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\u0005\t\u0015C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u0003+qI!!\u0008\u0004\u0003\u000bA\u0013x\u000e_=\t\u000b}\u0001A\u0011\u0001\u0011\u0002\r\u0011Jg.\u001b;%)\u0005\t\u0003CA\u000b#\u0013\t\u0019cA\u0001\u0003V]&$\u0008\"B\u0013\u0001\r\u00031\u0013\u0001B:fY\u001a,\u0012a\u0003\u0005\u0006Q\u0001!\t%K\u0001\u0006CB\u0004H.\u001f\u000b\u0003\u001f)BQaK\u0014A\u00021\n\u0011A\u001c\t\u0003+5J!A\u000c\u0004\u0003\u0007%sG\u000fC\u00031\u0001\u0011\u0005\u0013\'\u0001\u0004mK:<G\u000f[\u000b\u0002Y!)1\u0007\u0001C!i\u00059\u0011n]#naRLX#A\u001b\u0011\u0005U1\u0014BA\u001c\u0007\u0005\u001d\u0011un\u001c7fC:DQ!\u000f\u0001\u0005Bi\n\u0001\u0002\n9mkN$S-\u001d\u000b\u0003wqj\u0011\u0001\u0001\u0005\u0006{a\u0002\raD\u0001\u0005K2,W\u000eC\u0003@\u0001\u0011\u0005\u0003)A\u0007%a2,8\u000f\n9mkN$S-\u001d\u000b\u0003w\u0005CQA\u0011 A\u0002\r\u000b!!\u001b;\u0011\u0007\u0011+u\"D\u0001\u0005\u0013\t1EAA\u0008Ue\u00064XM]:bE2,wJ\\2f\u0011\u0015A\u0005\u0001\"\u0011J\u0003\u001d)g.];fk\u0016$\"!\t&\t\u000b-;\u0005\u0019\u0001\'\u0002\u000b\u0015dW-\\:\u0011\u0007Uiu\"\u0003\u0002O\r\tQAH]3qK\u0006$X\r\u001a \t\u000bA\u0003A\u0011I)\u0002\u000f\u0011,\u0017/^3vKR\tq\u0002C\u0003T\u0001\u0011\u0005C+A\u0003ge>tG/F\u0001\u0010\u0011\u00151\u0006\u0001\"\u0011!\u0003\u0015\u0019G.Z1s\u0011\u0015A\u0006\u0001\"\u0011Z\u0003!IG/\u001a:bi>\u0014X#\u0001.\u0011\u0007\u0011[v\"\u0003\u0002]\t\tA\u0011\n^3sCR|\'\u000fC\u0003_\u0001\u0011\u0005s,A\u0003dY>tW\rF\u0001\u000cQ\u0011\u0001\u0011\r\u001a4\u0011\u0005U\u0011\u0017BA2\u0007\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u0002K\u0006)\u0005K]8ys&tw\rI5tA\u0011,\u0007O]3dCR,G\r\t3vK\u0002\"x\u000e\t7bG.\u0004sN\u001a\u0011vg\u0016\u0004\u0013M\u001c3!G>l\u0007/\u001b7fe6bWM^3mAM,\u0008\u000f]8si:\n\u0013aZ\u0001\u0007e9\n\u0014G\u000c\u0019"
.end annotation


# virtual methods
.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/QueueProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/QueueProxy<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/QueueProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/QueueProxy<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract apply(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract clone()Lscala/collection/mutable/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Queue<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract dequeue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract enqueue(Lscala/collection/Seq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)V"
        }
    .end annotation
.end method

.method public abstract front()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract self()Lscala/collection/mutable/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Queue<",
            "TA;>;"
        }
    .end annotation
.end method
