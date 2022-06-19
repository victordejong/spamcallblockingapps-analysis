.class public final Lscala/Function17$$anonfun$tupled$1;
.super Lscala/runtime/AbstractFunction1;
.source "Function17.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function17;->tupled()Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple17<",
        "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;TT17;>;TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Function17;


# direct methods
.method public constructor <init>(Lscala/Function17;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function17<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;TT17;TR;>;)V"
        }
    .end annotation

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Function17$$anonfun$tupled$1;->$outer:Lscala/Function17;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lscala/Tuple17;

    invoke-virtual {p0, p1}, Lscala/Function17$$anonfun$tupled$1;->apply(Lscala/Tuple17;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple17;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple17<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;TT17;>;)TR;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eqz v0, :cond_0

    .line 35
    iget-object v2, v1, Lscala/Function17$$anonfun$tupled$1;->$outer:Lscala/Function17;

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_2()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_3()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_4()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_5()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_6()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_7()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_8()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_9()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_10()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_11()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_12()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_13()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_14()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_15()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_16()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple17;->_17()Ljava/lang/Object;

    move-result-object v19

    invoke-interface/range {v2 .. v19}, Lscala/Function17;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    new-instance v2, Lscala/MatchError;

    invoke-direct {v2, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
