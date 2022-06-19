.class public final Lscala/collection/package$$anon$1;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/package$;->breakOut(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "TFrom;TT;TTo;>;"
    }
.end annotation


# instance fields
.field private final b$1:Lscala/collection/generic/CanBuildFrom;


# direct methods
.method public constructor <init>(Lscala/collection/generic/CanBuildFrom;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lscala/collection/package$$anon$1;->b$1:Lscala/collection/generic/CanBuildFrom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TT;TTo;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lscala/collection/package$$anon$1;->b$1:Lscala/collection/generic/CanBuildFrom;

    invoke-interface {v0}, Lscala/collection/generic/CanBuildFrom;->apply()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFrom;)",
            "Lscala/collection/mutable/Builder<",
            "TT;TTo;>;"
        }
    .end annotation

    .line 87
    iget-object p1, p0, Lscala/collection/package$$anon$1;->b$1:Lscala/collection/generic/CanBuildFrom;

    invoke-interface {p1}, Lscala/collection/generic/CanBuildFrom;->apply()Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
