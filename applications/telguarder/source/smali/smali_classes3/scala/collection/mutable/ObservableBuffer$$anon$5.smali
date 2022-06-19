.class public final Lscala/collection/mutable/ObservableBuffer$$anon$5;
.super Lscala/collection/script/Remove;
.source "ObservableBuffer.scala"

# interfaces
.implements Lscala/collection/mutable/Undoable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ObservableBuffer;->remove(I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/script/Remove<",
        "TA;>;",
        "Lscala/collection/mutable/Undoable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ObservableBuffer;

.field private final n$2:I

.field private final oldelement$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ObservableBuffer;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ObservableBuffer<",
            "TA;>;)V"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ObservableBuffer$$anon$5;->$outer:Lscala/collection/mutable/ObservableBuffer;

    iput-object p2, p0, Lscala/collection/mutable/ObservableBuffer$$anon$5;->oldelement$2:Ljava/lang/Object;

    iput p3, p0, Lscala/collection/mutable/ObservableBuffer$$anon$5;->n$2:I

    new-instance p1, Lscala/collection/script/Index;

    invoke-direct {p1, p3}, Lscala/collection/script/Index;-><init>(I)V

    invoke-direct {p0, p1, p2}, Lscala/collection/script/Remove;-><init>(Lscala/collection/script/Location;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public undo()V
    .locals 6

    .line 64
    iget-object v0, p0, Lscala/collection/mutable/ObservableBuffer$$anon$5;->$outer:Lscala/collection/mutable/ObservableBuffer;

    iget v1, p0, Lscala/collection/mutable/ObservableBuffer$$anon$5;->n$2:I

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lscala/collection/mutable/ObservableBuffer$$anon$5;->oldelement$2:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/ObservableBuffer;->insert(ILscala/collection/Seq;)V

    return-void
.end method
