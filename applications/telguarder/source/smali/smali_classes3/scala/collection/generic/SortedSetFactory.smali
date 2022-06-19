.class public abstract Lscala/collection/generic/SortedSetFactory;
.super Ljava/lang/Object;
.source "SortedSetFactory.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/SortedSet<",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005Ea!B\u0001\u0003\u0003\u0003I!\u0001E*peR,GmU3u\r\u0006\u001cGo\u001c:z\u0015\t\u0019A!A\u0004hK:,\'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)12C\u0001\u0001\u000c!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006!\u0001!\t!E\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003I\u00012a\u0005\u0001\u0015\u001b\u0005\u0011\u0001CA\u000b\u0017\u0019\u0001!Qa\u0006\u0001C\u0002a\u0011!aQ\"\u0016\u0005e)\u0013C\u0001\u000e\u001e!\ta1$\u0003\u0002\u001d\r\t9aj\u001c;iS:<\'c\u0001\u0010!W\u0019!q\u0004\u0001\u0001\u001e\u00051a$/\u001a4j]\u0016lWM\u001c;?!\r\t#\u0005J\u0007\u0002\t%\u00111\u0005\u0002\u0002\n\'>\u0014H/\u001a3TKR\u0004\"!F\u0013\u0005\u000b\u00192\"\u0019A\u0014\u0003\u0003\u0005\u000b\"A\u0007\u0015\u0011\u00051I\u0013B\u0001\u0016\u0007\u0005\r\te.\u001f\t\u0005C1\"c&\u0003\u0002.\t\ti1k\u001c:uK\u0012\u001cV\r\u001e\'jW\u0016\u00042!\u0006\u000c%\u000b\u0011\u0001\u0004\u0001A\u0019\u0003\t\r{G\u000e\u001c\u0019\u0003eQ\u00022!\u0006\u000c4!\t)B\u0007B\u00056_\u0005\u0005\t\u0011!B\u0001O\t\u0019q\u000cJ\u0019\t\u000b]\u0002a\u0011\u0001\u001d\u0002\u000b\u0015l\u0007\u000f^=\u0016\u0005ebDC\u0001\u001e>!\r)bc\u000f\t\u0003+q\"QA\n\u001cC\u0002\u001dBQA\u0010\u001cA\u0004}\n1a\u001c:e!\r\u00015i\u000f\u0008\u0003\u0019\u0005K!A\u0011\u0004\u0002\u000fA\u000c7m[1hK&\u0011A)\u0012\u0002\t\u001fJ$WM]5oO*\u0011!I\u0002\u0005\u0006\u000f\u0002!\t\u0001S\u0001\u0006CB\u0004H._\u000b\u0003\u00136#\"A\u0013)\u0015\u0005-s\u0005cA\u000b\u0017\u0019B\u0011Q#\u0014\u0003\u0006M\u0019\u0013\ra\n\u0005\u0006}\u0019\u0003\u001da\u0014\t\u0004\u0001\u000ec\u0005\"B)G\u0001\u0004\u0011\u0016!B3mK6\u001c\u0008c\u0001\u0007T\u0019&\u0011AK\u0002\u0002\u000byI,\u0007/Z1uK\u0012t\u0004\"\u0002,\u0001\t\u00039\u0016A\u00038fo\n+\u0018\u000e\u001c3feV\u0011\u0001\u000c\u0019\u000b\u00033\n\u0004BAW/`C6\t1L\u0003\u0002]\t\u00059Q.\u001e;bE2,\u0017B\u00010\\\u0005\u001d\u0011U/\u001b7eKJ\u0004\"!\u00061\u0005\u000b\u0019*&\u0019A\u0014\u0011\u0007U1r\u000cC\u0003?+\u0002\u000f1\rE\u0002A\u0007~CQ!\u001a\u0001\u0005\u0004\u0019\u000cqB\\3x\u0007\u0006t\')^5mI\u001a\u0013x.\\\u000b\u0003O:$\"\u0001\u001b9\u0011\u000bMI7.\\8\n\u0005)\u0014!\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007C\u000170\u001b\u0005\u0001\u0001CA\u000bo\t\u00151CM1\u0001(!\r)b#\u001c\u0005\u0006}\u0011\u0004\u001d!\u001d\t\u0004\u0001\u000ekg\u0001B:\u0001\u0001Q\u0014QcU8si\u0016$7+\u001a;DC:\u0014U/\u001b7e\rJ|W.\u0006\u0002vqN\u0019!o\u0003<\u0011\u000bMI7n^=\u0011\u0005UAH!\u0002\u0014s\u0005\u00049\u0003cA\u000b\u0017o\"AaH\u001dB\u0001B\u0003-1\u0010E\u0002A\u0007^DQ\u0001\u0005:\u0005\u0002u$\u0012A \u000b\u0004\u007f\u0006\u0005\u0001c\u00017so\")a\u0008 a\u0002w\"1qI\u001dC\u0001\u0003\u000b!B!a\u0002\u0002\nA!!,X<z\u0011\u001d\tY!a\u0001A\u0002-\u000cAA\u001a:p[\"1qI\u001dC\u0001\u0003\u001f!\"!a\u0002"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;Lscala/math/Ordering;)Lscala/collection/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TA;>;",
            "Lscala/math/Ordering<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p2}, Lscala/collection/generic/SortedSetFactory;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p2

    invoke-interface {p2, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/Builder;

    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/SortedSet;

    return-object p1
.end method

.method public abstract empty(Lscala/math/Ordering;)Lscala/collection/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)TCC;"
        }
    .end annotation
.end method

.method public newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lscala/collection/mutable/SetBuilder;

    invoke-virtual {p0, p1}, Lscala/collection/generic/SortedSetFactory;->empty(Lscala/math/Ordering;)Lscala/collection/SortedSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/mutable/SetBuilder;-><init>(Lscala/collection/Set;)V

    return-object v0
.end method

.method public newCanBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "TCC;TA;TCC;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;

    invoke-direct {v0, p0, p1}, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;-><init>(Lscala/collection/generic/SortedSetFactory;Lscala/math/Ordering;)V

    return-object v0
.end method
