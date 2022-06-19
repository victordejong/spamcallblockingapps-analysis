.class public Lscala/collection/immutable/Stream$StreamCanBuildFrom;
.super Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamCanBuildFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/generic/GenTraversableFactory<",
        "Lscala/collection/immutable/Stream;",
        ">.GenericCanBuildFrom<TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1148
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-direct {p0, v0}, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;-><init>(Lscala/collection/generic/GenTraversableFactory;)V

    return-void
.end method
