.class final Lcom/facebook/appevents/b/d$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/b/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/facebook/appevents/b/d$a;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/b/d$a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/facebook/appevents/b/d$a$1;->c:Lcom/facebook/appevents/b/d$a;

    iput-object p2, p0, Lcom/facebook/appevents/b/d$a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/b/d$a$1;->b:Landroid/os/Bundle;

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

    .line 100
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/facebook/appevents/g;->a(Landroid/content/Context;)Lcom/facebook/appevents/g;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/facebook/appevents/b/d$a$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/b/d$a$1;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/g;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 103
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
