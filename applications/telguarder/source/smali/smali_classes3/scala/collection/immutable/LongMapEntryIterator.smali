.class public Lscala/collection/immutable/LongMapEntryIterator;
.super Lscala/collection/immutable/LongMapIterator;
.source "LongMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/LongMapIterator<",
        "TV;",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "TV;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001}2Q!\u0001\u0002\u0001\u0005!\u0011A\u0003T8oO6\u000b\u0007/\u00128uefLE/\u001a:bi>\u0014(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006,\"!\u0003\t\u0014\u0005\u0001Q\u0001\u0003B\u0006\r\u001dmi\u0011AA\u0005\u0003\u001b\t\u0011q\u0002T8oO6\u000b\u0007/\u0013;fe\u0006$xN\u001d\t\u0003\u001fAa\u0001\u0001B\u0003\u0012\u0001\t\u00071CA\u0001W\u0007\u0001\t\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0003\u00169yq\u0011BA\u000f\u0007\u0005\u0019!V\u000f\u001d7feA\u0011qD\t\u0008\u0003\u0017\u0001J!!\t\u0002\u0002\u00191{gnZ\'baV#\u0018\u000e\\:\n\u0005\r\"#\u0001\u0002\'p]\u001eL!aI\u0013\u000b\u0005\u0019:\u0013!\u0004\"ji>\u0003XM]1uS>t7O\u0003\u0002)\t\u00059q-\u001a8fe&\u001c\u0007\u0002\u0003\u0016\u0001\u0005\u0003\u0005\u000b\u0011B\u0016\u0002\u0005%$\u0008cA\u0006-\u001d%\u0011QF\u0001\u0002\u0008\u0019>tw-T1q\u0011\u0015y\u0003\u0001\"\u00011\u0003\u0019a\u0014N\\5u}Q\u0011\u0011G\r\t\u0004\u0017\u0001q\u0001\"\u0002\u0016/\u0001\u0004Y\u0003\"\u0002\u001b\u0001\t\u0003)\u0014a\u0002<bYV,wJ\u001a\u000b\u00037YBQaN\u001aA\u0002a\n1\u0001^5q!\rIDH\u0004\u0008\u0003\u0017iJ!a\u000f\u0002\u0002\u000f1{gnZ\'ba&\u0011QH\u0010\u0002\u0004)&\u0004(BA\u001e\u0003\u0001"
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/LongMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/LongMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lscala/collection/immutable/LongMapIterator;-><init>(Lscala/collection/immutable/LongMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic valueOf(Lscala/collection/immutable/LongMap$Tip;)Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMapEntryIterator;->valueOf(Lscala/collection/immutable/LongMap$Tip;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public valueOf(Lscala/collection/immutable/LongMap$Tip;)Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/LongMap$Tip<",
            "TV;>;)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation

    .line 127
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
