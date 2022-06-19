.class public final Lscala/Predef$$anon$3;
.super Ljava/lang/Object;
.source "Predef.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply()Lscala/collection/mutable/Builder;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lscala/Predef$$anon$3;->apply()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 298
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/Predef$$anon$3;->apply(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply()Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 300
    sget-object v0, Lscala/collection/mutable/StringBuilder$;->MODULE$:Lscala/collection/mutable/StringBuilder$;

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder$;->newBuilder()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 299
    invoke-virtual {p0}, Lscala/Predef$$anon$3;->apply()Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method
