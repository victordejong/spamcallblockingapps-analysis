.class public final Lscala/collection/mutable/WrappedArray$$anon$1$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction1;
.source "WrappedArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/WrappedArray$$anon$1;->apply()Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/WrappedArray<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/mutable/WrappedArray$$anon$1;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$$anon$1$$anonfun$apply$2;->apply(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;"
        }
    .end annotation

    .line 119
    sget-object v0, Lscala/collection/mutable/WrappedArray$;->MODULE$:Lscala/collection/mutable/WrappedArray$;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/WrappedArray$;->make(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method
