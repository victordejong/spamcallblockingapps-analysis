.class public final Lscala/collection/mutable/ObservableMap$$anon$4;
.super Lscala/collection/script/Reset;
.source "ObservableMap.scala"

# interfaces
.implements Lscala/collection/mutable/Undoable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ObservableMap;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/script/Reset<",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/collection/mutable/Undoable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ObservableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ObservableMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lscala/collection/script/Reset;-><init>()V

    return-void
.end method


# virtual methods
.method public undo()V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot undo"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
