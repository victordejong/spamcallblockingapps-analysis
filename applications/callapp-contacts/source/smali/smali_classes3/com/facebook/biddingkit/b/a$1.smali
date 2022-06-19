.class final Lcom/facebook/biddingkit/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/facebook/biddingkit/b/a$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/biddingkit/b/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/facebook/biddingkit/b/a$1;->a:Landroid/content/Context;

    .line 70
    invoke-static {v0}, Lcom/facebook/biddingkit/e/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/biddingkit/b/a$1;->b:Ljava/lang/String;

    const-string v3, "0.5.0"

    .line 68
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/biddingkit/d/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
