.class public final Lscala/sys/process/ProcessBuilderImpl$OStreamBuilder$$anonfun$$lessinit$greater$4;
.super Lscala/runtime/AbstractFunction1;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessBuilderImpl$OStreamBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/Function0;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/sys/process/ProcessIO;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final stream$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Lscala/Function0;)V
    .locals 0

    .line 38
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$OStreamBuilder$$anonfun$$lessinit$greater$4;->stream$1:Lscala/Function0;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lscala/sys/process/ProcessIO;

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$OStreamBuilder$$anonfun$$lessinit$greater$4;->apply(Lscala/sys/process/ProcessIO;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/sys/process/ProcessIO;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Lscala/sys/process/ProcessIO;->writeInput()Lscala/Function1;

    move-result-object p1

    sget-object v0, Lscala/sys/process/BasicIO$Uncloseable$;->MODULE$:Lscala/sys/process/BasicIO$Uncloseable$;

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$OStreamBuilder$$anonfun$$lessinit$greater$4;->stream$1:Lscala/Function0;

    invoke-interface {v1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lscala/sys/process/BasicIO$Uncloseable$;->protect(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
