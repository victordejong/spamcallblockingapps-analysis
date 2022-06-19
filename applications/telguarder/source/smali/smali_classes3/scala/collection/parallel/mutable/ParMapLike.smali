.class public interface abstract Lscala/collection/parallel/mutable/ParMapLike;
.super Ljava/lang/Object;
.source "ParMapLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParMapLike;
.implements Lscala/collection/generic/Growable;
.implements Lscala/collection/generic/Shrinkable;
.implements Lscala/collection/mutable/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "Repr::",
        "Lscala/collection/parallel/mutable/ParMapLike<",
        "TK;TV;TRepr;TSequential;>;:",
        "Lscala/collection/parallel/mutable/ParMap<",
        "TK;TV;>;Sequential::",
        "Lscala/collection/mutable/Map<",
        "TK;TV;>;:",
        "Lscala/collection/mutable/MapLike<",
        "TK;TV;TSequential;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParMapLike<",
        "TK;TV;TRepr;TSequential;>;",
        "Lscala/collection/generic/Growable<",
        "Lscala/Tuple2<",
        "TK;TV;>;>;",
        "Lscala/collection/generic/Shrinkable<",
        "TK;>;",
        "Lscala/collection/mutable/Cloneable<",
        "TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001i4q!\u0001\u0002\u0011\u0002\u0007\u00051B\u0001\u0006QCJl\u0015\r\u001d\'jW\u0016T!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011q\u0001C\u0001\u000bG>dG.Z2uS>t\'\"A\u0005\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U)AbF\u0011%[M9\u0001!D\t>\u0001&c\u0005C\u0001\u0008\u0010\u001b\u0005A\u0011B\u0001\t\t\u0005\u0019\te.\u001f*fMB)!cE\u000b!G5\ta!\u0003\u0002\u0015\r\tQq)\u001a8NCBd\u0015n[3\u0011\u0005Y9B\u0002\u0001\u0003\u00061\u0001\u0011\r!\u0007\u0002\u0002\u0017F\u0011!$\u0008\t\u0003\u001dmI!\u0001\u0008\u0005\u0003\u000f9{G\u000f[5oOB\u0011aBH\u0005\u0003?!\u00111!\u00118z!\t1\u0012\u0005B\u0003#\u0001\t\u0007\u0011DA\u0001W!\t1B\u0005\u0002\u0004&\u0001\u0011\u0015\rA\n\u0002\u0005%\u0016\u0004(/\u0005\u0002\u001bOI\u0019\u0001F\u000b\u001e\u0007\t%\u0002\u0001a\n\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0007W\u0001)\u0002e\t\u0017\u000e\u0003\t\u0001\"AF\u0017\u0005\r9\u0002AQ1\u00010\u0005)\u0019V-];f]RL\u0017\r\\\t\u00035A\u00122!\r\u001a8\r\u0011I\u0003\u0001\u0001\u0019\u0011\tM*T\u0003I\u0007\u0002i)\u00111AB\u0005\u0003mQ\u00121!T1q!\u0015\u0019\u0004(\u0006\u0011-\u0013\tIDGA\u0004NCBd\u0015n[3\u0011\t-ZT\u0003I\u0005\u0003y\t\u0011a\u0001U1s\u001b\u0006\u0004\u0008C\u0002 @+\u0001\u001aC&D\u0001\u0005\u0013\t\tA\u0001E\u0002B\t\u001ak\u0011A\u0011\u0006\u0003\u0007\u001a\tqaZ3oKJL7-\u0003\u0002F\u0005\nAqI]8xC\ndW\r\u0005\u0003\u000f\u000fV\u0001\u0013B\u0001%\t\u0005\u0019!V\u000f\u001d7feA\u0019\u0011IS\u000b\n\u0005-\u0013%AC*ie&t7.\u00192mKB\u00191\'T\u0012\n\u00059#$!C\"m_:,\u0017M\u00197f\u0011\u0015\u0001\u0006\u0001\"\u0001R\u0003\u0019!\u0013N\\5uIQ\t!\u000b\u0005\u0002\u000f\'&\u0011A\u000b\u0003\u0002\u0005+:LG\u000fC\u0003W\u0001\u0019\u0005q+A\u0002qkR$2\u0001W.^!\rq\u0011\u000cI\u0005\u00035\"\u0011aa\u00149uS>t\u0007\"\u0002/V\u0001\u0004)\u0012aA6fs\")a,\u0016a\u0001A\u0005)a/\u00197vK\")\u0001\r\u0001D\u0001C\u0006AA\u0005\u001d7vg\u0012*\u0017\u000f\u0006\u0002cG6\t\u0001\u0001C\u0003e?\u0002\u0007a)\u0001\u0002lm\")a\r\u0001D\u0001O\u0006IA%\\5okN$S-\u001d\u000b\u0003E\"DQ\u0001X3A\u0002UAQA\u001b\u0001\u0005\u0002-\u000cQ\u0001\n9mkN,\"\u0001\\8\u0015\u00055\u0014\u0008\u0003B\u0016<+9\u0004\"AF8\u0005\u000bAL\'\u0019A9\u0003\u0003U\u000b\"\u0001I\u000f\t\u000b\u0011L\u0007\u0019A:\u0011\t99UC\u001c\u0005\u0006k\u0002!\tA^\u0001\u0007I5Lg.^:\u0015\u0005\r:\u0008\"\u0002/u\u0001\u0004)\u0002\"B=\u0001\r\u0003\t\u0016!B2mK\u0006\u0014\u0008"
.end annotation


# virtual methods
.method public abstract $minus(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TRepr;"
        }
    .end annotation
.end method

.method public abstract $minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMapLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/collection/parallel/mutable/ParMapLike<",
            "TK;TV;TRepr;TSequential;>;"
        }
    .end annotation
.end method

.method public abstract $plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TK;TU;>;)",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TU;>;"
        }
    .end annotation
.end method

.method public abstract $plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMapLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/mutable/ParMapLike<",
            "TK;TV;TRepr;TSequential;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation
.end method
