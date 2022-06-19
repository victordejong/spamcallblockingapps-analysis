.class public final Lscala/collection/mutable/ObservableMap$$anon$2;
.super Lscala/collection/script/Update;
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
        "Lscala/collection/script/Update<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;",
        "Lscala/collection/mutable/Undoable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ObservableMap;

.field private final key$1:Ljava/lang/Object;

.field private final x2$1:Lscala/Some;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ObservableMap;Ljava/lang/Object;Ljava/lang/Object;Lscala/Some;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ObservableMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ObservableMap$$anon$2;->$outer:Lscala/collection/mutable/ObservableMap;

    iput-object p2, p0, Lscala/collection/mutable/ObservableMap$$anon$2;->key$1:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/mutable/ObservableMap$$anon$2;->x2$1:Lscala/Some;

    new-instance p1, Lscala/Tuple2;

    invoke-direct {p1, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lscala/collection/script/Update;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public undo()V
    .locals 4

    .line 46
    iget-object v0, p0, Lscala/collection/mutable/ObservableMap$$anon$2;->$outer:Lscala/collection/mutable/ObservableMap;

    new-instance v1, Lscala/Tuple2;

    iget-object v2, p0, Lscala/collection/mutable/ObservableMap$$anon$2;->key$1:Ljava/lang/Object;

    .line 37
    iget-object v3, p0, Lscala/collection/mutable/ObservableMap$$anon$2;->x2$1:Lscala/Some;

    .line 46
    invoke-virtual {v3}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/ObservableMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/ObservableMap;

    return-void
.end method
