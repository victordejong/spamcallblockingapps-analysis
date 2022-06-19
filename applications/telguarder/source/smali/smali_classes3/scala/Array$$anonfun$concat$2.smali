.class public final Lscala/Array$$anonfun$concat$2;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->concat(Lscala/collection/Seq;Lscala/reflect/ClassTag;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/ArrayBuilder<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final b$1:Lscala/collection/mutable/ArrayBuilder;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArrayBuilder;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lscala/Array$$anonfun$concat$2;->b$1:Lscala/collection/mutable/ArrayBuilder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$concat$2;->apply(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/ArrayBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lscala/Array$$anonfun$concat$2;->b$1:Lscala/collection/mutable/ArrayBuilder;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1, p1}, Lscala/Predef$;->genericArrayOps(Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayBuilder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/ArrayBuilder;

    return-object p1
.end method
