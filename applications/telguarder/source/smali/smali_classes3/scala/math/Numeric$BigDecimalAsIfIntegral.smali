.class public interface abstract Lscala/math/Numeric$BigDecimalAsIfIntegral;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$BigDecimalIsConflicted;
.implements Lscala/math/Integral;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BigDecimalAsIfIntegral"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/math/Numeric$BigDecimalIsConflicted;",
        "Lscala/math/Integral<",
        "Lscala/math/BigDecimal;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract quot(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
.end method

.method public abstract rem(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
.end method
