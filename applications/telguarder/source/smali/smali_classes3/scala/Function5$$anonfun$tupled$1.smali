.class public final Lscala/Function5$$anonfun$tupled$1;
.super Lscala/runtime/AbstractFunction1;
.source "Function5.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function5;->tupled()Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple5<",
        "TT1;TT2;TT3;TT4;TT5;>;TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Function5;


# direct methods
.method public constructor <init>(Lscala/Function5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function5<",
            "TT1;TT2;TT3;TT4;TT5;TR;>;)V"
        }
    .end annotation

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Function5$$anonfun$tupled$1;->$outer:Lscala/Function5;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lscala/Tuple5;

    invoke-virtual {p0, p1}, Lscala/Function5$$anonfun$tupled$1;->apply(Lscala/Tuple5;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple5;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple5<",
            "TT1;TT2;TT3;TT4;TT5;>;)TR;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lscala/Function5$$anonfun$tupled$1;->$outer:Lscala/Function5;

    invoke-virtual {p1}, Lscala/Tuple5;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple5;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple5;->_3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple5;->_4()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/Tuple5;->_5()Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lscala/Function5;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
