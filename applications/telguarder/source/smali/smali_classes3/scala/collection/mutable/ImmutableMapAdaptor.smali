.class public Lscala/collection/mutable/ImmutableMapAdaptor;
.super Lscala/collection/mutable/AbstractMap;
.source "ImmutableMapAdaptor.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractMap<",
        "TA;TB;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005Ee\u0001B\u0001\u0003\u0001%\u00111#S7nkR\u000c\'\r\\3NCB\u000cE-\u00199u_JT!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0019!\"\u0005\u000f\u0014\t\u0001Ya$\t\t\u0005\u00195y1$D\u0001\u0003\u0013\tq!AA\u0006BEN$(/Y2u\u001b\u0006\u0004\u0008C\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011\u0011!Q\t\u0003)a\u0001\"!\u0006\u000c\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\t\u0001B\u0004B\u0003\u001e\u0001\t\u00071CA\u0001C!\u0011aqdD\u000e\n\u0005\u0001\u0012!aA\'baB\u0011QCI\u0005\u0003G\u0019\u0011AbU3sS\u0006d\u0017N_1cY\u0016D\u0001\"\n\u0001\u0003\u0002\u0004%\tBJ\u0001\u0005S6\u000c\u0007/F\u0001(!\u0011A3fD\u000e\u000e\u0003%R!A\u000b\u0003\u0002\u0013%lW.\u001e;bE2,\u0017B\u0001\u0011*\u0011!i\u0003A!a\u0001\n#q\u0013\u0001C5nCB|F%Z9\u0015\u0005=\u0012\u0004CA\u000b1\u0013\t\tdA\u0001\u0003V]&$\u0008bB\u001a-\u0003\u0003\u0005\raJ\u0001\u0004q\u0012\n\u0004\u0002C\u001b\u0001\u0005\u0003\u0005\u000b\u0015B\u0014\u0002\u000b%l\u0017\r\u001d\u0011\t\u000b]\u0002A\u0011\u0001\u001d\u0002\rqJg.\u001b;?)\tI$\u0008\u0005\u0003\r\u0001=Y\u0002\"B\u00137\u0001\u00049\u0003\"\u0002\u001f\u0001\t\u0003j\u0014\u0001B:ju\u0016,\u0012A\u0010\t\u0003+}J!\u0001\u0011\u0004\u0003\u0007%sG\u000fC\u0003C\u0001\u0011\u00051)A\u0002hKR$\"\u0001R$\u0011\u0007U)5$\u0003\u0002G\r\t1q\n\u001d;j_:DQ\u0001S!A\u0002=\t1a[3z\u0011\u0015Q\u0005\u0001\"\u0011L\u0003\u001dI7/R7qif,\u0012\u0001\u0014\t\u0003+5K!A\u0014\u0004\u0003\u000f\t{w\u000e\\3b]\")\u0001\u000b\u0001C!#\u0006)\u0011\r\u001d9msR\u00111D\u0015\u0005\u0006\u0011>\u0003\ra\u0004\u0005\u0006)\u0002!\t%V\u0001\tG>tG/Y5ogR\u0011AJ\u0016\u0005\u0006\u0011N\u0003\ra\u0004\u0005\u00061\u0002!\t%W\u0001\u000cSN$UMZ5oK\u0012\u000cE\u000f\u0006\u0002M5\")\u0001j\u0016a\u0001\u001f!)A\u000c\u0001C!;\u000611.Z=TKR,\u0012A\u0018\t\u0004?\u0002|Q\"\u0001\u0003\n\u0005\u0005$!aA*fi\")1\r\u0001C!I\u0006a1.Z=t\u0013R,\'/\u0019;peV\tQ\rE\u0002`M>I!a\u001a\u0003\u0003\u0011%#XM]1u_JDQ!\u001b\u0001\u0005B)\u000cAa[3zgV\t1\u000eE\u0002`Y>I!!\u001c\u0003\u0003\u0011%#XM]1cY\u0016DC\u0001[8voB\u0011\u0001o]\u0007\u0002c*\u0011!OB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u0001;r\u0005%i\u0017n\u001a:bi&|g.I\u0001w\u0003M\u00027.Z=tA\u0002\u0012X\r^;s]N\u0004\u0013\n^3sC\ndWmW!^AI\u000cG\u000f[3sAQD\u0017M\u001c\u0011Ji\u0016\u0014\u0018\r^8s7\u0006kf&I\u0001y\u0003\u0015\u0011d\u0006\u000f\u00181\u0011\u0015Q\u0008\u0001\"\u0011|\u000391\u0018\r\\;fg&#XM]1u_J,\u0012\u0001 \t\u0004?\u001a\\\u0002\"\u0002@\u0001\t\u0003z\u0018A\u0002<bYV,7/\u0006\u0002\u0002\u0002A\u0019q\u000c\\\u000e)\u000bu|\u0017QA<\"\u0005\u0005\u001d\u0011!\u000e1wC2,Xm\u001d1!e\u0016$XO\u001d8tA%#XM]1cY\u0016\\&)\u0018\u0011sCRDWM\u001d\u0011uQ\u0006t\u0007%\u0013;fe\u0006$xN].C;:Bq!a\u0003\u0001\t\u0003\ti!\u0001\u0005ji\u0016\u0014\u0018\r^8s+\t\ty\u0001\u0005\u0003`M\u0006E\u0001#B\u000b\u0002\u0014=Y\u0012bAA\u000b\r\t1A+\u001e9mKJBq!!\u0007\u0001\t\u0003\nY\"\u0001\u0004u_2K7\u000f^\u000b\u0003\u0003;\u0001b!a\u0008\u0002&\u0005EabA\u000b\u0002\"%\u0019\u00111\u0005\u0004\u0002\u000fA\u000c7m[1hK&!\u0011qEA\u0015\u0005\u0011a\u0015n\u001d;\u000b\u0007\u0005\rb\u0001C\u0004\u0002.\u0001!\t%a\u000c\u0002\rU\u0004H-\u0019;f)\u0015y\u0013\u0011GA\u001a\u0011\u0019A\u00151\u0006a\u0001\u001f!9\u0011QGA\u0016\u0001\u0004Y\u0012!\u0002<bYV,\u0007bBA\u001d\u0001\u0011\u0005\u00111H\u0001\nI5Lg.^:%KF$B!!\u0010\u0002@5\t\u0001\u0001\u0003\u0004I\u0003o\u0001\ra\u0004\u0005\u0008\u0003\u0007\u0002A\u0011AA#\u0003!!\u0003\u000f\\;tI\u0015\u000cH\u0003BA\u001f\u0003\u000fB\u0001\"!\u0013\u0002B\u0001\u0007\u0011\u0011C\u0001\u0003WZDq!!\u0014\u0001\t\u0003\ny%A\u0003dY\u0016\u000c\'\u000fF\u00010\u0011\u001d\t\u0019\u0006\u0001C!\u0003+\n\u0011\u0002\u001e:b]N4wN]7\u0015\t\u0005u\u0012q\u000b\u0005\t\u00033\n\t\u00061\u0001\u0002\\\u0005\ta\r\u0005\u0004\u0016\u0003;z1dG\u0005\u0004\u0003?2!!\u0003$v]\u000e$\u0018n\u001c83\u0011\u001d\t\u0019\u0007\u0001C!\u0003K\naA]3uC&tG\u0003BA\u001f\u0003OB\u0001\"!\u001b\u0002b\u0001\u0007\u00111N\u0001\u0002aB1Q#!\u0018\u001071Cq!a\u001c\u0001\t\u0003\n\t(\u0001\u0005u_N#(/\u001b8h)\t\t\u0019\u0008\u0005\u0003\u0002v\u0005mdbA\u000b\u0002x%\u0019\u0011\u0011\u0010\u0004\u0002\rA\u0013X\rZ3g\u0013\u0011\ti(a \u0003\rM#(/\u001b8h\u0015\r\tIH\u0002\u0015\u0008\u0001\u0005\r\u0015\u0011RAG!\r)\u0012QQ\u0005\u0004\u0003\u000f3!A\u00033faJ,7-\u0019;fI\u0006\u0012\u00111R\u0001F\u0003\u0012\u000c\u0007\u000f^8sg\u0002\n\'/\u001a\u0011j]\",\'/\u001a8uYf\u0004SO\u001c:fY&\u000c\'\r\\3!C:$\u0007\u0005\u001d:p]\u0016\u0004Co\u001c\u0011qKJ4wN]7b]\u000e,\u0007\u0005\u001d:pE2,Wn\u001d\u0018\"\u0005\u0005=\u0015A\u0002\u001a/cEr\u0003\u0007"
