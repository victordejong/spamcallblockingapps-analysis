.class public final Lscala/collection/TraversableViewLike$$anon$8;
.super Lscala/collection/TraversableViewLike$AbstractTransformed;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/collection/TraversableViewLike$TakenWhile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableViewLike;->newTakenWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/TraversableViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TA;>;",
        "Lscala/collection/TraversableViewLike<",
        "TA;TColl;TThis;>.TakenWhile;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableViewLike;

.field private final pred:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 261
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableViewLike$$anon$8;->$outer:Lscala/collection/TraversableViewLike;

    iput-object p2, p0, Lscala/collection/TraversableViewLike$$anon$8;->pred:Lscala/Function1;

    invoke-direct {p0, p1}, Lscala/collection/TraversableViewLike$AbstractTransformed;-><init>(Lscala/collection/TraversableViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$TakenWhile$class;->$init$(Lscala/collection/TraversableViewLike$TakenWhile;)V

    return-void
.end method


# virtual methods
.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    .line 261
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$TakenWhile$class;->foreach(Lscala/collection/TraversableViewLike$TakenWhile;Lscala/Function1;)V

    return-void
.end method

.method public pred()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lscala/collection/TraversableViewLike$$anon$8;->pred:Lscala/Function1;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$TakenWhile$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 202
    iget-object v0, p0, Lscala/collection/TraversableViewLike$$anon$8;->$outer:Lscala/collection/TraversableViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 261
    invoke-static {p0}, Lscala/collection/TraversableViewLike$TakenWhile$class;->viewIdentifier(Lscala/collection/TraversableViewLike$TakenWhile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
