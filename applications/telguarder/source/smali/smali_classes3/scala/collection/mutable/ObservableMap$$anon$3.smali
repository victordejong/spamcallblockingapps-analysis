.class public final Lscala/collection/mutable/ObservableMap$$anon$3;
.super Lscala/collection/script/Remove;
.source "ObservableMap.scala"

# interfaces
.implements Lscala/collection/mutable/Undoable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ObservableMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/script/Remove<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;",
        "Lscala/collection/mutable/Undoable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ObservableMap;

.field private final key$2:Ljava/lang/Object;

.field private final x2$2:Lscala/Some;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ObservableMap;Lscala/Some;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ObservableMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ObservableMap$$anon$3;->$outer:Lscala/collection/mutable/ObservableMap;

    iput-object p2, p0, Lscala/collection/mutable/ObservableMap$$anon$3;->x2$2:Lscala/Some;

    iput-object p3, p0, Lscala/collection/mutable/ObservableMap$$anon$3;->key$2:Ljava/lang/Object;

    new-instance p1, Lscala/Tuple2;

    invoke-virtual {p2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lscala/collection/script/Remove;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public undo()V
    .locals 3

    .line 58
    iget-object v0, p0, Lscala/collection/mutable/ObservableMap$$anon$3;->$outer:Lscala/collection/mutable/ObservableMap;

    iget-object v1, p0, Lscala/collection/mutable/ObservableMap$$anon$3;->key$2:Ljava/lang/Object;

    .line 53
    iget-object v2, p0, Lscala/collection/mutable/ObservableMap$$anon$3;->x2$2:Lscala/Some;

    .line 58
    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/ObservableMap;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
