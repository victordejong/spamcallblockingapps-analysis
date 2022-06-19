.class final Lcom/facebook/j$4;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/j;->a(Landroid/content/Context;Lcom/facebook/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/j$a;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/facebook/j$a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/facebook/j$4;->a:Lcom/facebook/j$a;

    iput-object p2, p0, Lcom/facebook/j$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 358
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/c;->c()Z

    .line 359
    invoke-static {}, Lcom/facebook/t;->a()Lcom/facebook/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/t;->c()Z

    .line 360
    invoke-static {}, Lcom/facebook/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/facebook/r;->a()Lcom/facebook/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    invoke-static {}, Lcom/facebook/r;->b()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/facebook/j$4;->a:Lcom/facebook/j$a;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/facebook/j$4;->a:Lcom/facebook/j$a;

    invoke-interface {v0}, Lcom/facebook/j$a;->a()V

    .line 372
    :cond_1
    invoke-static {}, Lcom/facebook/j;->t()Landroid/content/Context;

    move-result-object v0

    .line 373
    invoke-static {}, Lcom/facebook/j;->u()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {v0, v1}, Lcom/facebook/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/facebook/j$4;->b:Landroid/content/Context;

    .line 377
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/facebook/a/g;->a(Landroid/content/Context;)Lcom/facebook/a/g;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/facebook/a/g;->b()V

    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/facebook/j$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
