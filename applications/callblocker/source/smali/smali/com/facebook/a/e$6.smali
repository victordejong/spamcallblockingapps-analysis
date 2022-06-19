.class final Lcom/facebook/a/e$6;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/e;->b(Lcom/facebook/a/a;Lcom/facebook/k;Lcom/facebook/n;Lcom/facebook/a/o;Lcom/facebook/a/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/a;

.field final synthetic b:Lcom/facebook/a/o;


# direct methods
.method constructor <init>(Lcom/facebook/a/a;Lcom/facebook/a/o;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/facebook/a/e$6;->a:Lcom/facebook/a/a;

    iput-object p2, p0, Lcom/facebook/a/e$6;->b:Lcom/facebook/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/facebook/a/e$6;->a:Lcom/facebook/a/a;

    iget-object v1, p0, Lcom/facebook/a/e$6;->b:Lcom/facebook/a/o;

    invoke-static {v0, v1}, Lcom/facebook/a/f;->a(Lcom/facebook/a/a;Lcom/facebook/a/o;)V

    .line 311
    return-void
.end method
