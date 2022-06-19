.class public interface abstract Lscala/concurrent/ThreadPoolRunner;
.super Ljava/lang/Object;
.source "ThreadPoolRunner.scala"

# interfaces
.implements Lscala/concurrent/FutureTaskRunner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/ThreadPoolRunner$RunCallable;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00055b\u0001C\u0001\u0003!\u0003\r\t\u0001\u0002\u0004\u0003!QC\'/Z1e!>|GNU;o]\u0016\u0014(BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0002\u000b\u0005)1oY1mCN\u0019\u0001aB\u0006\u0011\u0005!IQ\"\u0001\u0003\n\u0005)!!AB!osJ+g\r\u0005\u0002\r\u001b5\t!!\u0003\u0002\u000f\u0005\t\u0001b)\u001e;ve\u0016$\u0016m]6Sk:tWM\u001d\u0005\u0006!\u0001!\tAE\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0004\u0001Q\t1\u0003\u0005\u0002\t)%\u0011Q\u0003\u0002\u0002\u0005+:LG/\u0002\u0003\u0018\u0001\u0001A\"\u0001\u0002+bg.,\"!G\u0014\u0013\u0007ia\u0002G\u0002\u0003\u001c\u0001\u0001I\"\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004cA\u000f$K5\taD\u0003\u0002\u0004?)\u0011\u0001%I\u0001\u0005kRLGNC\u0001#\u0003\u0011Q\u0017M^1\n\u0005\u0011r\"\u0001C\"bY2\u000c\'\r\\3\u0011\u0005\u0019:C\u0002\u0001\u0003\u0006QY\u0011\r!\u000b\u0002\u0002)F\u0011!&\u000c\t\u0003\u0011-J!\u0001\u000c\u0003\u0003\u000f9{G\u000f[5oOB\u0011\u0001BL\u0005\u0003_\u0011\u00111!\u00118z!\t\tD\'D\u00013\u0015\t\u0019\u0014%\u0001\u0003mC:<\u0017BA\u001b3\u0005!\u0011VO\u001c8bE2,W\u0001B\u001c\u0001\u0001a\u0012aAR;ukJ,WCA\u001d=!\ri\"hO\u0005\u0003oy\u0001\"A\n\u001f\u0005\u000b!2$\u0019A\u0015\u0007\ty\u0002Aa\u0010\u0002\u000c%Vt7)\u00197mC\ndW-\u0006\u0002A\rN!Q(\u0011\u0019E!\t\t$)\u0003\u0002De\t1qJ\u00196fGR\u00042!H\u0012F!\t1c\tB\u0003H{\t\u0007\u0011FA\u0001T\u0011!IUH!A!\u0002\u0013Q\u0015a\u00014v]B\u0019\u0001bS#\n\u00051#!!\u0003$v]\u000e$\u0018n\u001c81\u0011\u0015qU\u0008\"\u0001P\u0003\u0019a\u0014N\\5u}Q\u0011\u0001K\u0015\t\u0004#v*U\"\u0001\u0001\t\u000b%k\u0005\u0019\u0001&\t\u000bQkD\u0011\u0001\n\u0002\u0007I,h\u000eC\u0003W{\u0011\u0005q+\u0001\u0003dC2dG#A#\t\u000be\u0003A1\u0001.\u0002\u001d\u0019,hn\u0019;j_:\u000c5\u000fV1tWV\u00111L\u0018\u000b\u00039~\u00032!\u0015\u000c^!\t1c\u000cB\u0003H1\n\u0007\u0011\u0006C\u0003J1\u0002\u0007\u0001\rE\u0002\t\u0017vCQA\u0019\u0001\u0005\u0004\r\u000c\u0001CZ;ukJ,\u0017i\u001d$v]\u000e$\u0018n\u001c8\u0016\u0005\u0011<GCA3i!\rA1J\u001a\t\u0003M\u001d$QaR1C\u0002%BQ![1A\u0002)\u000c\u0011\u0001\u001f\t\u0004#Z2\u0007\"\u00027\u0001\r#i\u0017\u0001C3yK\u000e,Ho\u001c:\u0016\u00039\u0004\"!H8\n\u0005At\"aD#yK\u000e,Ho\u001c:TKJ4\u0018nY3\t\u000bI\u0004A\u0011A:\u0002\rM,(-\\5u+\t!x\u000f\u0006\u0002vqB\u0019\u0011K\u000e<\u0011\u0005\u0019:H!B$r\u0005\u0004I\u0003\"B=r\u0001\u0004Q\u0018\u0001\u0002;bg.\u00042!\u0015\u000cw\u0011\u0015a\u0008\u0001\"\u0001~\u0003\u001d)\u00070Z2vi\u0016,2A`A\u0003)\t\u0019r\u0010\u0003\u0004zw\u0002\u0007\u0011\u0011\u0001\t\u0005#Z\t\u0019\u0001E\u0002\'\u0003\u000b!QaR>C\u0002%Bq!!\u0003\u0001\t\u0003\tY!\u0001\u0007nC:\u000cw-\u001a3CY>\u001c7\u000eF\u0002\u0014\u0003\u001bA\u0001\"a\u0004\u0002\u0008\u0001\u0007\u0011\u0011C\u0001\u0008E2|7m[3s!\ra\u00111C\u0005\u0004\u0003+\u0011!AD\'b]\u0006<W\r\u001a\"m_\u000e\\WM\u001d\u0015\t\u0003\u000f\tI\"a\u0008\u0002$A\u0019\u0001\"a\u0007\n\u0007\u0005uAA\u0001\u0006eKB\u0014XmY1uK\u0012\u000c#!!\t\u0002/U\u001bX\r\t1cY>\u001c7.\u001b8hA\u0002Jgn\u001d;fC\u0012t\u0013EAA\u0013\u0003\u0019\u0011d&\r\u0019/a!:\u0001!!\u0007\u0002*\u0005\r\u0012EAA\u0016\u0003})6/\u001a\u0011a\u000bb,7-\u001e;j_:\u001cuN\u001c;fqR\u0004\u0007%\u001b8ti\u0016\u000cGM\u000c"
.end annotation


# virtual methods
.method public abstract execute(Ljava/util/concurrent/Callable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;)V"
        }
    .end annotation
.end method

.method public abstract executor()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract functionAsTask(Lscala/Function0;)Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TS;>;)",
            "Ljava/util/concurrent/Callable<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract futureAsFunction(Ljava/util/concurrent/Future;)Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TS;>;)",
            "Lscala/Function0<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract managedBlock(Lscala/concurrent/ManagedBlocker;)V
.end method

.method public abstract submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;)",
            "Ljava/util/concurrent/Future<",
            "TS;>;"
        }
    .end annotation
.end method
