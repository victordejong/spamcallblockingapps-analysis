.class final Lcom/facebook/appevents/d/a$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/d/a$2;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/d/a$2;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/d/a$2;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/facebook/appevents/d/a$2$2;->a:Lcom/facebook/appevents/d/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    .line 158
    invoke-static {}, Lcom/facebook/appevents/d/a;->b()Ljava/lang/Object;

    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Lcom/facebook/appevents/d/b;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-static {}, Lcom/facebook/appevents/d/a;->b()Ljava/lang/Object;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lcom/facebook/appevents/d/b;->c(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    .line 164
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/d/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 165
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
