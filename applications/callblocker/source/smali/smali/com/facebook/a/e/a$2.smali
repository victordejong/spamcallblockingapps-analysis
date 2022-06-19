.class Lcom/facebook/a/e/a$2;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/e/a;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/facebook/a/e/a;


# direct methods
.method constructor <init>(Lcom/facebook/a/e/a;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/a/e/a$2;->b:Lcom/facebook/a/e/a;

    iput-object p2, p0, Lcom/facebook/a/e/a$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/a/e/a$2;->b:Lcom/facebook/a/e/a;

    invoke-static {v0}, Lcom/facebook/a/e/a;->a(Lcom/facebook/a/e/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/facebook/a/e/a$2;->b:Lcom/facebook/a/e/a;

    iget-object v1, p0, Lcom/facebook/a/e/a$2;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/facebook/a/e/a;->a(Lcom/facebook/a/e/a;Ljava/lang/Runnable;)V

    .line 122
    :cond_0
    return-void
.end method
