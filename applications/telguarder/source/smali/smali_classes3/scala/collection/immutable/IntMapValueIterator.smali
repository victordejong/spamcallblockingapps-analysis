.class public Lscala/collection/immutable/IntMapValueIterator;
.super Lscala/collection/immutable/IntMapIterator;
.source "IntMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/IntMapIterator<",
        "TV;TV;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001E2Q!\u0001\u0002\u0001\u0005!\u00111#\u00138u\u001b\u0006\u0004h+\u00197vK&#XM]1u_JT!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mCV\u0011\u0011\u0002E\n\u0003\u0001)\u0001Ba\u0003\u0007\u000f\u001d5\t!!\u0003\u0002\u000e\u0005\tq\u0011J\u001c;NCBLE/\u001a:bi>\u0014\u0008CA\u0008\u0011\u0019\u0001!Q!\u0005\u0001C\u0002M\u0011\u0011AV\u0002\u0001#\t!\u0002\u0004\u0005\u0002\u0016-5\ta!\u0003\u0002\u0018\r\t9aj\u001c;iS:<\u0007CA\u000b\u001a\u0013\tQbAA\u0002B]fD\u0001\u0002\u0008\u0001\u0003\u0002\u0003\u0006I!H\u0001\u0003SR\u00042a\u0003\u0010\u000f\u0013\ty\"A\u0001\u0004J]Rl\u0015\r\u001d\u0005\u0006C\u0001!\tAI\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0005\r\"\u0003cA\u0006\u0001\u001d!)A\u0004\ta\u0001;!)a\u0005\u0001C\u0001O\u00059a/\u00197vK>3GC\u0001\u0008)\u0011\u0015IS\u00051\u0001+\u0003\r!\u0018\u000e\u001d\t\u0004W9raBA\u0006-\u0013\ti#!\u0001\u0004J]Rl\u0015\r]\u0005\u0003_A\u00121\u0001V5q\u0015\ti#\u0001"
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/IntMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Lscala/collection/immutable/IntMapIterator;-><init>(Lscala/collection/immutable/IntMap;)V

    return-void
.end method


# virtual methods
.method public valueOf(Lscala/collection/immutable/IntMap$Tip;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/IntMap$Tip<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
