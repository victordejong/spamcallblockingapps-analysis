.class public final Lscala/collection/TraversableViewLike$Mapped$$anonfun$foreach$2;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableViewLike$Mapped;->foreach(Lscala/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;TU;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableViewLike$Mapped;

.field private final f$3:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike$Mapped;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>.Mapped<TB;>;)V"
        }
    .end annotation

    .line 168
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableViewLike$Mapped$$anonfun$foreach$2;->$outer:Lscala/collection/TraversableViewLike$Mapped;

    iput-object p2, p0, Lscala/collection/TraversableViewLike$Mapped$$anonfun$foreach$2;->f$3:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TU;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lscala/collection/TraversableViewLike$Mapped$$anonfun$foreach$2;->f$3:Lscala/Function1;

    iget-object v1, p0, Lscala/collection/TraversableViewLike$Mapped$$anonfun$foreach$2;->$outer:Lscala/collection/TraversableViewLike$Mapped;

    invoke-interface {v1}, Lscala/collection/TraversableViewLike$Mapped;->mapping()Lscala/Function1;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
