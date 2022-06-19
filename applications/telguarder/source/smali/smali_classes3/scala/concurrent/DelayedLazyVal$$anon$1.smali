.class public final Lscala/concurrent/DelayedLazyVal$$anon$1;
.super Ljava/lang/Object;
.source "DelayedLazyVal.scala"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/DelayedLazyVal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/concurrent/DelayedLazyVal;


# direct methods
.method public constructor <init>(Lscala/concurrent/DelayedLazyVal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/DelayedLazyVal<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/DelayedLazyVal$$anon$1;->$outer:Lscala/concurrent/DelayedLazyVal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lscala/concurrent/DelayedLazyVal$$anon$1;->$outer:Lscala/concurrent/DelayedLazyVal;

    iget-object v0, v0, Lscala/concurrent/DelayedLazyVal;->scala$concurrent$DelayedLazyVal$$body:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    iget-object v0, p0, Lscala/concurrent/DelayedLazyVal$$anon$1;->$outer:Lscala/concurrent/DelayedLazyVal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lscala/concurrent/DelayedLazyVal;->scala$concurrent$DelayedLazyVal$$_isDone:Z

    return-void
.end method
