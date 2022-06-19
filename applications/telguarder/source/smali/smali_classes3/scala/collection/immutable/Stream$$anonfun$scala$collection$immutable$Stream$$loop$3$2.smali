.class public final Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$loop$3(ILscala/collection/immutable/Stream;Ljava/lang/Object;)Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/immutable/Stream<",
        "TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/Stream;

.field private final elem$1:Ljava/lang/Object;

.field private final len$1:I

.field private final these$1:Lscala/collection/immutable/Stream;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Ljava/lang/Object;ILscala/collection/immutable/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream<",
            "TA;>;)V"
        }
    .end annotation

    .line 1022
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;->$outer:Lscala/collection/immutable/Stream;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;->elem$1:Ljava/lang/Object;

    iput p3, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;->len$1:I

    iput-object p4, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;->these$1:Lscala/collection/immutable/Stream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 1022
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TB;>;"
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;->$outer:Lscala/collection/immutable/Stream;

    iget v1, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;->len$1:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;->these$1:Lscala/collection/immutable/Stream;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/Stream;

    iget-object v3, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;->elem$1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$loop$3(ILscala/collection/immutable/Stream;Ljava/lang/Object;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
