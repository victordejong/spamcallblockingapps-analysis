.class public Lscala/concurrent/duration/Deadline;
.super Ljava/lang/Object;
.source "Deadline.scala"

# interfaces
.implements Lscala/math/Ordered;
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/duration/Deadline$DeadlineIsOrdered$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/math/Ordered<",
        "Lscala/concurrent/duration/Deadline;",
        ">;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005Ed\u0001B\u0001\u0003\u0001&\u0011\u0001\u0002R3bI2Lg.\u001a\u0006\u0003\u0007\u0011\t\u0001\u0002Z;sCRLwN\u001c\u0006\u0003\u000b\u0019\t!bY8oGV\u0014(/\u001a8u\u0015\u00059\u0011!B:dC2\u000c7\u0001A\n\u0006\u0001)qAd\u0008\t\u0003\u00171i\u0011AB\u0005\u0003\u001b\u0019\u0011a!\u00118z%\u00164\u0007cA\u0008\u001859\u0011\u0001#\u0006\u0008\u0003#Qi\u0011A\u0005\u0006\u0003\'!\ta\u0001\u0010:p_Rt\u0014\"A\u0004\n\u0005Y1\u0011a\u00029bG.\u000cw-Z\u0005\u00031e\u0011qa\u0014:eKJ,GM\u0003\u0002\u0017\rA\u00111\u0004A\u0007\u0002\u0005A\u00111\"H\u0005\u0003=\u0019\u0011q\u0001\u0015:pIV\u001cG\u000f\u0005\u0002\u000cA%\u0011\u0011E\u0002\u0002\r\'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\tG\u0001\u0011)\u001a!C\u0001I\u0005!A/[7f+\u0005)\u0003CA\u000e\'\u0013\t9#A\u0001\u0008GS:LG/\u001a#ve\u0006$\u0018n\u001c8\t\u0011%\u0002!\u0011#Q\u0001\n\u0015\nQ\u0001^5nK\u0002BQa\u000b\u0001\u0005\n1\na\u0001P5oSRtDC\u0001\u000e.\u0011\u0015\u0019#\u00061\u0001&\u0011\u0015y\u0003\u0001\"\u00011\u0003\u0015!\u0003\u000f\\;t)\tQ\u0012\u0007C\u00033]\u0001\u0007Q%A\u0003pi\",\'\u000fC\u00035\u0001\u0011\u0005Q\'\u0001\u0004%[&tWo\u001d\u000b\u00035YBQAM\u001aA\u0002\u0015BQ\u0001\u000e\u0001\u0005\u0002a\"\"!J\u001d\t\u000bI:\u0004\u0019\u0001\u000e\t\u000bm\u0002A\u0011\u0001\u0013\u0002\u0011QLW.\u001a\'fMRDQ!\u0010\u0001\u0005\u0002y\n1\u0002[1t)&lW\rT3giR\tq\u0008\u0005\u0002\u000c\u0001&\u0011\u0011I\u0002\u0002\u0008\u0005>|G.Z1o\u0011\u0015\u0019\u0005\u0001\"\u0001?\u0003%I7o\u0014<fe\u0012,X\rC\u0003F\u0001\u0011\u0005a)A\u0004d_6\u0004\u0018M]3\u0015\u0005\u001dS\u0005CA\u0006I\u0013\tIeAA\u0002J]RDQA\r#A\u0002iAq\u0001\u0014\u0001\u0002\u0002\u0013\u0005Q*\u0001\u0003d_BLHC\u0001\u000eO\u0011\u001d\u00193\n%AA\u0002\u0015Bq\u0001\u0015\u0001\u0012\u0002\u0013\u0005\u0011+\u0001\u0008d_BLH\u0005Z3gCVdG\u000fJ\u0019\u0016\u0003IS#!J*,\u0003Q\u0003\"!\u0016.\u000e\u0003YS!a\u0016-\u0002\u0013Ut7\r[3dW\u0016$\'BA-\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u00037Z\u0013\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\u0011\u001di\u0006!!A\u0005By\u000bQ\u0002\u001d:pIV\u001cG\u000f\u0015:fM&DX#A0\u0011\u0005\u0001,W\"A1\u000b\u0005\t\u001c\u0017\u0001\u00027b]\u001eT\u0011\u0001Z\u0001\u0005U\u00064\u0018-\u0003\u0002gC\n11\u000b\u001e:j]\u001eDq\u0001\u001b\u0001\u0002\u0002\u0013\u0005\u0011.\u0001\u0007qe>$Wo\u0019;Be&$\u00180F\u0001H\u0011\u001dY\u0007!!A\u0005\u00021\u000ca\u0002\u001d:pIV\u001cG/\u00127f[\u0016tG\u000f\u0006\u0002naB\u00111B\\\u0005\u0003_\u001a\u00111!\u00118z\u0011\u001d\t(.!AA\u0002\u001d\u000b1\u0001\u001f\u00132\u0011\u001d\u0019\u0008!!A\u0005BQ\u000cq\u0002\u001d:pIV\u001cG/\u0013;fe\u0006$xN]\u000b\u0002kB\u0019a/_7\u000e\u0003]T!\u0001\u001f\u0004\u0002\u0015\r|G\u000e\\3di&|g.\u0003\u0002{o\nA\u0011\n^3sCR|\'\u000fC\u0004}\u0001\u0005\u0005I\u0011A?\u0002\u0011\r\u000cg.R9vC2$\"a\u0010@\t\u000fE\\\u0018\u0011!a\u0001[\"I\u0011\u0011\u0001\u0001\u0002\u0002\u0013\u0005\u00131A\u0001\tQ\u0006\u001c\u0008nQ8eKR\tq\tC\u0005\u0002\u0008\u0001\t\t\u0011\"\u0011\u0002\n\u0005AAo\\*ue&tw\rF\u0001`\u0011%\ti\u0001AA\u0001\n\u0003\ny!\u0001\u0004fcV\u000cGn\u001d\u000b\u0004\u007f\u0005E\u0001\u0002C9\u0002\u000c\u0005\u0005\t\u0019A7\u0008\u000f\u0005U!\u0001#\u0001\u0002\u0018\u0005AA)Z1eY&tW\rE\u0002\u001c\u000331a!\u0001\u0002\t\u0002\u0005m1\u0003BA\r\u0015}AqaKA\r\t\u0003\ty\u0002\u0006\u0002\u0002\u0018!A\u00111EA\r\t\u0003\t)#A\u0002o_^,\u0012AG\u0004\t\u0003S\tI\u0002c\u0001\u0002,\u0005\tB)Z1eY&tW-S:Pe\u0012,\'/\u001a3\u0011\t\u00055\u0012qF\u0007\u0003\u000331\u0001\"!\r\u0002\u001a!\u0005\u00111\u0007\u0002\u0012\t\u0016\u000cG\r\\5oK&\u001bxJ\u001d3fe\u0016$7CBA\u0018\u0003k\tY\u0004E\u0002a\u0003oI1!!\u000fb\u0005\u0019y%M[3diB!q\"!\u0010\u001b\u0013\r\ty$\u0007\u0002\t\u001fJ$WM]5oO\"91&a\u000c\u0005\u0002\u0005\rCCAA\u0016\u0011\u001d)\u0015q\u0006C\u0001\u0003\u000f\"RaRA%\u0003\u001bBq!a\u0013\u0002F\u0001\u0007!$A\u0001b\u0011\u001d\ty%!\u0012A\u0002i\t\u0011A\u0019\u0005\u000b\u0003\'\ny#!A\u0005\n\u0005U\u0013a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"!!\u000e\t\u0015\u0005e\u0013\u0011DA\u0001\n\u0003\u000bY&A\u0003baBd\u0017\u0010F\u0002\u001b\u0003;BaaIA,\u0001\u0004)\u0003BCA1\u00033\t\t\u0011\"!\u0002d\u00059QO\\1qa2LH\u0003BA3\u0003W\u0002BaCA4K%\u0019\u0011\u0011\u000e\u0004\u0003\r=\u0003H/[8o\u0011%\ti\'a\u0018\u0002\u0002\u0003\u0007!$A\u0002yIAB!\"a\u0015\u0002\u001a\u0005\u0005I\u0011BA+\u0001"
