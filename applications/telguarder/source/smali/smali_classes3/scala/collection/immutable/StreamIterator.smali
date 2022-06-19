.class public final Lscala/collection/immutable/StreamIterator;
.super Lscala/collection/AbstractIterator;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/StreamIterator$LazyCell;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterator<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00054A!\u0001\u0002\u0003\u0013\tq1\u000b\u001e:fC6LE/\u001a:bi>\u0014(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b#M\u0019\u0001aC\u000e\u0011\u00071iq\"D\u0001\u0005\u0013\tqAA\u0001\tBEN$(/Y2u\u0013R,\'/\u0019;peB\u0011\u0001#\u0005\u0007\u0001\t\u0019\u0011\u0002\u0001\"b\u0001\'\t\t\u0011)\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u00071ar\"\u0003\u0002\u001e\t\tA\u0011\n^3sCR|\'\u000fC\u0003 \u0001\u0011%\u0001%\u0001\u0004=S:LGO\u0010\u000b\u0002CA\u0019!\u0005A\u0008\u000e\u0003\tAQa\u0008\u0001\u0005\u0002\u0011\"\"!I\u0013\t\u000b\u0019\u001a\u0003\u0019A\u0014\u0002\tM,GN\u001a\t\u0004E!z\u0011BA\u0015\u0003\u0005\u0019\u0019FO]3b[\u001a!1\u0006\u0001\u0001-\u0005!a\u0015M_=DK2d7C\u0001\u0016.!\t)b&\u0003\u00020\r\t1\u0011I\\=SK\u001aD\u0001\"\r\u0016\u0003\u0002\u0013\u0006IAM\u0001\u0003gR\u00042!F\u001a(\u0013\t!dA\u0001\u0005=Eft\u0017-\\3?\u0011\u0015y\"\u0006\"\u00017)\t9\u0014\u0008\u0005\u00029U5\t\u0001\u0001\u0003\u00042k\u0011\u0005\rA\r\u0005\tw)B)\u0019!C\u0001y\u0005\ta/F\u0001(\u0011!q$\u0006#A!B\u00139\u0013A\u0001<!\u0011%\u0001\u0005\u00011AA\u0002\u0013%\u0011)A\u0003uQ\u0016\u001cX-F\u00018\u0011%\u0019\u0005\u00011AA\u0002\u0013%A)A\u0005uQ\u0016\u001cXm\u0018\u0013fcR\u0011Q\t\u0013\t\u0003+\u0019K!a\u0012\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0008\u0013\n\u000b\t\u00111\u00018\u0003\rAH%\r\u0005\u0007\u0017\u0002\u0001\u000b\u0015B\u001c\u0002\rQDWm]3!\u0011\u0015i\u0005\u0001\"\u0001O\u0003\u001dA\u0017m\u001d(fqR,\u0012a\u0014\t\u0003+AK!!\u0015\u0004\u0003\u000f\t{w\u000e\\3b]\")1\u000b\u0001C\u0001)\u0006!a.\u001a=u)\u0005y\u0001\"\u0002,\u0001\t\u0003b\u0014\u0001\u0003;p\'R\u0014X-Y7\t\u000ba\u0003A\u0011I-\u0002\rQ|G*[:u+\u0005Q\u0006cA._\u001f9\u0011Q\u0003X\u0005\u0003;\u001a\tq\u0001]1dW\u0006<W-\u0003\u0002`A\n!A*[:u\u0015\tif\u0001"
.end annotation


# instance fields
.field private these:Lscala/collection/immutable/StreamIterator$LazyCell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/StreamIterator<",
            "TA;>.",
            "LazyCell;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1101
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lscala/collection/immutable/Stream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream<",
            "TA;>;)V"
        }
    .end annotation

    .line 1103
    invoke-direct {p0}, Lscala/collection/immutable/StreamIterator;-><init>()V

    .line 1104
    new-instance v0, Lscala/collection/immutable/StreamIterator$LazyCell;

    new-instance v1, Lscala/collection/immutable/StreamIterator$$anonfun$$lessinit$greater$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/StreamIterator$$anonfun$$lessinit$greater$1;-><init>(Lscala/collection/immutable/StreamIterator;Lscala/collection/immutable/Stream;)V

    invoke-direct {v0, p0, v1}, Lscala/collection/immutable/StreamIterator$LazyCell;-><init>(Lscala/collection/immutable/StreamIterator;Lscala/Function0;)V

    invoke-direct {p0, v0}, Lscala/collection/immutable/StreamIterator;->these_$eq(Lscala/collection/immutable/StreamIterator$LazyCell;)V

    return-void