.end annotation


# instance fields
.field private imap:Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Map<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Map<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lscala/collection/mutable/ImmutableMapAdaptor;->imap:Lscala/collection/immutable/Map;

    .line 30
    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ImmutableMapAdaptor;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ImmutableMapAdaptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ImmutableMapAdaptor<",
            "TA;TB;>;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/immutable/Map;->$minus(Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Map;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap_$eq(Lscala/collection/immutable/Map;)V

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ImmutableMapAdaptor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 29
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/ImmutableMapAdaptor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 29
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/ImmutableMapAdaptor;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/ImmutableMapAdaptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/mutable/ImmutableMapAdaptor<",
            "TA;TB;>;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/immutable/Map;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap_$eq(Lscala/collection/immutable/Map;)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/ImmutableMapAdaptor;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/immutable/Map;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->empty()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap_$eq(Lscala/collection/immutable/Map;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/immutable/Map;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/immutable/Map;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public imap()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lscala/collection/mutable/ImmutableMapAdaptor;->imap:Lscala/collection/immutable/Map;

    return-object v0
.end method

.method public imap_$eq(Lscala/collection/immutable/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Map<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lscala/collection/mutable/ImmutableMapAdaptor;->imap:Lscala/collection/immutable/Map;

    return-void
.end method

.method public isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/immutable/Map;->isDefinedAt(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keysIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->keysIterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public retain(Lscala/Function2;)Lscala/collection/mutable/ImmutableMapAdaptor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TA;TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/ImmutableMapAdaptor<",
            "TA;TB;>;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/ImmutableMapAdaptor$$anonfun$retain$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor$$anonfun$retain$1;-><init>(Lscala/collection/mutable/ImmutableMapAdaptor;Lscala/Function2;)V

    invoke-interface {v0, v1}, Lscala/collection/immutable/Map;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Map;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap_$eq(Lscala/collection/immutable/Map;)V

    return-object p0
.end method

.method public bridge synthetic retain(Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->retain(Lscala/Function2;)Lscala/collection/mutable/ImmutableMapAdaptor;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->size()I

    move-result v0

    return v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lscala/Function2;)Lscala/collection/mutable/ImmutableMapAdaptor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TA;TB;TB;>;)",
            "Lscala/collection/mutable/ImmutableMapAdaptor<",
            "TA;TB;>;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    invoke-virtual {v1}, Lscala/collection/immutable/Map$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/collection/immutable/Map;->transform(Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Map;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap_$eq(Lscala/collection/immutable/Map;)V

    return-object p0
.end method

.method public bridge synthetic transform(Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->transform(Lscala/Function2;)Lscala/collection/mutable/ImmutableMapAdaptor;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/immutable/Map;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap_$eq(Lscala/collection/immutable/Map;)V

    return-void
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public values()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TB;>;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public valuesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lscala/collection/mutable/ImmutableMapAdaptor;->imap()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/immutable/Map;->valuesIterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
