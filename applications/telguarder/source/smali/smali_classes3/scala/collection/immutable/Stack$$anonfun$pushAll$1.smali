.class public final Lscala/collection/immutable/Stack$$anonfun$pushAll$1;
.super Lscala/runtime/AbstractFunction2;
.source "Stack.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stack;->pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Stack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/immutable/Stack<",
        "TB;>;TB;",
        "Lscala/collection/immutable/Stack<",
        "TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stack<",
            "TA;>;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    check-cast p1, Lscala/collection/immutable/Stack;

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stack$$anonfun$pushAll$1;->apply(Lscala/collection/immutable/Stack;Ljava/lang/Object;)Lscala/collection/immutable/Stack;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/Stack;Ljava/lang/Object;)Lscala/collection/immutable/Stack;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stack<",
            "TB;>;TB;)",
            "Lscala/collection/immutable/Stack<",
            "TB;>;"
        }
    .end annotation

    .line 93
    invoke-virtual {p1, p2}, Lscala/collection/immutable/Stack;->push(Ljava/lang/Object;)Lscala/collection/immutable/Stack;

    move-result-object p1

    return-object p1
.end method
