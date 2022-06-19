.class public interface abstract Lscala/math/Numeric$BigIntIsIntegral;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Integral;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BigIntIsIntegral"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/math/Integral<",
        "Lscala/math/BigInt;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract fromInt(I)Lscala/math/BigInt;
.end method

.method public abstract minus(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
.end method

.method public abstract negate(Lscala/math/BigInt;)Lscala/math/BigInt;
.end method

.method public abstract plus(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
.end method

.method public abstract quot(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
.end method

.method public abstract rem(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
.end method

.method public abstract times(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
.end method

.method public abstract toDouble(Lscala/math/BigInt;)D
.end method

.method public abstract toFloat(Lscala/math/BigInt;)F
.end method

.method public abstract toInt(Lscala/math/BigInt;)I
.end method

.method public abstract toLong(Lscala/math/BigInt;)J
.end method