.end annotation


# instance fields
.field private final time:Lscala/concurrent/duration/FiniteDuration;


# direct methods
.method public constructor <init>(Lscala/concurrent/duration/FiniteDuration;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lscala/concurrent/duration/Deadline;->time:Lscala/concurrent/duration/FiniteDuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/math/Ordered$class;->$init$(Lscala/math/Ordered;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method

.method public static apply(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Deadline$;->MODULE$:Lscala/concurrent/duration/Deadline$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/Deadline$;->apply(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;

    move-result-object p0

    return-object p0
.end method

.method public static now()Lscala/concurrent/duration/Deadline;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Deadline$;->MODULE$:Lscala/concurrent/duration/Deadline$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Deadline$;->now()Lscala/concurrent/duration/Deadline;

    move-result-object v0

    return-object v0
.end method

.method public static unapply(Lscala/concurrent/duration/Deadline;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/duration/Deadline;",
            ")",
            "Lscala/Option<",
            "Lscala/concurrent/duration/FiniteDuration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/duration/Deadline$;->MODULE$:Lscala/concurrent/duration/Deadline$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/Deadline$;->unapply(Lscala/concurrent/duration/Deadline;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public $greater(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $greater$eq(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less$eq(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $minus(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/concurrent/duration/FiniteDuration;->$minus(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Deadline;->copy(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Lscala/concurrent/duration/Deadline;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    invoke-virtual {p1}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/concurrent/duration/FiniteDuration;->$minus(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/concurrent/duration/FiniteDuration;->$plus(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Deadline;->copy(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;

    move-result-object p1

    return-object p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    instance-of p1, p1, Lscala/concurrent/duration/Deadline;

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lscala/concurrent/duration/Deadline;

    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Deadline;->compare(Lscala/concurrent/duration/Deadline;)I

    move-result p1

    return p1
.end method

.method public compare(Lscala/concurrent/duration/Deadline;)I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    invoke-virtual {p1}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/concurrent/duration/FiniteDuration;->compare(Lscala/concurrent/duration/Duration;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->compareTo(Lscala/math/Ordered;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public copy(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;
    .locals 1

    .line 26
    new-instance v0, Lscala/concurrent/duration/Deadline;

    invoke-direct {v0, p1}, Lscala/concurrent/duration/Deadline;-><init>(Lscala/concurrent/duration/FiniteDuration;)V

    return-object v0
.end method

.method public copy$default$1()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_3

    .line 26
    instance-of v2, p1, Lscala/concurrent/duration/Deadline;

    if-eqz v2, :cond_4

    check-cast p1, Lscala/concurrent/duration/Deadline;

    invoke-virtual {p0}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v2

    invoke-virtual {p1}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p1, p0}, Lscala/concurrent/duration/Deadline;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public hasTimeLeft()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lscala/concurrent/duration/Deadline;->isOverdue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 26
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public isOverdue()Z
    .locals 5

    .line 59
    invoke-virtual {p0}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    invoke-virtual {v0}, Lscala/concurrent/duration/FiniteDuration;->toNanos()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Deadline"

    return-object v0
.end method

.method public time()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 26
    iget-object v0, p0, Lscala/concurrent/duration/Deadline;->time:Lscala/concurrent/duration/FiniteDuration;

    return-object v0
.end method

.method public timeLeft()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 45
    sget-object v0, Lscala/concurrent/duration/Deadline$;->MODULE$:Lscala/concurrent/duration/Deadline$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Deadline$;->now()Lscala/concurrent/duration/Deadline;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/concurrent/duration/Deadline;->$minus(Lscala/concurrent/duration/Deadline;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
