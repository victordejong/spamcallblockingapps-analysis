.class public final Lscala/collection/parallel/mutable/ParHashMap$$anonfun$brokenInvariants$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashMap;->brokenInvariants()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/immutable/List<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/collection/immutable/List<",
        "Ljava/lang/String;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, Lscala/collection/immutable/List;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$brokenInvariants$2;->apply(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
