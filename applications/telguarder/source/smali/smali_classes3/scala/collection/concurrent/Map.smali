.class public interface abstract Lscala/collection/concurrent/Map;
.super Ljava/lang/Object;
.source "Map.scala"

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
    bytes = "\u0006\u0001\u00013q!\u0001\u0002\u0011\u0002G\u0005\u0011BA\u0002NCBT!a\u0001\u0003\u0002\u0015\r|gnY;se\u0016tGO\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0002\u000b-\u0001\u001a2\u0001A\u0006\u0010!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0005!M!r$D\u0001\u0012\u0015\t\u0011B!A\u0004nkR\u000c\'\r\\3\n\u0005\u0005\t\u0002CA\u000b\u0017\u0019\u0001!Qa\u0006\u0001C\u0002a\u0011\u0011!Q\t\u00033q\u0001\"\u0001\u0004\u000e\n\u0005m1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019uI!A\u0008\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0016A\u0011)\u0011\u0005\u0001b\u00011\t\t!\tC\u0003$\u0001\u0019\u0005A%A\u0006qkRLe-\u00112tK:$HcA\u0013)UA\u0019ABJ\u0010\n\u0005\u001d2!AB(qi&|g\u000eC\u0003*E\u0001\u0007A#A\u0001l\u0011\u0015Y#\u00051\u0001 \u0003\u00051\u0008\"B\u0017\u0001\r\u0003q\u0013A\u0002:f[>4X\rF\u00020eM\u0002\"\u0001\u0004\u0019\n\u0005E2!a\u0002\"p_2,\u0017M\u001c\u0005\u0006S1\u0002\r\u0001\u0006\u0005\u0006W1\u0002\ra\u0008\u0005\u0006k\u00011\tAN\u0001\u0008e\u0016\u0004H.Y2f)\u0011ys\u0007\u000f\u001e\t\u000b%\"\u0004\u0019\u0001\u000b\t\u000be\"\u0004\u0019A\u0010\u0002\u0011=dGM^1mk\u0016DQa\u000f\u001bA\u0002}\t\u0001B\\3xm\u0006dW/\u001a\u0005\u0006k\u00011\t!\u0010\u000b\u0004Kyz\u0004\"B\u0015=\u0001\u0004!\u0002\"B\u0016=\u0001\u0004y\u0002"
.end annotation


# virtual methods
.method public abstract putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)Z"
        }
    .end annotation
.end method

.method public abstract replace(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TB;)Z"
        }
    .end annotation
.end method
