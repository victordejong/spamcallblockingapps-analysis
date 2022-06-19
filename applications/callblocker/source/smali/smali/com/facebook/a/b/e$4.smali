.class final Lcom/facebook/a/b/e$4;
.super Ljava/lang/Object;
.source "ViewIndexer.java"

# interfaces
.implements Lcom/facebook/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/e;->a(Ljava/lang/String;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/n;)V
    .locals 3

    .prologue
    .line 261
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    invoke-static {}, Lcom/facebook/a/b/e;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "App index sent to FB!"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method
