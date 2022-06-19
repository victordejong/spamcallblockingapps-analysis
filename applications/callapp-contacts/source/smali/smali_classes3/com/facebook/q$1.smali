.class final Lcom/facebook/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/q;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/i$b;

.field final synthetic b:Lcom/facebook/q;


# direct methods
.method constructor <init>(Lcom/facebook/q;Lcom/facebook/i$b;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/facebook/q$1;->b:Lcom/facebook/q;

    iput-object p2, p0, Lcom/facebook/q$1;->a:Lcom/facebook/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/q$1;->b:Lcom/facebook/q;

    invoke-static {v0}, Lcom/facebook/q;->a(Lcom/facebook/q;)Lcom/facebook/i;

    iget-object v0, p0, Lcom/facebook/q$1;->b:Lcom/facebook/q;

    invoke-static {v0}, Lcom/facebook/q;->b(Lcom/facebook/q;)J

    iget-object v0, p0, Lcom/facebook/q$1;->b:Lcom/facebook/q;

    invoke-static {v0}, Lcom/facebook/q;->c(Lcom/facebook/q;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 79
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
