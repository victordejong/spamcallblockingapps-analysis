.class final Lcom/facebook/appevents/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/a/d;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/facebook/appevents/a/d;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/a/d;Landroid/view/View;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/facebook/appevents/a/d$1;->b:Lcom/facebook/appevents/a/d;

    iput-object p2, p0, Lcom/facebook/appevents/a/d$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/a/d$1;->a:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_1

    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/facebook/appevents/a/d$1;->b:Lcom/facebook/appevents/a/d;

    invoke-static {v1, v0}, Lcom/facebook/appevents/a/d;->a(Lcom/facebook/appevents/a/d;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 130
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
