.class public interface abstract Lscala/collection/mutable/MultiMap;
.super Ljava/lang/Object;
.source "MultiMap.scala"

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
        "TA;",
        "Lscala/collection/mutable/Set<",
        "TB;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00193q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0005Nk2$\u0018.T1q\u0015\t\u0019A!A\u0004nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007))\"eE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0011\u0001\u0012c\u0005\u0010\u000e\u0003\tI!A\u0005\u0002\u0003\u00075\u000b\u0007\u000f\u0005\u0002\u0015+1\u0001A!\u0002\u000c\u0001\u0005\u00049\"!A!\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0004!}\t\u0013B\u0001\u0011\u0003\u0005\r\u0019V\r\u001e\t\u0003)\t\"Qa\t\u0001C\u0002]\u0011\u0011A\u0011\u0005\u0006K\u0001!\tAJ\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u001d\u0002\"\u0001\u0004\u0015\n\u0005%2!\u0001B+oSRDQa\u000b\u0001\u0005\u00121\nq!\\1lKN+G/F\u0001\u001f\u0011\u0015q\u0003\u0001\"\u00010\u0003)\tG\r\u001a\"j]\u0012Lgn\u001a\u000b\u0004aE\u001aT\"\u0001\u0001\t\u000bIj\u0003\u0019A\n\u0002\u0007-,\u0017\u0010C\u00035[\u0001\u0007\u0011%A\u0003wC2,X\rC\u00037\u0001\u0011\u0005q\'A\u0007sK6|g/\u001a\"j]\u0012Lgn\u001a\u000b\u0004aaJ\u0004\"\u0002\u001a6\u0001\u0004\u0019\u0002\"\u0002\u001b6\u0001\u0004\t\u0003\"B\u001e\u0001\t\u0003a\u0014aC3oiJLX\t_5tiN$2!\u0010!B!\taa(\u0003\u0002@\r\t9!i\\8mK\u0006t\u0007\"\u0002\u001a;\u0001\u0004\u0019\u0002\"\u0002\";\u0001\u0004\u0019\u0015!\u00019\u0011\t1!\u0015%P\u0005\u0003\u000b\u001a\u0011\u0011BR;oGRLwN\\\u0019"
.end annotation


# virtual methods
.method public abstract addBinding(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/collection/mutable/MultiMap<",
            "TA;TB;>;"
        }
    .end annotation
.end method

.method public abstract entryExists(Ljava/lang/Object;Lscala/Function1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract makeSet()Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Set<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract removeBinding(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/collection/mutable/MultiMap<",
            "TA;TB;>;"
        }
    .end annotation
.end method
