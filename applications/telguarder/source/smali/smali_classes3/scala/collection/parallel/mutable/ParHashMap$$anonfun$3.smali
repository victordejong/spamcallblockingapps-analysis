.class public final Lscala/collection/parallel/mutable/ParHashMap$$anonfun$3;
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
        "Ljava/lang/Object;",
        "Lscala/collection/immutable/List<",
        "Ljava/lang/String;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParHashMap;


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

    .line 122
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$3;->$outer:Lscala/collection/parallel/mutable/ParHashMap;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$3;->apply(I)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$3;->$outer:Lscala/collection/parallel/mutable/ParHashMap;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->scala$collection$parallel$mutable$ParHashMap$$checkEntry(I)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method
