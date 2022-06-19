.class public final Lscala/collection/immutable/StringLike$$anonfun$lines$1;
.super Lscala/runtime/AbstractFunction1;
.source "StringLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StringLike;->lines()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


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

    .line 128
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StringLike$$anonfun$lines$1;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 128
    new-instance v0, Lscala/collection/immutable/WrappedString;

    invoke-direct {v0, p1}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/WrappedString;->stripLineEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
