.class public final Lscala/collection/mutable/ObservableBuffer$$anon$4;
.super Lscala/collection/script/Update;
.source "ObservableBuffer.scala"

# interfaces
.implements Lscala/collection/mutable/Undoable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ObservableBuffer;->update(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/script/Update<",
        "TA;>;",
        "Lscala/collection/mutable/Undoable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ObservableBuffer;

.field private final n$1:I

.field private final oldelement$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ObservableBuffer;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ObservableBuffer<",
            "TA;>;)V"
        }
    .end annotation

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ObservableBuffer$$anon$4;->$outer:Lscala/collection/mutable/ObservableBuffer;

    iput-object p2, p0, Lscala/collection/mutable/ObservableBuffer$$anon$4;->oldelement$1:Ljava/lang/Object;

    iput p3, p0, Lscala/collection/mutable/ObservableBuffer$$anon$4;->n$1:I

    new-instance p1, Lscala/collection/script/Index;

    invoke-direct {p1, p3}, Lscala/collection/script/Index;-><init>(I)V

    invoke-direct {p0, p1, p4}, Lscala/collection/script/Update;-><init>(Lscala/collection/script/Location;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public undo()V
    .locals 3

    .line 56
    iget-object v0, p0, Lscala/collection/mutable/ObservableBuffer$$anon$4;->$outer:Lscala/collection/mutable/ObservableBuffer;

    iget v1, p0, Lscala/collection/mutable/ObservableBuffer$$anon$4;->n$1:I

    iget-object v2, p0, Lscala/collection/mutable/ObservableBuffer$$anon$4;->oldelement$1:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/ObservableBuffer;->update(ILjava/lang/Object;)V

    return-void
.end method
