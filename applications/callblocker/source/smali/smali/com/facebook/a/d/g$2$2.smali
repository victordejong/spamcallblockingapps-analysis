.class Lcom/facebook/a/d/g$2$2;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/d/g$2;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/d/g$2;


# direct methods
.method constructor <init>(Lcom/facebook/a/d/g$2;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/facebook/a/d/g$2$2;->a:Lcom/facebook/a/d/g$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    .line 154
    invoke-static {}, Lcom/facebook/a/d/g;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/a/d/h;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-static {}, Lcom/facebook/a/d/g;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/a/d/h;->c(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/facebook/a/d/g;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 160
    return-void
.end method
