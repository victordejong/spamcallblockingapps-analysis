.class public final Lscala/collection/mutable/ObservableBuffer$$anon$3;
.super Lscala/collection/script/Include;
.source "ObservableBuffer.scala"

# interfaces
.implements Lscala/collection/mutable/Undoable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ObservableBuffer;->$plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/script/Include<",
        "TA;>;",
        "Lscala/collection/mutable/Undoable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ObservableBuffer;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ObservableBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ObservableBuffer<",
            "TA;>;)V"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ObservableBuffer$$anon$3;->$outer:Lscala/collection/mutable/ObservableBuffer;

    sget-object p1, Lscala/collection/script/Start$;->MODULE$:Lscala/collection/script/Start$;

    invoke-direct {p0, p1, p2}, Lscala/collection/script/Include;-><init>(Lscala/collection/script/Location;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public undo()V
    .locals 2

    .line 47
    iget-object v0, p0, Lscala/collection/mutable/ObservableBuffer$$anon$3;->$outer:Lscala/collection/mutable/ObservableBuffer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lscala/collection/mutable/ObservableBuffer;->trimStart(I)V

    return-void
.end method
