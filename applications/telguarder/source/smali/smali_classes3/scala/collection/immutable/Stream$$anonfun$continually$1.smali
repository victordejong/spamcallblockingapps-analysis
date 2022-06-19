.class public final Lscala/collection/immutable/Stream$$anonfun$continually$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream$;->continually(Lscala/Function0;)Lscala/collection/immutable/Stream;
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
.field private final elem$3:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/Function0;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$continually$1;->elem$3:Lscala/Function0;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 1279
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$continually$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1279
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$continually$1;->elem$3:Lscala/Function0;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream$;->continually(Lscala/Function0;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
