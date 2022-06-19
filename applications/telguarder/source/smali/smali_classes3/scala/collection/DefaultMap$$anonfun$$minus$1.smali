.class public final Lscala/collection/DefaultMap$$anonfun$$minus$1;
.super Lscala/runtime/AbstractFunction1;
.source "DefaultMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/DefaultMap;->$minus(Ljava/lang/Object;)Lscala/collection/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "TA;TB;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final key$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/DefaultMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/DefaultMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 41
    iput-object p2, p0, Lscala/collection/DefaultMap$$anonfun$$minus$1;->key$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/DefaultMap$$anonfun$$minus$1;->apply(Lscala/Tuple2;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)Z"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lscala/collection/DefaultMap$$anonfun$$minus$1;->key$1:Ljava/lang/Object;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    instance-of v2, v0, Ljava/lang/Character;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    xor-int/2addr p1, v1

    return p1
.end method
