.class public final Lscala/collection/mutable/ObservableMap$$anon$1;
.super Lscala/collection/script/Include;
.source "ObservableMap.scala"

# interfaces
.implements Lscala/collection/mutable/Undoable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ObservableMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/ObservableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/script/Include<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;",
        "Lscala/collection/mutable/Undoable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ObservableMap;

.field private final key$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ObservableMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ObservableMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ObservableMap$$anon$1;->$outer:Lscala/collection/mutable/ObservableMap;

    iput-object p2, p0, Lscala/collection/mutable/ObservableMap$$anon$1;->key$1:Ljava/lang/Object;

    new-instance p1, Lscala/Tuple2;

    invoke-direct {p1, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lscala/collection/script/Include;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public undo()V
    .locals 2

    .line 41
    iget-object v0, p0, Lscala/collection/mutable/ObservableMap$$anon$1;->$outer:Lscala/collection/mutable/ObservableMap;

    iget-object v1, p0, Lscala/collection/mutable/ObservableMap$$anon$1;->key$1:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/collection/mutable/ObservableMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableMap;

    return-void
.end method
