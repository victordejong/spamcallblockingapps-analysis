.class public final Lscala/collection/mutable/ObservableSet$$anon$2;
.super Lscala/collection/script/Remove;
.source "ObservableSet.scala"

# interfaces
.implements Lscala/collection/mutable/Undoable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ObservableSet;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableSet;
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
.field private final synthetic $outer:Lscala/collection/mutable/ObservableSet;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ObservableSet;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ObservableSet<",
            "TA;>;)V"
        }
    .end annotation

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ObservableSet$$anon$2;->$outer:Lscala/collection/mutable/ObservableSet;

    invoke-direct {p0, p2}, Lscala/collection/script/Remove;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public undo()V
    .locals 2

    .line 43
    iget-object v0, p0, Lscala/collection/mutable/ObservableSet$$anon$2;->$outer:Lscala/collection/mutable/ObservableSet;

    invoke-virtual {p0}, Lscala/collection/mutable/ObservableSet$$anon$2;->elem()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/ObservableSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableSet;

    return-void
.end method
