.class public final Lscala/concurrent/impl/ExecutionContextImpl$$anon$3;
.super Ljava/lang/Object;
.source "ExecutionContextImpl.scala"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/impl/ExecutionContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/concurrent/impl/ExecutionContextImpl;


# direct methods
.method public constructor <init>(Lscala/concurrent/impl/ExecutionContextImpl;)V
    .locals 0

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/impl/ExecutionContextImpl$$anon$3;->$outer:Lscala/concurrent/impl/ExecutionContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 24
    iget-object p1, p0, Lscala/concurrent/impl/ExecutionContextImpl$$anon$3;->$outer:Lscala/concurrent/impl/ExecutionContextImpl;

    iget-object p1, p1, Lscala/concurrent/impl/ExecutionContextImpl;->scala$concurrent$impl$ExecutionContextImpl$$reporter:Lscala/Function1;

    invoke-interface {p1, p2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
