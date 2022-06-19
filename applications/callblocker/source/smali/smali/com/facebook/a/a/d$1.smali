.class Lcom/facebook/a/a/d$1;
.super Ljava/lang/Object;
.source "MetadataViewObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a/d;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/facebook/a/a/d;


# direct methods
.method constructor <init>(Lcom/facebook/a/a/d;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/facebook/a/a/d$1;->b:Lcom/facebook/a/a/d;

    iput-object p2, p0, Lcom/facebook/a/a/d$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/a/a/d$1;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/a/d$1;->b:Lcom/facebook/a/a/d;

    iget-object v1, p0, Lcom/facebook/a/a/d$1;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/facebook/a/a/d;->a(Lcom/facebook/a/a/d;Landroid/view/View;)V

    goto :goto_0
.end method
