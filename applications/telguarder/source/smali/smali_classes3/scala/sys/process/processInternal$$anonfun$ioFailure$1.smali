.class public final Lscala/sys/process/processInternal$$anonfun$ioFailure$1;
.super Lscala/runtime/AbstractPartialFunction;
.source "package.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/processInternal$;->ioFailure(Lscala/Function1;)Lscala/PartialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "Ljava/lang/Throwable;",
        "TT;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final handler$2:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lscala/sys/process/processInternal$$anonfun$ioFailure$1;->handler$2:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 242
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lscala/sys/process/processInternal$$anonfun$ioFailure$1;->applyOrElse(Ljava/lang/Throwable;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final applyOrElse(Ljava/lang/Throwable;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Throwable;",
            "B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1<",
            "TA1;TB1;>;)TB1;"
        }
    .end annotation

    .line 242
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/IOException;

    iget-object p2, p0, Lscala/sys/process/processInternal$$anonfun$ioFailure$1;->handler$2:Lscala/Function1;

    :cond_0
    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 242
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lscala/sys/process/processInternal$$anonfun$ioFailure$1;->isDefinedAt(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final isDefinedAt(Ljava/lang/Throwable;)Z
    .locals 0

    .line 242
    instance-of p1, p1, Ljava/io/IOException;

    return p1
.end method
