.class public final Lscala/collection/IterableViewLike$Appended$$anonfun$iterator$1;
.super Lscala/runtime/AbstractFunction0;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableViewLike$Appended;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/GenTraversable<",
        "TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/IterableViewLike$Appended;


# direct methods
.method public constructor <init>(Lscala/collection/IterableViewLike$Appended;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Appended<TB;>;)V"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableViewLike$Appended$$anonfun$iterator$1;->$outer:Lscala/collection/IterableViewLike$Appended;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lscala/collection/IterableViewLike$Appended$$anonfun$iterator$1;->apply()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenTraversable<",
            "TB;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lscala/collection/IterableViewLike$Appended$$anonfun$iterator$1;->$outer:Lscala/collection/IterableViewLike$Appended;

    invoke-interface {v0}, Lscala/collection/IterableViewLike$Appended;->rest()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method
