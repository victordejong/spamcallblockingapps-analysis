.class public Lscala/collection/generic/SliceInterval;
.super Ljava/lang/Object;
.source "SliceInterval.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001i2Q!\u0001\u0002\u0001\t!\u0011Qb\u00157jG\u0016Le\u000e^3sm\u0006d\'BA\u0002\u0005\u0003\u001d9WM\\3sS\u000eT!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\ta!\u0003\u0002\r\r\t1\u0011I\\=SK\u001aD\u0001B\u0004\u0001\u0003\u0006\u0004%\t\u0001E\u0001\u0005MJ|Wn\u0001\u0001\u0016\u0003E\u0001\"A\u0003\n\n\u0005M1!aA%oi\"AQ\u0003\u0001B\u0001B\u0003%\u0011#A\u0003ge>l\u0007\u0005\u0003\u0005\u0018\u0001\t\u0015\r\u0011\"\u0001\u0011\u0003\u0015)h\u000e^5m\u0011!I\u0002A!A!\u0002\u0013\t\u0012AB;oi&d\u0007\u0005C\u0003\u001c\u0001\u0011%A$\u0001\u0004=S:LGO\u0010\u000b\u0004;}\u0001\u0003C\u0001\u0010\u0001\u001b\u0005\u0011\u0001\"\u0002\u0008\u001b\u0001\u0004\t\u0002\"B\u000c\u001b\u0001\u0004\t\u0002\"\u0002\u0012\u0001\t\u0003\u0001\u0012!B<jIRD\u0007\"\u0002\u0013\u0001\t\u0003)\u0013a\u0003:fG\u0006d7-\u001e7bi\u0016$2!\u0008\u0014)\u0011\u001593\u00051\u0001\u0012\u0003\u0015yfM]8n\u0011\u0015I3\u00051\u0001\u0012\u0003\u0019yVO\u001c;jY\")A\u0005\u0001C\u0001WQ\u0011Q\u0004\u000c\u0005\u0006[)\u0002\r!H\u0001\tS:$XM\u001d<bY\u001e)qF\u0001E\u0001a\u0005i1\u000b\\5dK&sG/\u001a:wC2\u0004\"AH\u0019\u0007\u000b\u0005\u0011\u0001\u0012\u0001\u001a\u0014\u0005EJ\u0001\"B\u000e2\t\u0003!D#\u0001\u0019\t\u000bY\nD\u0011A\u001c\u0002\u000b\u0005\u0004\u0008\u000f\\=\u0015\u0007uA\u0014\u0008C\u0003\u000fk\u0001\u0007\u0011\u0003C\u0003\u0018k\u0001\u0007\u0011\u0003"
.end annotation


# instance fields
.field private final from:I

.field private final until:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 17
    iput p1, p0, Lscala/collection/generic/SliceInterval;->from:I

    iput p2, p0, Lscala/collection/generic/SliceInterval;->until:I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(II)Lscala/collection/generic/SliceInterval;
    .locals 1

    sget-object v0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/generic/SliceInterval$;->apply(II)Lscala/collection/generic/SliceInterval;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public from()I
    .locals 1

    .line 17
    iget v0, p0, Lscala/collection/generic/SliceInterval;->from:I

    return v0
.end method

.method public recalculate(II)Lscala/collection/generic/SliceInterval;
    .locals 2

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 35
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    .line 36
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lscala/collection/generic/SliceInterval;->width()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lscala/math/package$;->min(II)I

    move-result p2

    .line 37
    invoke-virtual {p0}, Lscala/collection/generic/SliceInterval;->from()I

    move-result v0

    add-int/2addr v0, p1

    if-gtz p2, :cond_0

    .line 39
    new-instance p1, Lscala/collection/generic/SliceInterval;

    invoke-virtual {p0}, Lscala/collection/generic/SliceInterval;->from()I

    move-result p2

    invoke-virtual {p0}, Lscala/collection/generic/SliceInterval;->from()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lscala/collection/generic/SliceInterval;-><init>(II)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Lscala/collection/generic/SliceInterval;

    add-int/2addr p2, v0

    invoke-direct {p1, v0, p2}, Lscala/collection/generic/SliceInterval;-><init>(II)V

    :goto_0
    return-object p1
.end method

.method public recalculate(Lscala/collection/generic/SliceInterval;)Lscala/collection/generic/SliceInterval;
    .locals 1

    .line 43
    invoke-virtual {p1}, Lscala/collection/generic/SliceInterval;->from()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/generic/SliceInterval;->until()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/generic/SliceInterval;->recalculate(II)Lscala/collection/generic/SliceInterval;

    move-result-object p1

    return-object p1
.end method

.method public until()I
    .locals 1

    .line 17
    iget v0, p0, Lscala/collection/generic/SliceInterval;->until:I

    return v0
.end method

.method public width()I
    .locals 2

    .line 23
    invoke-virtual {p0}, Lscala/collection/generic/SliceInterval;->until()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/generic/SliceInterval;->from()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
