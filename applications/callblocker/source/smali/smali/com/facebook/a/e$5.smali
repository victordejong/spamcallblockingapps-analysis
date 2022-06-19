.class final Lcom/facebook/a/e$5;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Lcom/facebook/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/e;->a(Lcom/facebook/a/a;Lcom/facebook/a/o;ZLcom/facebook/a/l;)Lcom/facebook/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/a;

.field final synthetic b:Lcom/facebook/k;

.field final synthetic c:Lcom/facebook/a/o;

.field final synthetic d:Lcom/facebook/a/l;


# direct methods
.method constructor <init>(Lcom/facebook/a/a;Lcom/facebook/k;Lcom/facebook/a/o;Lcom/facebook/a/l;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/facebook/a/e$5;->a:Lcom/facebook/a/a;

    iput-object p2, p0, Lcom/facebook/a/e$5;->b:Lcom/facebook/k;

    iput-object p3, p0, Lcom/facebook/a/e$5;->c:Lcom/facebook/a/o;

    iput-object p4, p0, Lcom/facebook/a/e$5;->d:Lcom/facebook/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/n;)V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/a/e$5;->a:Lcom/facebook/a/a;

    iget-object v1, p0, Lcom/facebook/a/e$5;->b:Lcom/facebook/k;

    iget-object v2, p0, Lcom/facebook/a/e$5;->c:Lcom/facebook/a/o;

    iget-object v3, p0, Lcom/facebook/a/e$5;->d:Lcom/facebook/a/l;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/a/e;->a(Lcom/facebook/a/a;Lcom/facebook/k;Lcom/facebook/n;Lcom/facebook/a/o;Lcom/facebook/a/l;)V

    .line 251
    return-void
.end method
