.class public final Lscala/collection/concurrent/Debug;
.super Ljava/lang/Object;
.source "TrieMap.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001M:a!\u0001\u0002\t\u0002\tA\u0011!\u0002#fEV<\'BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c\u0007CA\u0005\u000b\u001b\u0005\u0011aAB\u0006\u0003\u0011\u0003\u0011ABA\u0003EK\n,xm\u0005\u0002\u000b\u001bA\u0011abD\u0007\u0002\r%\u0011\u0001C\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000bIQA\u0011\u0001\u000b\u0002\rqJg.\u001b;?\u0007\u0001!\u0012\u0001\u0003\u0005\t-)A)\u0019!C\u0001/\u0005IAn\\4ck\u001a4WM]\u000b\u00021A\u0019\u0011dH\u0007\u000e\u0003iQ!aA\u000e\u000b\u0005qi\u0012\u0001B;uS2T\u0011AH\u0001\u0005U\u00064\u0018-\u0003\u0002!5\t)2i\u001c8dkJ\u0014XM\u001c;MS:\\W\rZ)vKV,\u0007\u0002\u0003\u0012\u000b\u0011\u0003\u0005\u000b\u0015\u0002\r\u0002\u00151|wMY;gM\u0016\u0014\u0008\u0005C\u0003%\u0015\u0011\u0005Q%A\u0002m_\u001e$\"AJ\u0015\u0011\u000599\u0013B\u0001\u0015\u0007\u0005\u001d\u0011un\u001c7fC:DQAK\u0012A\u00025\t\u0011a\u001d\u0005\u0006Y)!\t!L\u0001\u0006M2,8\u000f\u001b\u000b\u0002]A\u0011abL\u0005\u0003a\u0019\u0011A!\u00168ji\")!G\u0003C\u0001[\u0005)1\r\\3be\u0002"
.end annotation


# direct methods
.method public static clear()V
    .locals 1

    sget-object v0, Lscala/collection/concurrent/Debug$;->MODULE$:Lscala/collection/concurrent/Debug$;

    invoke-virtual {v0}, Lscala/collection/concurrent/Debug$;->clear()V

    return-void
.end method

.method public static flush()V
    .locals 1

    sget-object v0, Lscala/collection/concurrent/Debug$;->MODULE$:Lscala/collection/concurrent/Debug$;

    invoke-virtual {v0}, Lscala/collection/concurrent/Debug$;->flush()V

    return-void
.end method

.method public static log(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lscala/collection/concurrent/Debug$;->MODULE$:Lscala/collection/concurrent/Debug$;

    invoke-virtual {v0, p0}, Lscala/collection/concurrent/Debug$;->log(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static logbuffer()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/concurrent/Debug$;->MODULE$:Lscala/collection/concurrent/Debug$;

    invoke-virtual {v0}, Lscala/collection/concurrent/Debug$;->logbuffer()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    return-object v0
.end method
