.class final Lcom/facebook/internal/j$1;
.super Ljava/lang/Object;
.source "FeatureManager.java"

# interfaces
.implements Lcom/facebook/internal/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/j$a;

.field final synthetic b:Lcom/facebook/internal/j$b;


# direct methods
.method constructor <init>(Lcom/facebook/internal/j$a;Lcom/facebook/internal/j$b;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/facebook/internal/j$1;->a:Lcom/facebook/internal/j$a;

    iput-object p2, p0, Lcom/facebook/internal/j$1;->b:Lcom/facebook/internal/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/internal/j$1;->a:Lcom/facebook/internal/j$a;

    iget-object v1, p0, Lcom/facebook/internal/j$1;->b:Lcom/facebook/internal/j$b;

    invoke-static {v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/j$a;->a(Z)V

    .line 40
    return-void
.end method
