.class public final Lscala/runtime/SeqCharSequence;
.super Ljava/lang/Object;
.source "SeqCharSequence.scala"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000113A!\u0001\u0002\u0003\u000f\ty1+Z9DQ\u0006\u00148+Z9vK:\u001cWM\u0003\u0002\u0004\t\u00059!/\u001e8uS6,\'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001M\u0019\u0001\u0001\u0003\t\u0011\u0005%qQ\"\u0001\u0006\u000b\u0005-a\u0011\u0001\u00027b]\u001eT\u0011!D\u0001\u0005U\u00064\u0018-\u0003\u0002\u0010\u0015\t1qJ\u00196fGR\u0004\"!C\t\n\u0005IQ!\u0001D\"iCJ\u001cV-];f]\u000e,\u0007\u0002\u0003\u000b\u0001\u0005\u000b\u0007I\u0011A\u000b\u0002\u0005a\u001cX#\u0001\u000c\u0011\u0007]QB$D\u0001\u0019\u0015\tIB!\u0001\u0006d_2dWm\u0019;j_:L!a\u0007\r\u0003\u0015%sG-\u001a=fIN+\u0017\u000f\u0005\u0002\u001e=5\tA!\u0003\u0002 \t\t!1\t[1s\u0011!\t\u0003A!A!\u0002\u00131\u0012a\u0001=tA!)1\u0005\u0001C\u0001I\u00051A(\u001b8jiz\"\"!J\u0014\u0011\u0005\u0019\u0002Q\"\u0001\u0002\t\u000bQ\u0011\u0003\u0019\u0001\u000c\t\u000b%\u0002A\u0011\u0001\u0016\u0002\r1,gn\u001a;i)\u0005Y\u0003CA\u000f-\u0013\tiCAA\u0002J]RDQa\u000c\u0001\u0005\u0002A\naa\u00195be\u0006#HC\u0001\u000f2\u0011\u0015\u0011d\u00061\u0001,\u0003\u0015Ig\u000eZ3y\u0011\u0015!\u0004\u0001\"\u00016\u0003-\u0019XOY*fcV,gnY3\u0015\u0007A1\u0004\u0008C\u00038g\u0001\u00071&A\u0003ti\u0006\u0014H\u000fC\u0003:g\u0001\u00071&A\u0002f]\u0012DQa\u000f\u0001\u0005Bq\n\u0001\u0002^8TiJLgn\u001a\u000b\u0002{A\u0011a(\u0011\u0008\u0003;}J!\u0001\u0011\u0003\u0002\rA\u0013X\rZ3g\u0013\t\u00115I\u0001\u0004TiJLgn\u001a\u0006\u0003\u0001\u0012AC\u0001A#I\u0015B\u0011QDR\u0005\u0003\u000f\u0012\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005I\u0015AG+tK\u0002\u0002&/\u001a3fM:\u001aV-]\"iCJ\u001cV-];f]\u000e,\u0017%A&\u0002\rIr\u0013\'\r\u00181\u0001"
.end annotation


# instance fields
.field private final xs:Lscala/collection/IndexedSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/IndexedSeq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lscala/runtime/SeqCharSequence;->xs:Lscala/collection/IndexedSeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 17
    invoke-virtual {p0}, Lscala/runtime/SeqCharSequence;->xs()Lscala/collection/IndexedSeq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 16
    invoke-virtual {p0}, Lscala/runtime/SeqCharSequence;->xs()Lscala/collection/IndexedSeq;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/IndexedSeq;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 18
    new-instance v0, Lscala/runtime/SeqCharSequence;

    invoke-virtual {p0}, Lscala/runtime/SeqCharSequence;->xs()Lscala/collection/IndexedSeq;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lscala/collection/IndexedSeq;->slice(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/IndexedSeq;

    invoke-direct {v0, p1}, Lscala/runtime/SeqCharSequence;-><init>(Lscala/collection/IndexedSeq;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lscala/runtime/SeqCharSequence;->xs()Lscala/collection/IndexedSeq;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lscala/collection/IndexedSeq;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xs()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lscala/runtime/SeqCharSequence;->xs:Lscala/collection/IndexedSeq;

    return-object v0
.end method
