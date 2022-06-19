.class final Lcom/facebook/a/b/b$1;
.super Ljava/lang/Object;
.source "CodelessManager.java"

# interfaces
.implements Lcom/facebook/a/b/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/b;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/l;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/a/b/b$1;->a:Lcom/facebook/internal/l;

    iput-object p2, p0, Lcom/facebook/a/b/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/facebook/a/b/b$1;->a:Lcom/facebook/internal/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/a/b/b$1;->a:Lcom/facebook/internal/l;

    .line 87
    invoke-virtual {v0}, Lcom/facebook/internal/l;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 88
    :goto_0
    invoke-static {}, Lcom/facebook/j;->q()Z

    move-result v3

    if-nez v3, :cond_2

    .line 90
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/facebook/a/b/b$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/a/b/b;->a(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 87
    goto :goto_0

    :cond_2
    move v2, v1

    .line 88
    goto :goto_1
.end method
