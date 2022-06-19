.class public final Lscala/collection/mutable/ObservableBuffer$$anonfun$$plus$plus$eq$1;
.super Lscala/runtime/AbstractFunction1;
.source "ObservableBuffer.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ObservableBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ObservableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/collection/mutable/ObservableBuffer<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ObservableBuffer;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ObservableBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ObservableBuffer<",
            "TA;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ObservableBuffer$$anonfun$$plus$plus$eq$1;->$outer:Lscala/collection/mutable/ObservableBuffer;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ObservableBuffer$$anonfun$$plus$plus$eq$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ObservableBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lscala/collection/mutable/ObservableBuffer$$anonfun$$plus$plus$eq$1;->$outer:Lscala/collection/mutable/ObservableBuffer;

    invoke-interface {v0, p1}, Lscala/collection/mutable/ObservableBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;

    move-result-object p1

    return-object p1
.end method