.end method

.method private these()Lscala/collection/immutable/StreamIterator$LazyCell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/StreamIterator<",
            "TA;>.",
            "LazyCell;"
        }
    .end annotation

    .line 1112
    iget-object v0, p0, Lscala/collection/immutable/StreamIterator;->these:Lscala/collection/immutable/StreamIterator$LazyCell;

    return-object v0
.end method

.method private these_$eq(Lscala/collection/immutable/StreamIterator$LazyCell;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamIterator<",
            "TA;>.",
            "LazyCell;",
            ")V"
        }
    .end annotation

    .line 1112
    iput-object p1, p0, Lscala/collection/immutable/StreamIterator;->these:Lscala/collection/immutable/StreamIterator$LazyCell;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1114
    invoke-direct {p0}, Lscala/collection/immutable/StreamIterator;->these()Lscala/collection/immutable/StreamIterator$LazyCell;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/StreamIterator$LazyCell;->v()Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->nonEmpty()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1116
    invoke-virtual {p0}, Lscala/collection/immutable/StreamIterator;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1118
    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/StreamIterator;->these()Lscala/collection/immutable/StreamIterator$LazyCell;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/StreamIterator$LazyCell;->v()Lscala/collection/immutable/Stream;

    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    .line 1120
    new-instance v2, Lscala/collection/immutable/StreamIterator$LazyCell;

    new-instance v3, Lscala/collection/immutable/StreamIterator$$anonfun$next$1;

    invoke-direct {v3, p0, v0}, Lscala/collection/immutable/StreamIterator$$anonfun$next$1;-><init>(Lscala/collection/immutable/StreamIterator;Lscala/collection/immutable/Stream;)V

    invoke-direct {v2, p0, v3}, Lscala/collection/immutable/StreamIterator$LazyCell;-><init>(Lscala/collection/immutable/StreamIterator;Lscala/Function0;)V

    invoke-direct {p0, v2}, Lscala/collection/immutable/StreamIterator;->these_$eq(Lscala/collection/immutable/StreamIterator$LazyCell;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 1128
    invoke-virtual {p0}, Lscala/collection/immutable/StreamIterator;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1124
    invoke-direct {p0}, Lscala/collection/immutable/StreamIterator;->these()Lscala/collection/immutable/StreamIterator$LazyCell;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/StreamIterator$LazyCell;->v()Lscala/collection/immutable/Stream;

    move-result-object v0

    .line 1125
    new-instance v1, Lscala/collection/immutable/StreamIterator$LazyCell;

    new-instance v2, Lscala/collection/immutable/StreamIterator$$anonfun$toStream$1;

    invoke-direct {v2, p0}, Lscala/collection/immutable/StreamIterator$$anonfun$toStream$1;-><init>(Lscala/collection/immutable/StreamIterator;)V

    invoke-direct {v1, p0, v2}, Lscala/collection/immutable/StreamIterator$LazyCell;-><init>(Lscala/collection/immutable/StreamIterator;Lscala/Function0;)V

    invoke-direct {p0, v1}, Lscala/collection/immutable/StreamIterator;->these_$eq(Lscala/collection/immutable/StreamIterator$LazyCell;)V

    return-object v0
.end method
