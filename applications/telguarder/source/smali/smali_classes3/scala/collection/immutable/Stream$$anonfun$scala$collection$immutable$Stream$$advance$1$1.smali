.class public final Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$advance$1(Lscala/collection/immutable/List;Lscala/collection/immutable/List;Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/immutable/Stream<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/Stream;

.field private final rest$2:Lscala/collection/immutable/Stream;

.field private final stub0$1:Lscala/collection/immutable/List;

.field private final stub1$1:Lscala/collection/immutable/List;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Lscala/collection/immutable/List;Lscala/collection/immutable/List;Lscala/collection/immutable/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream<",
            "TA;>;)V"
        }
    .end annotation

    .line 922
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;->$outer:Lscala/collection/immutable/Stream;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;->stub0$1:Lscala/collection/immutable/List;

    iput-object p3, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;->stub1$1:Lscala/collection/immutable/List;

    iput-object p4, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;->rest$2:Lscala/collection/immutable/Stream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 922
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;->$outer:Lscala/collection/immutable/Stream;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;->stub0$1:Lscala/collection/immutable/List;

    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;->rest$2:Lscala/collection/immutable/Stream;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;->stub1$1:Lscala/collection/immutable/List;

    invoke-virtual {v3, v2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;->rest$2:Lscala/collection/immutable/Stream;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/Stream;

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$advance$1(Lscala/collection/immutable/List;Lscala/collection/immutable/List;Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
