.class public final Lscala/collection/immutable/LongMap$$anonfun$unionWith$2;
.super Lscala/runtime/AbstractFunction2;
.source "LongMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/LongMap;->unionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TT;TS;TS;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$1:Lscala/Function3;

.field private final x8$1:Lscala/collection/immutable/LongMap$Tip;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/LongMap;Lscala/Function3;Lscala/collection/immutable/LongMap$Tip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 368
    iput-object p2, p0, Lscala/collection/immutable/LongMap$$anonfun$unionWith$2;->f$1:Lscala/Function3;

    iput-object p3, p0, Lscala/collection/immutable/LongMap$$anonfun$unionWith$2;->x8$1:Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TS;)TS;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lscala/collection/immutable/LongMap$$anonfun$unionWith$2;->f$1:Lscala/Function3;

    .line 352
    iget-object v1, p0, Lscala/collection/immutable/LongMap$$anonfun$unionWith$2;->x8$1:Lscala/collection/immutable/LongMap$Tip;

    .line 368
    invoke-virtual {v1}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lscala/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
