.class public final Lscala/Function10$$anonfun$tupled$1;
.super Lscala/runtime/AbstractFunction1;
.source "Function10.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function10;->tupled()Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple10<",
        "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;>;TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Function10;


# direct methods
.method public constructor <init>(Lscala/Function10;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function10<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TR;>;)V"
        }
    .end annotation

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Function10$$anonfun$tupled$1;->$outer:Lscala/Function10;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lscala/Tuple10;

    invoke-virtual {p0, p1}, Lscala/Function10$$anonfun$tupled$1;->apply(Lscala/Tuple10;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple10;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple10<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;>;)TR;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lscala/Function10$$anonfun$tupled$1;->$outer:Lscala/Function10;

    invoke-virtual {p1}, Lscala/Tuple10;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple10;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple10;->_3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple10;->_4()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/Tuple10;->_5()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lscala/Tuple10;->_6()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lscala/Tuple10;->_7()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lscala/Tuple10;->_8()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1}, Lscala/Tuple10;->_9()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1}, Lscala/Tuple10;->_10()Ljava/lang/Object;

    move-result-object v10

    invoke-interface/range {v0 .. v10}, Lscala/Function10;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
