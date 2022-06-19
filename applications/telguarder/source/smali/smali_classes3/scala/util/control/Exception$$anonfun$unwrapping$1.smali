.class public final Lscala/util/control/Exception$$anonfun$unwrapping$1;
.super Lscala/runtime/AbstractFunction1;
.source "Exception.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Exception$;->unwrapping(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Throwable;",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final exceptions$3:Lscala/collection/Seq;


# direct methods
.method public constructor <init>(Lscala/collection/Seq;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lscala/util/control/Exception$$anonfun$unwrapping$1;->exceptions$3:Lscala/collection/Seq;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lscala/util/control/Exception$$anonfun$unwrapping$1;->apply(Ljava/lang/Throwable;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method public final apply(Ljava/lang/Throwable;)Lscala/runtime/Nothing$;
    .locals 2

    .line 218
    sget-object v0, Lscala/util/control/Exception$;->MODULE$:Lscala/util/control/Exception$;

    iget-object v1, p0, Lscala/util/control/Exception$$anonfun$unwrapping$1;->exceptions$3:Lscala/collection/Seq;

    invoke-virtual {v0, p1, v1}, Lscala/util/control/Exception$;->scala$util$control$Exception$$unwrap$1(Ljava/lang/Throwable;Lscala/collection/Seq;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
