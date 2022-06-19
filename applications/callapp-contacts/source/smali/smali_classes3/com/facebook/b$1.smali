.class final Lcom/facebook/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/b;->a(Lcom/facebook/AccessToken$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/AccessToken$b;

.field final synthetic b:Lcom/facebook/b;


# direct methods
.method constructor <init>(Lcom/facebook/b;Lcom/facebook/AccessToken$b;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/facebook/b$1;->b:Lcom/facebook/b;

    iput-object p2, p0, Lcom/facebook/b$1;->a:Lcom/facebook/AccessToken$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/b$1;->b:Lcom/facebook/b;

    iget-object v1, p0, Lcom/facebook/b$1;->a:Lcom/facebook/AccessToken$b;

    invoke-static {v0, v1}, Lcom/facebook/b;->a(Lcom/facebook/b;Lcom/facebook/AccessToken$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 225
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
