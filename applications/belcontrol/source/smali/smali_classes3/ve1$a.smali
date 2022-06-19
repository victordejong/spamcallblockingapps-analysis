.class public Lve1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve1;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lve1;


# direct methods
.method public constructor <init>(Lve1;)V
    .locals 0

    iput-object p1, p0, Lve1$a;->a:Lve1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lve1$a;->a:Lve1;

    iget-object v0, v0, Lte1;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lve1$a;->a:Lve1;

    invoke-virtual {v0}, Lte1;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lve1$a;->a:Lve1;

    invoke-virtual {v0}, Lve1;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lve1$a;->a:Lve1;

    iget-object v0, v0, Lte1;->d:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lve1$a;->a:Lve1;

    :goto_0
    invoke-virtual {v0}, Lte1;->q()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lve1$a;->a:Lve1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lve1$a;->a:Lve1;

    invoke-virtual {v1}, Lte1;->q()V

    invoke-static {v0}, Luf1;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
