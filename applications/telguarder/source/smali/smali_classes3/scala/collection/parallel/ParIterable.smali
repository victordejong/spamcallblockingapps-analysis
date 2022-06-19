.class public interface abstract Lscala/collection/parallel/ParIterable;
.super Ljava/lang/Object;
.source "ParIterable.scala"

# interfaces
.implements Lscala/collection/GenIterable;
.implements Lscala/collection/generic/GenericParTemplate;
.implements Lscala/collection/parallel/ParIterableLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/GenIterable<",
        "TT;>;",
        "Lscala/collection/generic/GenericParTemplate<",
        "TT;",
        "Lscala/collection/parallel/ParIterable;",
        ">;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;",
        "Lscala/collection/parallel/ParIterable<",
        "TT;>;",
        "Lscala/collection/Iterable<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001e4q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0006QCJLE/\u001a:bE2,\'BA\u0002\u0005\u0003!\u0001\u0018M]1mY\u0016d\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0016\'\u0015\u00011b\u0004\u0010\'!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0004!E\u0019R\"\u0001\u0003\n\u0005I!!aC$f]&#XM]1cY\u0016\u0004\"\u0001F\u000b\r\u0001\u00111a\u0003\u0001CC\u0002]\u0011\u0011\u0001V\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\u0008\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0003 EM!S\"\u0001\u0011\u000b\u0005\u0005\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003G\u0001\u0012!cR3oKJL7\rU1s)\u0016l\u0007\u000f\\1uKB\u0011Q\u0005A\u0007\u0002\u0005A)QeJ\n*U%\u0011\u0001F\u0001\u0002\u0010!\u0006\u0014\u0018\n^3sC\ndW\rT5lKB\u0019Q\u0005A\n\u0011\u0007-r3C\u0004\u0002\rY%\u0011QFB\u0001\u0008a\u0006\u001c7.Y4f\u0013\ty\u0003G\u0001\u0005Ji\u0016\u0014\u0018M\u00197f\u0015\tic\u0001C\u00033\u0001\u0011\u00051\'\u0001\u0004%S:LG\u000f\n\u000b\u0002iA\u0011A\"N\u0005\u0003m\u0019\u0011A!\u00168ji\")\u0001\u0008\u0001C!s\u0005I1m\\7qC:LwN\\\u000b\u0002uI\u00191(\u0010!\u0007\tq\u0002\u0001A\u000f\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004?y\"\u0013BA !\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000eE\u0002 \u0003\u0012J!A\u0011\u0011\u0003\'\u001d+g.\u001a:jGB\u000b\'oQ8na\u0006t\u0017n\u001c8\t\u000b\u0011\u0003A\u0011A#\u0002\u0019M$(/\u001b8h!J,g-\u001b=\u0016\u0003\u0019\u0003\"a\u0012\'\u000e\u0003!S!!\u0013&\u0002\t1\u000cgn\u001a\u0006\u0002\u0017\u0006!!.\u0019<b\u0013\ti\u0005J\u0001\u0004TiJLgnZ\u0004\u0006\u001f\nA\t\u0001U\u0001\u000c!\u0006\u0014\u0018\n^3sC\ndW\r\u0005\u0002&#\u001a)\u0011A\u0001E\u0001%N\u0011\u0011k\u0015\t\u0004?Q#\u0013BA+!\u0005)\u0001\u0016M\u001d$bGR|\'/\u001f\u0005\u0006/F#\t\u0001W\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003ACQAW)\u0005\u0004m\u000bAbY1o\u0005VLG\u000e\u001a$s_6,\"\u0001X3\u0016\u0003u\u0003Ra\u00080aI\u001aL!a\u0018\u0011\u0003\u001d\r\u000bgnQ8nE&tWM\u0012:p[B\u0011\u0011MY\u0007\u0002#&\u00111M\u0010\u0002\u0005\u0007>dG\u000e\u0005\u0002\u0015K\u0012)a#\u0017b\u0001/A\u0019Q\u0005\u00013\t\u000b!\u000cF\u0011A5\u0002\u00159,wOQ;jY\u0012,\'/\u0006\u0002k_V\t1\u000e\u0005\u0003&Y:\u0004\u0018BA7\u0003\u0005!\u0019u.\u001c2j]\u0016\u0014\u0008C\u0001\u000bp\t\u00151rM1\u0001\u0018!\r)\u0003A\u001c\u0005\u0006eF#\ta]\u0001\u000c]\u0016<8i\\7cS:,\'/\u0006\u0002uoV\tQ\u000f\u0005\u0003&YZD\u0008C\u0001\u000bx\t\u00151\u0012O1\u0001\u0018!\r)\u0003A\u001e"
.end annotation


# virtual methods
.method public abstract companion()Lscala/collection/generic/GenericCompanion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/parallel/ParIterable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stringPrefix()Ljava/lang/String;
.end method
