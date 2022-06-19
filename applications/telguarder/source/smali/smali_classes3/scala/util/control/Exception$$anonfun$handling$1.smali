.class public final Lscala/util/control/Exception$$anonfun$handling$1;
.super Lscala/runtime/AbstractFunction1;
.source "Exception.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Exception$;->handling(Lscala/collection/Seq;)Lscala/util/control/Exception$By;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Function1<",
        "Ljava/lang/Throwable;",
        "TT;>;",
        "Lscala/util/control/Exception$Catch<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final exceptions$2:Lscala/collection/Seq;


# direct methods
.method public constructor <init>(Lscala/collection/Seq;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lscala/util/control/Exception$$anonfun$handling$1;->exceptions$2:Lscala/collection/Seq;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, Lscala/Function1;

    invoke-virtual {p0, p1}, Lscala/util/control/Exception$$anonfun$handling$1;->apply(Lscala/Function1;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Function1;)Lscala/util/control/Exception$Catch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "TT;>;)",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 206
    sget-object v0, Lscala/util/control/Exception$;->MODULE$:Lscala/util/control/Exception$;

    iget-object v1, p0, Lscala/util/control/Exception$$anonfun$handling$1;->exceptions$2:Lscala/collection/Seq;

    invoke-virtual {v0, p1, v1}, Lscala/util/control/Exception$;->scala$util$control$Exception$$fun$1(Lscala/Function1;Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    return-object p1
.end method
