.class public final Lscala/collection/mutable/ObservableBuffer$$anon$1;
.super Lscala/collection/script/Script;
.source "ObservableBuffer.scala"

# interfaces
.implements Lscala/collection/mutable/Undoable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ObservableBuffer;->insertAll(ILscala/collection/Traversable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/script/Script<",
        "TA;>;",
        "Lscala/collection/mutable/Undoable;"
    }
.end annotation


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

    .line 79
    invoke-direct {p0}, Lscala/collection/script/Script;-><init>()V

    return-void
.end method


# virtual methods
.method public undo()V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot undo"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
