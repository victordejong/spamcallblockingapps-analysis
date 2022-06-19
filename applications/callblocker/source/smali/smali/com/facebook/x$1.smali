.class Lcom/facebook/x$1;
.super Ljava/lang/Object;
.source "RequestProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/x;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/k$e;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/facebook/x;


# direct methods
.method constructor <init>(Lcom/facebook/x;Lcom/facebook/k$e;JJ)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/x$1;->d:Lcom/facebook/x;

    iput-object p2, p0, Lcom/facebook/x$1;->a:Lcom/facebook/k$e;

    iput-wide p3, p0, Lcom/facebook/x$1;->b:J

    iput-wide p5, p0, Lcom/facebook/x$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/x$1;->a:Lcom/facebook/k$e;

    iget-wide v2, p0, Lcom/facebook/x$1;->b:J

    iget-wide v4, p0, Lcom/facebook/x$1;->c:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/facebook/k$e;->a(JJ)V

    .line 76
    return-void
.end method
