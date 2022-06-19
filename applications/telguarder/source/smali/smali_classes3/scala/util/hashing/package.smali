.class public final Lscala/util/hashing/package;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0011:Q!\u0001\u0002\t\u0002%\tq\u0001]1dW\u0006<WM\u0003\u0002\u0004\t\u00059\u0001.Y:iS:<\'BA\u0003\u0007\u0003\u0011)H/\u001b7\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\u000b\u00175\t!AB\u0003\r\u0005!\u0005QBA\u0004qC\u000e\\\u0017mZ3\u0014\u0005-q\u0001CA\u0008\u0011\u001b\u00051\u0011BA\t\u0007\u0005\u0019\te.\u001f*fM\")1c\u0003C\u0001)\u00051A(\u001b8jiz\"\u0012!\u0003\u0005\u0006--!\taF\u0001\u000bEf$Xm]<baN\u0012DC\u0001\r\u001c!\ty\u0011$\u0003\u0002\u001b\r\t\u0019\u0011J\u001c;\t\u000bq)\u0002\u0019\u0001\r\u0002\u0003YDQAH\u0006\u0005\u0002}\t!BY=uKN<\u0018\r\u001d\u001c5)\t\u00013\u0005\u0005\u0002\u0010C%\u0011!E\u0002\u0002\u0005\u0019>tw\rC\u0003\u001d;\u0001\u0007\u0001\u0005"
.end annotation


# direct methods
.method public static byteswap32(I)I
    .locals 1

    sget-object v0, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    invoke-virtual {v0, p0}, Lscala/util/hashing/package$;->byteswap32(I)I

    move-result p0

    return p0
.end method

.method public static byteswap64(J)J
    .locals 1

    sget-object v0, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    invoke-virtual {v0, p0, p1}, Lscala/util/hashing/package$;->byteswap64(J)J

    move-result-wide p0

    return-wide p0
.end method
