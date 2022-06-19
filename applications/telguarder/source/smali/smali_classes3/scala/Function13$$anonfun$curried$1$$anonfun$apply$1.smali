.class public final Lscala/Function13$$anonfun$curried$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction12;
.source "Function13.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Function13$$anonfun$curried$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction12<",
        "TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Function13$$anonfun$curried$1;

.field private final x1$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/Function13$$anonfun$curried$1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function13<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TR;>.$anonfun$curried$1;)V"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Function13$$anonfun$curried$1$$anonfun$apply$1;->$outer:Lscala/Function13$$anonfun$curried$1;

    iput-object p2, p0, Lscala/Function13$$anonfun$curried$1$$anonfun$apply$1;->x1$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction12;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;)TR;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 26
    iget-object v1, v0, Lscala/Function13$$anonfun$curried$1$$anonfun$apply$1;->$outer:Lscala/Function13$$anonfun$curried$1;

    iget-object v2, v1, Lscala/Function13$$anonfun$curried$1;->$outer:Lscala/Function13;

    iget-object v3, v0, Lscala/Function13$$anonfun$curried$1$$anonfun$apply$1;->x1$1:Ljava/lang/Object;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-interface/range {v2 .. v15}, Lscala/Function13;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
