.class public interface abstract Lscala/runtime/FractionalProxy;
.super Ljava/lang/Object;
.source "ScalaNumberProxy.scala"

# interfaces
.implements Lscala/runtime/ScalaNumberProxy;
.implements Lscala/runtime/RangedProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/runtime/ScalaNumberProxy<",
        "TT;>;",
        "Lscala/runtime/RangedProxy<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u001d4q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\u0008Ge\u0006\u001cG/[8oC2\u0004&o\u001c=z\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\t\'M!\u0001!C\u0007\u001a!\tQ1\"D\u0001\u0005\u0013\taAAA\u0002B]f\u00042AD\u0008\u0012\u001b\u0005\u0011\u0011B\u0001\t\u0003\u0005A\u00196-\u00197b\u001dVl\'-\u001a:Qe>D\u0018\u0010\u0005\u0002\u0013\'1\u0001A!\u0002\u000b\u0001\u0005\u0004)\"!\u0001+\u0012\u0005YI\u0001C\u0001\u0006\u0018\u0013\tABAA\u0004O_RD\u0017N\\4\u0011\u00079Q\u0012#\u0003\u0002\u001c\u0005\tY!+\u00198hK\u0012\u0004&o\u001c=z\u0011\u0015i\u0002\u0001\"\u0001\u001f\u0003\u0019!\u0013N\\5uIQ\tq\u0004\u0005\u0002\u000bA%\u0011\u0011\u0005\u0002\u0002\u0005+:LG\u000fC\u0003$\u0001\u0019MA%A\u0002ok6,\u0012!\n\t\u0004M%\nbB\u0001\u0006(\u0013\tAC!A\u0004qC\u000e\\\u0017mZ3\n\u0005)Z#A\u0003$sC\u000e$\u0018n\u001c8bY*\u0011\u0001\u0006\u0002\u0005\u0006[\u00011\u0019BL\u0001\u000cS:$Xm\u001a:bY:+X.F\u00010!\r1\u0003\'E\u0005\u0003c-\u0012\u0001\"\u00138uK\u001e\u0014\u0018\r\\\u0003\u0005g\u0001\u0001AGA\tSKN,H\u000e^,ji\"|W\u000f^*uKB\u0004B!\u000e\u001d\u0012\u007f9\u0011aEN\u0005\u0003o-\nQAU1oO\u0016L!!\u000f\u001e\u0003\u000fA\u000b\'\u000f^5bY*\u0011qg\u000f\u0006\u0003yu\n\u0011\"[7nkR\u000c\'\r\\3\u000b\u0005y\"\u0011AC2pY2,7\r^5p]B\u0019\u0001)Q\t\u000e\u0003mJ!AQ\u001e\u0003\u00199+X.\u001a:jGJ\u000bgnZ3\t\u000b\u0011\u0003A\u0011A#\u0002\u000f%\u001cx\u000b[8mKR\ta\t\u0005\u0002\u000b\u000f&\u0011\u0001\n\u0002\u0002\u0008\u0005>|G.Z1o\u0011\u0015Q\u0005\u0001\"\u0001L\u0003\u0015)h\u000e^5m)\tae\n\u0005\u0002Ne5\t\u0001\u0001C\u0003P\u0013\u0002\u0007\u0011#A\u0002f]\u0012DQA\u0013\u0001\u0005\u0002E#2AU-[!\r\u0019f+\u0005\u0008\u0003\u0001RK!!V\u001e\u0002\u00199+X.\u001a:jGJ\u000bgnZ3\n\u0005]C&!C#yG2,8/\u001b<f\u0015\t)6\u0008C\u0003P!\u0002\u0007\u0011\u0003C\u0003\\!\u0002\u0007\u0011#\u0001\u0003ti\u0016\u0004\u0008\"B/\u0001\t\u0003q\u0016A\u0001;p)\tau\u000cC\u0003P9\u0002\u0007\u0011\u0003C\u0003^\u0001\u0011\u0005\u0011\rF\u0002cK\u001a\u00042aU2\u0012\u0013\t!\u0007LA\u0005J]\u000edWo]5wK\")q\n\u0019a\u0001#!)1\u000c\u0019a\u0001#\u0001"
.end annotation


# virtual methods
.method public abstract integralNum()Lscala/math/Integral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Integral<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract isWhole()Z
.end method

.method public abstract num()Lscala/math/Fractional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Fractional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract to(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Inclusive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lscala/collection/immutable/NumericRange$Inclusive<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract to(Ljava/lang/Object;)Lscala/collection/immutable/Range$Partial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/immutable/Range$Partial<",
            "TT;",
            "Lscala/collection/immutable/NumericRange<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract until(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract until(Ljava/lang/Object;)Lscala/collection/immutable/Range$Partial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/immutable/Range$Partial<",
            "TT;",
            "Lscala/collection/immutable/NumericRange<",
            "TT;>;>;"
        }
    .end annotation
.end method
