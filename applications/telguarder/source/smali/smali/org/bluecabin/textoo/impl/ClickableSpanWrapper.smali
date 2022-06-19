.class public final Lorg/bluecabin/textoo/impl/ClickableSpanWrapper;
.super Landroid/text/style/ClickableSpan;
.source "ClickableSpanWrapper.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001a2A!\u0001\u0002\u0007\u0017\t!2\t\\5dW\u0006\u0014G.Z*qC:<&/\u00199qKJT!a\u0001\u0003\u0002\t%l\u0007\u000f\u001c\u0006\u0003\u000b\u0019\ta\u0001^3yi>|\'BA\u0004\t\u0003%\u0011G.^3dC\nLgNC\u0001\n\u0003\ry\'oZ\u0002\u0001\'\t\u0001A\u0002\u0005\u0002\u000e)5\taB\u0003\u0002\u0010!\u0005)1\u000f^=mK*\u0011\u0011CE\u0001\u0005i\u0016DHOC\u0001\u0014\u0003\u001d\tg\u000e\u001a:pS\u0012L!!\u0006\u0008\u0003\u001b\rc\u0017nY6bE2,7\u000b]1o\u0011!9\u0002A!A!\u0002\u0013a\u0011aB<sCB\u0004X\r\u001a\u0005\t3\u0001\u0011\t\u0011)A\u00055\u0005Y\u0001.\u00198eY\u0016\u001cE.[2l!\u0011Yb\u0004\t\u0014\u000e\u0003qQ\u0011!H\u0001\u0006g\u000e\u000cG.Y\u0005\u0003?q\u0011\u0011BR;oGRLwN\\\u0019\u0011\u0005\u0005\"S\"\u0001\u0012\u000b\u0005\r\u0012\u0012\u0001\u0002<jK^L!!\n\u0012\u0003\tYKWm\u001e\t\u00037\u001dJ!\u0001\u000b\u000f\u0003\u000f\t{w\u000e\\3b]\")!\u0006\u0001C\u0001W\u00051A(\u001b8jiz\"2\u0001\u000c\u00180!\ti\u0003!D\u0001\u0003\u0011\u00159\u0012\u00061\u0001\r\u0011\u0015I\u0012\u00061\u0001\u001b\u0011\u0015\t\u0004\u0001\"\u00113\u0003\u001dygn\u00117jG.$\"a\r\u001c\u0011\u0005m!\u0014BA\u001b\u001d\u0005\u0011)f.\u001b;\t\u000b]\u0002\u0004\u0019\u0001\u0011\u0002\r]LGmZ3u\u0001"
.end annotation


# instance fields
.field private final handleClick:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapped:Landroid/text/style/ClickableSpan;


# direct methods
.method public constructor <init>(Landroid/text/style/ClickableSpan;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/style/ClickableSpan;",
            "Lscala/Function1<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lorg/bluecabin/textoo/impl/ClickableSpanWrapper;->wrapped:Landroid/text/style/ClickableSpan;

    iput-object p2, p0, Lorg/bluecabin/textoo/impl/ClickableSpanWrapper;->handleClick:Lscala/Function1;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/ClickableSpanWrapper;->handleClick:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bluecabin/textoo/impl/ClickableSpanWrapper;->wrapped:Landroid/text/style/ClickableSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
