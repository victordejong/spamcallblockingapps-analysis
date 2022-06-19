.class public interface abstract Lscala/collection/mutable/DefaultMapModel;
.super Ljava/lang/Object;
.source "DefaultMapModel.scala"

# interfaces
.implements Lscala/collection/mutable/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Map<",
        "TA;TB;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00014q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0008EK\u001a\u000cW\u000f\u001c;NCBlu\u000eZ3m\u0015\t\u0019A!A\u0004nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007))rdE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0011\u0001\u0012c\u0005\u0010\u000e\u0003\tI!A\u0005\u0002\u0003\u00075\u000b\u0007\u000f\u0005\u0002\u0015+1\u0001A!\u0002\u000c\u0001\u0005\u00049\"!A!\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0003)}!Q\u0001\t\u0001C\u0002]\u0011\u0011A\u0011\u0005\u0006E\u0001!\taI\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u0011\u0002\"\u0001D\u0013\n\u0005\u00192!\u0001B+oSR,A\u0001\u000b\u0001\u0001S\t)QI\u001c;ssB!\u0001CK\n\u001f\u0013\tY#A\u0001\u0007EK\u001a\u000cW\u000f\u001c;F]R\u0014\u0018\u0010C\u0003.\u0001\u0019Ea&A\u0005gS:$WI\u001c;ssR\u0011q&\r\t\u0003a\u001dj\u0011\u0001\u0001\u0005\u0006e1\u0002\raE\u0001\u0004W\u0016L\u0008\"\u0002\u001b\u0001\r#)\u0014\u0001C1eI\u0016sGO]=\u0015\u0005\u00112\u0004\"B\u001c4\u0001\u0004y\u0013!A3\t\u000be\u0002a\u0011\u0003\u001e\u0002\u000f\u0015tGO]5fgV\t1\u0008E\u0002={=j\u0011\u0001B\u0005\u0003}\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0006\u0001\u0002!\t!Q\u0001\u0004O\u0016$HC\u0001\"F!\ra1IH\u0005\u0003\t\u001a\u0011aa\u00149uS>t\u0007\"\u0002\u001a@\u0001\u0004\u0019\u0002\"B$\u0001\t\u0003B\u0015a\u00019viR\u0019!)\u0013&\t\u000bI2\u0005\u0019A\n\t\u000b-3\u0005\u0019\u0001\u0010\u0002\u000bY\u000cG.^3\t\u000b5\u0003A\u0011\u0001(\u0002\u0011\u0011\u0002H.^:%KF$\"\u0001M(\t\u000bAc\u0005\u0019A)\u0002\u0005-4\u0008\u0003\u0002\u0007S\'yI!a\u0015\u0004\u0003\rQ+\u0008\u000f\\33\u0011\u0015)\u0006\u0001\"\u0001W\u0003!IG/\u001a:bi>\u0014X#A,\u0011\u0007qj\u0014\u000b\u000b\u0003\u00013rs\u0006C\u0001\u0007[\u0013\tYfA\u0001\u0006eKB\u0014XmY1uK\u0012\u000c\u0013!X\u0001\u001c)\"L7\u000f\t;sC&$\u0008e^5mY\u0002\u0012W\r\t:f[>4X\r\u001a\u0018\"\u0003}\u000baA\r\u00182c9\u0002\u0004"
.end annotation


# virtual methods
.method public abstract $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/DefaultMapModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/mutable/DefaultMapModel<",
            "TA;TB;>;"
        }
    .end annotation
.end method

.method public abstract addEntry(Lscala/collection/mutable/DefaultEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;)V"
        }
    .end annotation
.end method

.method public abstract entries()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;>;"
        }
    .end annotation
.end method

.method public abstract findEntry(Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method
