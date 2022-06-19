.class public final Lscala/collection/immutable/IntMap$$anonfun$intersection$1;
.super Lscala/runtime/AbstractFunction3;
.source "IntMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/IntMap;->intersection(Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction3<",
        "Ljava/lang/Object;",
        "TT;TR;TT;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/immutable/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 425
    invoke-direct {p0}, Lscala/runtime/AbstractFunction3;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;TR;)TT;"
        }
    .end annotation

    return-object p2
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 425
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/IntMap$$anonfun$intersection$1;->apply(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
