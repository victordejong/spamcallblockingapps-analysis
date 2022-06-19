.class public abstract Lscala/collection/generic/SortedMapFactory;
.super Ljava/lang/Object;
.source "SortedMapFactory.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/SortedMap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\rb!B\u0001\u0003\u0003\u0003I!\u0001E*peR,G-T1q\r\u0006\u001cGo\u001c:z\u0015\t\u0019A!A\u0004hK:,\'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)12C\u0001\u0001\u000c!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006!\u0001!\t!E\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003I\u00012a\u0005\u0001\u0015\u001b\u0005\u0011\u0001CA\u000b\u0017\u0019\u0001!Qa\u0006\u0001C\u0002a\u0011!aQ\"\u0016\u0007e)C&\u0005\u0002\u001b;A\u0011AbG\u0005\u00039\u0019\u0011qAT8uQ&twME\u0002\u001fA92Aa\u0008\u0001\u0001;\taAH]3gS:,W.\u001a8u}A!\u0011E\t\u0013,\u001b\u0005!\u0011BA\u0012\u0005\u0005%\u0019vN\u001d;fI6\u000b\u0007\u000f\u0005\u0002\u0016K\u0011)aE\u0006b\u0001O\t\t\u0011)\u0005\u0002\u001bQA\u0011A\"K\u0005\u0003U\u0019\u00111!\u00118z!\t)B\u0006B\u0003.-\t\u0007qEA\u0001C!\u0015\ts\u0006J\u00162\u0013\t\u0001DAA\u0007T_J$X\rZ\'ba2K7.\u001a\t\u0005+Y!3&\u0002\u00034\u0001\u0001!$\u0001B\"pY2\u00044!N\u001c;!\u0011)bCN\u001d\u0011\u0005U9D!\u0003\u001d3\u0003\u0003\u0005\tQ!\u0001(\u0005\ryF%\r\t\u0003+i\"\u0011b\u000f\u001a\u0002\u0002\u0003\u0005)\u0011A\u0014\u0003\u0007}##\u0007C\u0003>\u0001\u0019\u0005a(A\u0003f[B$\u00180F\u0002@\u0005\u0012#\"\u0001Q#\u0011\tU1\u0012i\u0011\t\u0003+\t#QA\n\u001fC\u0002\u001d\u0002\"!\u0006#\u0005\u000b5b$\u0019A\u0014\t\u000b\u0019c\u00049A$\u0002\u0007=\u0014H\rE\u0002I\u0017\u0006s!\u0001D%\n\u0005)3\u0011a\u00029bG.\u000cw-Z\u0005\u0003\u00196\u0013\u0001b\u0014:eKJLgn\u001a\u0006\u0003\u0015\u001aAQa\u0014\u0001\u0005\u0002A\u000bQ!\u00199qYf,2!U+X)\t\u0011&\u000c\u0006\u0002T1B!QC\u0006+W!\t)R\u000bB\u0003\'\u001d\n\u0007q\u0005\u0005\u0002\u0016/\u0012)QF\u0014b\u0001O!)aI\u0014a\u00023B\u0019\u0001j\u0013+\t\u000bms\u0005\u0019\u0001/\u0002\u000b\u0015dW-\\:\u0011\u00071iv,\u0003\u0002_\r\tQAH]3qK\u0006$X\r\u001a \u0011\t1\u0001GKV\u0005\u0003C\u001a\u0011a\u0001V;qY\u0016\u0014\u0004\"B2\u0001\t\u0003!\u0017A\u00038fo\n+\u0018\u000e\u001c3feV\u0019QM\u001c9\u0015\u0005\u0019\u0014\u0008\u0003B4kYFl\u0011\u0001\u001b\u0006\u0003S\u0012\tq!\\;uC\ndW-\u0003\u0002lQ\n9!)^5mI\u0016\u0014\u0008\u0003\u0002\u0007a[>\u0004\"!\u00068\u0005\u000b\u0019\u0012\'\u0019A\u0014\u0011\u0005U\u0001H!B\u0017c\u0005\u00049\u0003\u0003B\u000b\u0017[>DQA\u00122A\u0004M\u00042\u0001S&n\r\u0011)\u0008\u0001\u0001<\u0003+M{\'\u000f^3e\u001b\u0006\u00048)\u00198Ck&dGM\u0012:p[V!qo`A\u0002\'\r!8\u0002\u001f\t\u0007\'e\\X0!\u0002\n\u0005i\u0014!\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007C\u0001?3\u001b\u0005\u0001\u0001#\u0002\u0007a}\u0006\u0005\u0001CA\u000b\u0000\t\u00151CO1\u0001(!\r)\u00121\u0001\u0003\u0006[Q\u0014\ra\n\t\u0006+Yq\u0018\u0011\u0001\u0005\n\rR\u0014\t\u0011)A\u0006\u0003\u0013\u00012\u0001S&\u007f\u0011\u0019\u0001B\u000f\"\u0001\u0002\u000eQ\u0011\u0011q\u0002\u000b\u0005\u0003#\t\u0019\u0002E\u0003}iz\u000c\t\u0001C\u0004G\u0003\u0017\u0001\u001d!!\u0003\t\r=#H\u0011AA\u000c)\u0011\tI\"a\u0007\u0011\u000b\u001dTW0!\u0002\t\u000f\u0005u\u0011Q\u0003a\u0001w\u0006!aM]8n\u0011\u0019yE\u000f\"\u0001\u0002\"Q\u0011\u0011\u0011\u0004"
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
.method public apply(Lscala/collection/Seq;Lscala/math/Ordering;)Lscala/collection/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;",
            "Lscala/math/Ordering<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p2}, Lscala/collection/generic/SortedMapFactory;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p2

    invoke-interface {p2, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/Builder;

    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/SortedMap;

    return-object p1
.end method

.method public abstract empty(Lscala/math/Ordering;)Lscala/collection/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
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
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TB;>;TCC;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lscala/collection/mutable/MapBuilder;

    invoke-virtual {p0, p1}, Lscala/collection/generic/SortedMapFactory;->empty(Lscala/math/Ordering;)Lscala/collection/SortedMap;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/mutable/MapBuilder;-><init>(Lscala/collection/GenMap;)V

    return-object v0
.end method
