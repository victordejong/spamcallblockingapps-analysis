.class public final Lscala/collection/generic/Subtractable$$anonfun$$minus$minus$1;
.super Lscala/runtime/AbstractFunction2;
.source "Subtractable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/Subtractable;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TRepr;TA;TRepr;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/generic/Subtractable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/Subtractable<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Lscala/collection/generic/Subtractable;

    invoke-virtual {p0, p1, p2}, Lscala/collection/generic/Subtractable$$anonfun$$minus$minus$1;->apply(Lscala/collection/generic/Subtractable;Ljava/lang/Object;)Lscala/collection/generic/Subtractable;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/generic/Subtractable;Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRepr;TA;)TRepr;"
        }
    .end annotation

    .line 60
    invoke-interface {p1, p2}, Lscala/collection/generic/Subtractable;->$minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;

    move-result-object p1

    return-object p1
.end method
