.class public final Lscala/collection/mutable/Stack$$anonfun$pushAll$1;
.super Lscala/runtime/AbstractFunction1;
.source "Stack.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/Stack;->pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Stack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/collection/mutable/Stack<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/Stack;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Stack<",
            "TA;>;)V"
        }
    .end annotation

    .line 122
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/Stack$$anonfun$pushAll$1;->$outer:Lscala/collection/mutable/Stack;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack$$anonfun$pushAll$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Stack;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lscala/collection/mutable/Stack$$anonfun$pushAll$1;->$outer:Lscala/collection/mutable/Stack;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/Stack;->push(Ljava/lang/Object;)Lscala/collection/mutable/Stack;

    move-result-object p1

    return-object p1
.end method
