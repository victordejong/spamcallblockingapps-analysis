.class final Lcom/facebook/share/internal/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a$c;Lcom/facebook/share/internal/a;Lcom/facebook/FacebookException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/a$c;

.field final synthetic b:Lcom/facebook/share/internal/a;

.field final synthetic c:Lcom/facebook/FacebookException;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a$c;Lcom/facebook/share/internal/a;Lcom/facebook/FacebookException;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/facebook/share/internal/a$7;->a:Lcom/facebook/share/internal/a$c;

    iput-object p2, p0, Lcom/facebook/share/internal/a$7;->b:Lcom/facebook/share/internal/a;

    iput-object p3, p0, Lcom/facebook/share/internal/a$7;->c:Lcom/facebook/FacebookException;

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

    .line 332
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/share/internal/a$7;->a:Lcom/facebook/share/internal/a$c;

    iget-object v1, p0, Lcom/facebook/share/internal/a$7;->b:Lcom/facebook/share/internal/a;

    iget-object v2, p0, Lcom/facebook/share/internal/a$7;->c:Lcom/facebook/FacebookException;

    invoke-interface {v0, v1, v2}, Lcom/facebook/share/internal/a$c;->a(Lcom/facebook/share/internal/a;Lcom/facebook/FacebookException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 333
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
