.class public final Lscala/collection/immutable/WrappedString$$anon$1;
.super Ljava/lang/Object;
.source "WrappedString.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/WrappedString$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "Lscala/collection/immutable/WrappedString;",
        "Ljava/lang/Object;",
        "Lscala/collection/immutable/WrappedString;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
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
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/WrappedString;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lscala/collection/immutable/WrappedString$;->MODULE$:Lscala/collection/immutable/WrappedString$;

    invoke-virtual {v0}, Lscala/collection/immutable/WrappedString$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 58
    check-cast p1, Lscala/collection/immutable/WrappedString;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString$$anon$1;->apply(Lscala/collection/immutable/WrappedString;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/immutable/WrappedString;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/WrappedString;",
            ")",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/WrappedString;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object p1, Lscala/collection/immutable/WrappedString$;->MODULE$:Lscala/collection/immutable/WrappedString$;

    invoke-virtual {p1}, Lscala/collection/immutable/WrappedString$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
