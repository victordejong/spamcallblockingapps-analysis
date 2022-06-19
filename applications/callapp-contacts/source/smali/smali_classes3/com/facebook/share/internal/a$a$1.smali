.class final Lcom/facebook/share/internal/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a$a;->a(Lcom/facebook/GraphRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/a$a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a$a;)V
    .locals 0

    .line 1563
    iput-object p1, p0, Lcom/facebook/share/internal/a$a$1;->a:Lcom/facebook/share/internal/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/j;)V
    .locals 2

    .line 1566
    iget-object v0, p0, Lcom/facebook/share/internal/a$a$1;->a:Lcom/facebook/share/internal/a$a;

    .line 2111
    iget-object v1, p1, Lcom/facebook/j;->b:Lcom/facebook/FacebookRequestError;

    .line 1566
    iput-object v1, v0, Lcom/facebook/share/internal/a$a;->c:Lcom/facebook/FacebookRequestError;

    .line 1567
    iget-object v0, p0, Lcom/facebook/share/internal/a$a$1;->a:Lcom/facebook/share/internal/a$a;

    iget-object v0, v0, Lcom/facebook/share/internal/a$a;->c:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_0

    .line 1568
    iget-object p1, p0, Lcom/facebook/share/internal/a$a$1;->a:Lcom/facebook/share/internal/a$a;

    iget-object v0, p1, Lcom/facebook/share/internal/a$a;->c:Lcom/facebook/FacebookRequestError;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/a$a;->a(Lcom/facebook/FacebookRequestError;)V

    return-void

    .line 1570
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a$a$1;->a:Lcom/facebook/share/internal/a$a;

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/a$a;->a(Lcom/facebook/j;)V

    return-void
.end method
