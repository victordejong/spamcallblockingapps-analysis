.class public final Lscala/collection/immutable/StringLike$$anonfun$1;
.super Lscala/runtime/AbstractFunction2;
.source "StringLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StringLike;->split([C)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/StringLike;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StringLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StringLike<",
            "TRepr;>;)V"
        }
    .end annotation

    .line 236
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/StringLike$$anonfun$1;->$outer:Lscala/collection/immutable/StringLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 236
    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/StringLike$$anonfun$1;->apply(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    .line 236
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/immutable/StringLike$$anonfun$1;->$outer:Lscala/collection/immutable/StringLike;

    invoke-static {v0, p2}, Lscala/collection/immutable/StringLike$class;->scala$collection$immutable$StringLike$$escape(Lscala/collection/immutable/StringLike;C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
