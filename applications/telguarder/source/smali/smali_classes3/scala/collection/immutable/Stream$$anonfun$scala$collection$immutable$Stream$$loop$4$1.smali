.class public final Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream$;->scala$collection$immutable$Stream$$loop$4(IILscala/Function1;)Lscala/collection/immutable/Stream;
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
.field private final f$7:Lscala/Function1;

.field private final i$1:I

.field private final n$3:I


# direct methods
.method public constructor <init>(ILscala/Function1;I)V
    .locals 0

    .line 1286
    iput p1, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1;->n$3:I

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1;->f$7:Lscala/Function1;

    iput p3, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1;->i$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 1286
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1;->apply()Lscala/collection/immutable/Stream;

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

    .line 1286
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    iget v1, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1;->i$1:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1;->n$3:I

    iget-object v3, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1;->f$7:Lscala/Function1;

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/Stream$;->scala$collection$immutable$Stream$$loop$4(IILscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
