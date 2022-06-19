.class public Lscala/util/control/Breaks;
.super Ljava/lang/Object;
.source "Breaks.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/util/control/Breaks$TryBlock;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001}3A!\u0001\u0002\u0001\u0013\t1!I]3bWNT!a\u0001\u0003\u0002\u000f\r|g\u000e\u001e:pY*\u0011QAB\u0001\u0005kRLGNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019\"\u0001\u0001\u0006\u0011\u0005-aQ\"\u0001\u0004\n\u000551!AB!osJ+g\rC\u0003\u0010\u0001\u0011\u0005\u0001#\u0001\u0004=S:LGO\u0010\u000b\u0002#A\u0011!\u0003A\u0007\u0002\u0005!9A\u0003\u0001b\u0001\n\u0013)\u0012A\u00042sK\u0006\\W\t_2faRLwN\\\u000b\u0002-A\u0011!cF\u0005\u00031\t\u0011AB\u0011:fC.\u001cuN\u001c;s_2DaA\u0007\u0001!\u0002\u00131\u0012a\u00042sK\u0006\\W\t_2faRLwN\u001c\u0011\t\u000bq\u0001A\u0011A\u000f\u0002\u0013\t\u0014X-Y6bE2,GC\u0001\u0010\"!\tYq$\u0003\u0002!\r\t!QK\\5u\u0011\u0019\u00113\u0004\"a\u0001G\u0005\u0011q\u000e\u001d\t\u0004\u0017\u0011r\u0012BA\u0013\u0007\u0005!a$-\u001f8b[\u0016tdaB\u0014\u0001!\u0003\r\n\u0003\u000b\u0002\t)JL(\t\\8dWV\u0011\u0011fL\n\u0003M)AQa\u000b\u0014\u0007\u00021\n!bY1uG\"\u0014%/Z1l)\ti\u0003\u0008\u0005\u0002/_1\u0001A!\u0002\u0019\'\u0005\u0004\t$!\u0001+\u0012\u0005I*\u0004CA\u00064\u0013\t!dAA\u0004O_RD\u0017N\\4\u0011\u0005-1\u0014BA\u001c\u0007\u0005\r\te.\u001f\u0005\u0007s)\"\t\u0019\u0001\u001e\u0002\u000f=t\'I]3bWB\u00191\u0002J\u0017*\u0005\u0019bd\u0001B\u001f\'\u0001y\u0012Q\u0002\u00107pG\u0006d\u0007e\u00195jY\u0012t4c\u0001\u001f@\u000fB\u0011\u0001)R\u0007\u0002\u0003*\u0011!iQ\u0001\u0005Y\u0006twMC\u0001E\u0003\u0011Q\u0017M^1\n\u0005\u0019\u000b%AB(cU\u0016\u001cG\u000fE\u0002IM5j\u0011\u0001\u0001\u0005\u0006\u0015\u0002!\taS\u0001\riJL(I]3bW\u0006\u0014G.Z\u000b\u0003\u0019J#\"!T*\u0013\u00079S\u0001K\u0002\u0003P\u0013\u0002i%\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004c\u0001%\'#B\u0011aF\u0015\u0003\u0006a%\u0013\r!\r\u0005\u0007E%#\t\u0019\u0001+\u0011\u0007-!\u0013\u000bC\u0003W\u0001\u0011\u0005q+A\u0003ce\u0016\u000c7\u000eF\u00013\u000f\u0015I&\u0001#\u0001[\u0003\u0019\u0011%/Z1lgB\u0011!c\u0017\u0004\u0006\u0003\tA\t\u0001X\n\u00037FAQaD.\u0005\u0002y#\u0012A\u0017"
.end annotation


# instance fields
.field private final scala$util$control$Breaks$$breakException:Lscala/util/control/BreakControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lscala/util/control/BreakControl;

    invoke-direct {v0}, Lscala/util/control/BreakControl;-><init>()V

    iput-object v0, p0, Lscala/util/control/Breaks;->scala$util$control$Breaks$$breakException:Lscala/util/control/BreakControl;

    return-void
.end method


# virtual methods
.method public break()Lscala/runtime/Nothing$;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lscala/util/control/Breaks;->scala$util$control$Breaks$$breakException()Lscala/util/control/BreakControl;

    move-result-object v0

    throw v0
.end method

.method public breakable(Lscala/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-interface {p1}, Lscala/Function0;->apply$mcV$sp()V
    :try_end_0
    .catch Lscala/util/control/BreakControl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p0}, Lscala/util/control/Breaks;->scala$util$control$Breaks$$breakException()Lscala/util/control/BreakControl;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    throw p1
.end method

.method public scala$util$control$Breaks$$breakException()Lscala/util/control/BreakControl;
    .locals 1

    .line 29
    iget-object v0, p0, Lscala/util/control/Breaks;->scala$util$control$Breaks$$breakException:Lscala/util/control/BreakControl;

    return-object v0
.end method

.method public tryBreakable(Lscala/Function0;)Lscala/util/control/Breaks$TryBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    new-instance v0, Lscala/util/control/Breaks$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/util/control/Breaks$$anon$1;-><init>(Lscala/util/control/Breaks;Lscala/Function0;)V

    return-object v0
.end method
