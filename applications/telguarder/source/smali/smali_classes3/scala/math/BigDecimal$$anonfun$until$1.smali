.class public final Lscala/math/BigDecimal$$anonfun$until$1;
.super Lscala/runtime/AbstractFunction1;
.source "BigDecimal.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/BigDecimal;->until(Lscala/math/BigDecimal;)Lscala/collection/immutable/Range$Partial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/math/BigDecimal;",
        "Lscala/collection/immutable/NumericRange$Exclusive<",
        "Lscala/math/BigDecimal;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/math/BigDecimal;

.field private final end$1:Lscala/math/BigDecimal;


# direct methods
.method public constructor <init>(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)V
    .locals 0

    .line 761
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/math/BigDecimal$$anonfun$until$1;->$outer:Lscala/math/BigDecimal;

    iput-object p2, p0, Lscala/math/BigDecimal$$anonfun$until$1;->end$1:Lscala/math/BigDecimal;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 761
    check-cast p1, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$$anonfun$until$1;->apply(Lscala/math/BigDecimal;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/math/BigDecimal;)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/BigDecimal;",
            ")",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "Lscala/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lscala/math/BigDecimal$$anonfun$until$1;->$outer:Lscala/math/BigDecimal;

    iget-object v1, p0, Lscala/math/BigDecimal$$anonfun$until$1;->end$1:Lscala/math/BigDecimal;

    invoke-virtual {v0, v1, p1}, Lscala/math/BigDecimal;->until(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method
