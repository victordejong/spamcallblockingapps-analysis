.class public final Lscala/collection/generic/Shrinkable$$anonfun$$minus$minus$eq$1;
.super Lscala/runtime/AbstractFunction1;
.source "Shrinkable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/Shrinkable;->$minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/collection/generic/Shrinkable<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/generic/Shrinkable;


# direct methods
.method public constructor <init>(Lscala/collection/generic/Shrinkable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/Shrinkable<",
            "TA;>;)V"
        }
    .end annotation

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/Shrinkable$$anonfun$$minus$minus$eq$1;->$outer:Lscala/collection/generic/Shrinkable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/generic/Shrinkable$$anonfun$$minus$minus$eq$1;->apply(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/generic/Shrinkable<",
            "TA;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lscala/collection/generic/Shrinkable$$anonfun$$minus$minus$eq$1;->$outer:Lscala/collection/generic/Shrinkable;

    invoke-interface {v0, p1}, Lscala/collection/generic/Shrinkable;->$minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method
