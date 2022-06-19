.class public final Lscala/collection/immutable/WrappedString$$anonfun$newBuilder$1;
.super Lscala/runtime/AbstractFunction1;
.source "WrappedString.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/WrappedString$;->newBuilder()Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Lscala/collection/immutable/WrappedString;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString$$anonfun$newBuilder$1;->apply(Ljava/lang/String;)Lscala/collection/immutable/WrappedString;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)Lscala/collection/immutable/WrappedString;
    .locals 1

    .line 63
    new-instance v0, Lscala/collection/immutable/WrappedString;

    invoke-direct {v0, p1}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
