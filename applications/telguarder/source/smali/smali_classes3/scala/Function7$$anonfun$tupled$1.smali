.class public final Lscala/Function7$$anonfun$tupled$1;
.super Lscala/runtime/AbstractFunction1;
.source "Function7.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function7;->tupled()Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple7<",
        "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Function7;


# direct methods
.method public constructor <init>(Lscala/Function7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;)V"
        }
    .end annotation

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Function7$$anonfun$tupled$1;->$outer:Lscala/Function7;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lscala/Tuple7;

    invoke-virtual {p0, p1}, Lscala/Function7$$anonfun$tupled$1;->apply(Lscala/Tuple7;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple7;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;)TR;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lscala/Function7$$anonfun$tupled$1;->$outer:Lscala/Function7;

    invoke-virtual {p1}, Lscala/Tuple7;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple7;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple7;->_3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple7;->_4()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/Tuple7;->_5()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lscala/Tuple7;->_6()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lscala/Tuple7;->_7()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lscala/Function7;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
