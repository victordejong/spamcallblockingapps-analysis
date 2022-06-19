.class public Lev$h0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev$h0;-><init>(Ljava/util/concurrent/Executor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lev$h0;


# direct methods
.method public constructor <init>(Lev$h0;)V
    .locals 0

    iput-object p1, p0, Lev$h0$a;->a:Lev$h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lev$h0$a;->a:Lev$h0;

    invoke-virtual {v0}, Lwv;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lev$h0$a;->a:Lev$h0;

    iget-boolean v1, v0, Lev$h0;->k:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lev$h0;->r()V

    :cond_0
    return-void
.end method
