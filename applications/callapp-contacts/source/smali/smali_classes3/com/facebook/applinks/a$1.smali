.class final Lcom/facebook/applinks/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/applinks/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/applinks/a$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/a$a;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/facebook/applinks/a$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/applinks/a$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/applinks/a$1;->c:Lcom/facebook/applinks/a$a;

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

    .line 143
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/applinks/a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/applinks/a$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/applinks/a$1;->c:Lcom/facebook/applinks/a$a;

    invoke-static {v0, v1, v2}, Lcom/facebook/applinks/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 145
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
