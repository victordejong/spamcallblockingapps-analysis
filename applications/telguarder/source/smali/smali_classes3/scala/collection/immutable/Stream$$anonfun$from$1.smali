.class public final Lscala/collection/immutable/Stream$$anonfun$from$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream$;->from(II)Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/immutable/Stream<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final start$1:I

.field private final step$1:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1262
    iput p1, p0, Lscala/collection/immutable/Stream$$anonfun$from$1;->start$1:I

    iput p2, p0, Lscala/collection/immutable/Stream$$anonfun$from$1;->step$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 1262
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$from$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1262
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    iget v1, p0, Lscala/collection/immutable/Stream$$anonfun$from$1;->start$1:I

    iget v2, p0, Lscala/collection/immutable/Stream$$anonfun$from$1;->step$1:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/Stream$;->from(II)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
