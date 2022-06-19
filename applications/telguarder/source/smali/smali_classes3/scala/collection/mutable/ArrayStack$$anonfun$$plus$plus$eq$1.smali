.class public final Lscala/collection/mutable/ArrayStack$$anonfun$$plus$plus$eq$1;
.super Lscala/runtime/AbstractFunction1;
.source "ArrayStack.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ArrayStack;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT;",
        "Lscala/collection/mutable/ArrayStack<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ArrayStack;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArrayStack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayStack<",
            "TT;>;)V"
        }
    .end annotation

    .line 160
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ArrayStack$$anonfun$$plus$plus$eq$1;->$outer:Lscala/collection/mutable/ArrayStack;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayStack$$anonfun$$plus$plus$eq$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/ArrayStack;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/ArrayStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/mutable/ArrayStack<",
            "TT;>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lscala/collection/mutable/ArrayStack$$anonfun$$plus$plus$eq$1;->$outer:Lscala/collection/mutable/ArrayStack;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayStack;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayStack;

    move-result-object p1

    return-object p1
.end method
