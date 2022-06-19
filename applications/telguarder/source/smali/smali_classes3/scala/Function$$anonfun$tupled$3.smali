.class public final Lscala/Function$$anonfun$tupled$3;
.super Lscala/runtime/AbstractFunction1;
.source "Function.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function$;->tupled(Lscala/Function4;)Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple4<",
        "Ta1;Ta2;Ta3;Ta4;>;Tb;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$7:Lscala/Function4;


# direct methods
.method public constructor <init>(Lscala/Function4;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lscala/Function$$anonfun$tupled$3;->f$7:Lscala/Function4;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, Lscala/Tuple4;

    invoke-virtual {p0, p1}, Lscala/Function$$anonfun$tupled$3;->apply(Lscala/Tuple4;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple4;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple4<",
            "Ta1;Ta2;Ta3;Ta4;>;)Tb;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lscala/Function$$anonfun$tupled$3;->f$7:Lscala/Function4;

    invoke-virtual {p1}, Lscala/Tuple4;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple4;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple4;->_3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple4;->_4()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, v2, v3, p1}, Lscala/Function4;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
