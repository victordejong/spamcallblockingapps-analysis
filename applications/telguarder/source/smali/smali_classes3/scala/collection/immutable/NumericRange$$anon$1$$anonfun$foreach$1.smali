.class public final Lscala/collection/immutable/NumericRange$$anon$1$$anonfun$foreach$1;
.super Lscala/runtime/AbstractFunction1;
.source "NumericRange.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/NumericRange$$anon$1;->foreach(Lscala/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT;TU;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/NumericRange$$anon$1;

.field private final f$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/NumericRange$$anon$1;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/NumericRange<",
            "TT;>.$anon$1;)V"
        }
    .end annotation

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/NumericRange$$anon$1$$anonfun$foreach$1;->$outer:Lscala/collection/immutable/NumericRange$$anon$1;

    iput-object p2, p0, Lscala/collection/immutable/NumericRange$$anon$1$$anonfun$foreach$1;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lscala/collection/immutable/NumericRange$$anon$1$$anonfun$foreach$1;->f$1:Lscala/Function1;

    iget-object v1, p0, Lscala/collection/immutable/NumericRange$$anon$1$$anonfun$foreach$1;->$outer:Lscala/collection/immutable/NumericRange$$anon$1;

    iget-object v1, v1, Lscala/collection/immutable/NumericRange$$anon$1;->fm$1:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
