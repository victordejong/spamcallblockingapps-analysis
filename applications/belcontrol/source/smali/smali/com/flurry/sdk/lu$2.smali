.class public final Lcom/flurry/sdk/lu$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kp<",
        "Lcom/flurry/sdk/kj;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/lu;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/lu;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lu$2;->a:Lcom/flurry/sdk/lu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ko;)V
    .locals 5

    check-cast p1, Lcom/flurry/sdk/kj;

    iget-object v0, p1, Lcom/flurry/sdk/kj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/lu;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity has been destroyed, can\'t pass ActivityLifecycleEvent to adobject."

    invoke-static {p1, v0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/flurry/sdk/lu$5;->a:[I

    iget-object v2, p1, Lcom/flurry/sdk/kj;->b:Lcom/flurry/sdk/kj$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/lu;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Automatic onEndSession (destroyed) for context:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/kj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flurry/sdk/lu$2;->a:Lcom/flurry/sdk/lu;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/lu;->d(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/flurry/sdk/lu;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Automatic onEndSession for context:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/kj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flurry/sdk/lu$2;->a:Lcom/flurry/sdk/lu;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/lu;->d(Landroid/content/Context;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/flurry/sdk/lu;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Automatic onStartSession for context:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/kj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flurry/sdk/lu$2;->a:Lcom/flurry/sdk/lu;

    invoke-static {p1, v0}, Lcom/flurry/sdk/lu;->a(Lcom/flurry/sdk/lu;Landroid/content/Context;)V

    return-void
.end method
