.class public Lscala/collection/immutable/IntMapKeyIterator;
.super Lscala/collection/immutable/IntMapIterator;
.source "IntMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/IntMapIterator<",
        "TV;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001q2Q!\u0001\u0002\u0001\u0005!\u0011\u0011#\u00138u\u001b\u0006\u00048*Z=Ji\u0016\u0014\u0018\r^8s\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0016\u0005%\u00012C\u0001\u0001\u000b!\u0011YABD\u000e\u000e\u0003\tI!!\u0004\u0002\u0003\u001d%sG/T1q\u0013R,\'/\u0019;peB\u0011q\u0002\u0005\u0007\u0001\t\u0015\t\u0002A1\u0001\u0014\u0005\u000516\u0001A\t\u0003)a\u0001\"!\u0006\u000c\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\tarD\u0004\u0002\u000c;%\u0011aDA\u0001\u000c\u0013:$X*\u00199Vi&d7/\u0003\u0002!C\t\u0019\u0011J\u001c;\n\u0005\u0001\u0012#BA\u0012%\u00035\u0011\u0015\u000e^(qKJ\u000cG/[8og*\u0011Q\u0005B\u0001\u0008O\u0016tWM]5d\u0011!9\u0003A!A!\u0002\u0013A\u0013AA5u!\rY\u0011FD\u0005\u0003U\t\u0011a!\u00138u\u001b\u0006\u0004\u0008\"\u0002\u0017\u0001\t\u0003i\u0013A\u0002\u001fj]&$h\u0008\u0006\u0002/_A\u00191\u0002\u0001\u0008\t\u000b\u001dZ\u0003\u0019\u0001\u0015\t\u000bE\u0002A\u0011\u0001\u001a\u0002\u000fY\u000cG.^3PMR\u00111d\r\u0005\u0006iA\u0002\r!N\u0001\u0004i&\u0004\u0008c\u0001\u001c:\u001d9\u00111bN\u0005\u0003q\t\ta!\u00138u\u001b\u0006\u0004\u0018B\u0001\u001e<\u0005\r!\u0016\u000e\u001d\u0006\u0003q\t\u0001"
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

    .line 142
    invoke-direct {p0, p1}, Lscala/collection/immutable/IntMapIterator;-><init>(Lscala/collection/immutable/IntMap;)V

    return-void
.end method


# virtual methods
.method public valueOf(Lscala/collection/immutable/IntMap$Tip;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/IntMap$Tip<",
            "TV;>;)I"
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result p1

    return p1
.end method

.method public bridge synthetic valueOf(Lscala/collection/immutable/IntMap$Tip;)Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMapKeyIterator;->valueOf(Lscala/collection/immutable/IntMap$Tip;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
