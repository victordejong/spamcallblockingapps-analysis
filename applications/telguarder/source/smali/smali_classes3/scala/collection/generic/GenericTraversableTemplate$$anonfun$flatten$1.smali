.class public final Lscala/collection/generic/GenericTraversableTemplate$$anonfun$flatten$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenericTraversableTemplate.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/GenericTraversableTemplate;->flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/collection/mutable/Builder<",
        "TB;TCC;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final asTraversable$1:Lscala/Function1;

.field private final b$1:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenericTraversableTemplate;Lscala/collection/mutable/Builder;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenericTraversableTemplate<",
            "TA;TCC;>;)V"
        }
    .end annotation

    .line 171
    iput-object p2, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$flatten$1;->b$1:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$flatten$1;->asTraversable$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$flatten$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Builder<",
            "TB;TCC;>;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$flatten$1;->b$1:Lscala/collection/mutable/Builder;

    iget-object v1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$flatten$1;->asTraversable$1:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversableOnce;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/Builder;

    return-object p1
.end method
