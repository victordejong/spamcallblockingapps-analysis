.class public final Lscala/collection/immutable/IntMap$$anonfun$unionWith$1;
.super Lscala/runtime/AbstractFunction2;
.source "IntMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/IntMap;->unionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TS;TS;TS;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$1:Lscala/Function3;

.field private final x6$1:Lscala/collection/immutable/IntMap$Tip;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/IntMap;Lscala/Function3;Lscala/collection/immutable/IntMap$Tip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 376
    iput-object p2, p0, Lscala/collection/immutable/IntMap$$anonfun$unionWith$1;->f$1:Lscala/Function3;

    iput-object p3, p0, Lscala/collection/immutable/IntMap$$anonfun$unionWith$1;->x6$1:Lscala/collection/immutable/IntMap$Tip;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)TS;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lscala/collection/immutable/IntMap$$anonfun$unionWith$1;->f$1:Lscala/Function3;

    .line 361
    iget-object v1, p0, Lscala/collection/immutable/IntMap$$anonfun$unionWith$1;->x6$1:Lscala/collection/immutable/IntMap$Tip;

    .line 376
    invoke-virtual {v1}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p1}, Lscala/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
