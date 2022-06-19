.class public interface abstract Lscala/runtime/ScalaNumberProxy;
.super Ljava/lang/Object;
.source "ScalaNumberProxy.scala"

# interfaces
.implements Lscala/math/ScalaNumericAnyConversions;
.implements Lscala/runtime/OrderedProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/math/ScalaNumericAnyConversions;",
        "Lscala/runtime/OrderedProxy<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001=4q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\tTG\u0006d\u0017MT;nE\u0016\u0014\u0008K]8ys*\u00111\u0001B\u0001\u0008eVtG/[7f\u0015\u0005)\u0011!B:dC2\u000c7\u0001A\u000b\u0003\u0011q\u0019R\u0001A\u0005\u000e\'\t\u0002\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u000f#5\tqB\u0003\u0002\u0011\t\u0005!Q.\u0019;i\u0013\t\u0011rB\u0001\u000eTG\u0006d\u0017MT;nKJL7-\u00118z\u0007>tg/\u001a:tS>t7\u000fE\u0002\u0015/iq!AC\u000b\n\u0005Y!\u0011!\u0002)s_bL\u0018B\u0001\r\u001a\u0005\u0015!\u0016\u0010]3e\u0015\t1B\u0001\u0005\u0002\u001c91\u0001A!B\u000f\u0001\u0005\u0004q\"!\u0001+\u0012\u0005}I\u0001C\u0001\u0006!\u0013\t\tCAA\u0004O_RD\u0017N\\4\u0011\u0007\r\"#$D\u0001\u0003\u0013\t)#A\u0001\u0007Pe\u0012,\'/\u001a3Qe>D\u0018\u0010C\u0003(\u0001\u0011\u0005\u0001&\u0001\u0004%S:LG\u000f\n\u000b\u0002SA\u0011!BK\u0005\u0003W\u0011\u0011A!\u00168ji\")Q\u0006\u0001D\n]\u0005\u0019a.^7\u0016\u0003=\u00022\u0001M\u001a\u001b\u001d\tQ\u0011\'\u0003\u00023\t\u00059\u0001/Y2lC\u001e,\u0017B\u0001\u001b6\u0005\u001dqU/\\3sS\u000eT!A\r\u0003\t\u000b]\u0002A\u0011\u0001\u001d\u0002\u0015UtG-\u001a:ms&tw\rF\u0001:!\tQ!(\u0003\u0002<\t\t1\u0011I\\=SK\u001aDQ!\u0010\u0001\u0005\u0002y\n1\u0002Z8vE2,g+\u00197vKR\tq\u0008\u0005\u0002\u000b\u0001&\u0011\u0011\t\u0002\u0002\u0007\t>,(\r\\3\t\u000b\r\u0003A\u0011\u0001#\u0002\u0015\u0019dw.\u0019;WC2,X\rF\u0001F!\tQa)\u0003\u0002H\t\t)a\t\\8bi\")\u0011\n\u0001C\u0001\u0015\u0006IAn\u001c8h-\u0006dW/\u001a\u000b\u0002\u0017B\u0011!\u0002T\u0005\u0003\u001b\u0012\u0011A\u0001T8oO\")q\n\u0001C\u0001!\u0006A\u0011N\u001c;WC2,X\rF\u0001R!\tQ!+\u0003\u0002T\t\t\u0019\u0011J\u001c;\t\u000bU\u0003A\u0011\u0001,\u0002\u0013\tLH/\u001a,bYV,G#A,\u0011\u0005)A\u0016BA-\u0005\u0005\u0011\u0011\u0015\u0010^3\t\u000bm\u0003A\u0011\u0001/\u0002\u0015MDwN\u001d;WC2,X\rF\u0001^!\tQa,\u0003\u0002`\t\t)1\u000b[8si\")\u0011\r\u0001C\u0001E\u0006\u0019Q.\u001b8\u0015\u0005i\u0019\u0007\"\u00023a\u0001\u0004Q\u0012\u0001\u0002;iCRDQA\u001a\u0001\u0005\u0002\u001d\u000c1!\\1y)\tQ\u0002\u000eC\u0003eK\u0002\u0007!\u0004C\u0003k\u0001\u0011\u00051.A\u0002bEN,\u0012A\u0007\u0005\u0006[\u0002!\tA\\\u0001\u0007g&<g.^7\u0016\u0003E\u0003"
.end annotation


# virtual methods
.method public abstract abs()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract byteValue()B
.end method

.method public abstract doubleValue()D
.end method

.method public abstract floatValue()F
.end method

.method public abstract intValue()I
.end method

.method public abstract longValue()J
.end method

.method public abstract max(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract min(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract num()Lscala/math/Numeric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Numeric<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract shortValue()S
.end method

.method public abstract signum()I
.end method

.method public abstract underlying()Ljava/lang/Object;
.end method
