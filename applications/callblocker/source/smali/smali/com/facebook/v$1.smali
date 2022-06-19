.class Lcom/facebook/v$1;
.super Ljava/lang/Object;
.source "ProgressOutputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/v;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/m$b;

.field final synthetic b:Lcom/facebook/v;


# direct methods
.method constructor <init>(Lcom/facebook/v;Lcom/facebook/m$b;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/v$1;->b:Lcom/facebook/v;

    iput-object p2, p0, Lcom/facebook/v$1;->a:Lcom/facebook/m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/v$1;->a:Lcom/facebook/m$b;

    iget-object v1, p0, Lcom/facebook/v$1;->b:Lcom/facebook/v;

    .line 80
    invoke-static {v1}, Lcom/facebook/v;->a(Lcom/facebook/v;)Lcom/facebook/m;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/v$1;->b:Lcom/facebook/v;

    .line 81
    invoke-static {v2}, Lcom/facebook/v;->b(Lcom/facebook/v;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/v$1;->b:Lcom/facebook/v;

    .line 82
    invoke-static {v4}, Lcom/facebook/v;->c(Lcom/facebook/v;)J

    move-result-wide v4

    .line 79
    invoke-interface/range {v0 .. v5}, Lcom/facebook/m$b;->a(Lcom/facebook/m;JJ)V

    .line 83
    return-void
.end method
