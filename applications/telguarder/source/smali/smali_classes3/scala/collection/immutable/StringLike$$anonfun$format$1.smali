.class public final Lscala/collection/immutable/StringLike$$anonfun$format$1;
.super Lscala/runtime/AbstractFunction1;
.source "StringLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StringLike;->format(Lscala/collection/Seq;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
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

    .line 318
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/StringLike$$anonfun$format$1;->$outer:Lscala/collection/immutable/StringLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 318
    iget-object v0, p0, Lscala/collection/immutable/StringLike$$anonfun$format$1;->$outer:Lscala/collection/immutable/StringLike;

    invoke-static {v0, p1}, Lscala/collection/immutable/StringLike$class;->scala$collection$immutable$StringLike$$unwrapArg(Lscala/collection/immutable/StringLike;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
