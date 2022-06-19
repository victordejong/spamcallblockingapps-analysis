.class final Lcom/facebook/k$1;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/k;->a(Lcom/facebook/a;Lcom/facebook/k$c;)Lcom/facebook/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/k$c;


# direct methods
.method constructor <init>(Lcom/facebook/k$c;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/facebook/k$1;->a:Lcom/facebook/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/n;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/k$1;->a:Lcom/facebook/k$c;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/facebook/k$1;->a:Lcom/facebook/k$c;

    invoke-virtual {p1}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/k$c;->a(Lorg/json/JSONObject;Lcom/facebook/n;)V

    .line 319
    :cond_0
    return-void
.end method
