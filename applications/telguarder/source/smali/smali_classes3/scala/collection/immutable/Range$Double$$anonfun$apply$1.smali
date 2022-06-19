.class public final Lscala/collection/immutable/Range$Double$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "Range.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Range$Double$;->apply(DDD)Lscala/collection/immutable/NumericRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/math/BigDecimal;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 494
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lscala/math/BigDecimal;)D
    .locals 2

    .line 494
    invoke-virtual {p1}, Lscala/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 494
    check-cast p1, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range$Double$$anonfun$apply$1;->apply(Lscala/math/BigDecimal;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
