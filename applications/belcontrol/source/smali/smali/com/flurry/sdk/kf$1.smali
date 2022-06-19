.class public final Lcom/flurry/sdk/kf$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kp<",
        "Lcom/flurry/sdk/lt;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/kf;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/kf;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kf$1;->a:Lcom/flurry/sdk/kf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ko;)V
    .locals 7

    check-cast p1, Lcom/flurry/sdk/lt;

    iget-object v0, p0, Lcom/flurry/sdk/kf$1;->a:Lcom/flurry/sdk/kf;

    invoke-static {v0}, Lcom/flurry/sdk/kf;->a(Lcom/flurry/sdk/kf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ls;

    iget-object v1, p0, Lcom/flurry/sdk/kf$1;->a:Lcom/flurry/sdk/kf;

    invoke-static {v1}, Lcom/flurry/sdk/kf;->a(Lcom/flurry/sdk/kf;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/flurry/sdk/kf$4;->a:[I

    iget v1, p1, Lcom/flurry/sdk/lt;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object p1

    iget-object v0, p0, Lcom/flurry/sdk/kf$1;->a:Lcom/flurry/sdk/kf;

    invoke-static {v0}, Lcom/flurry/sdk/kf;->b(Lcom/flurry/sdk/kf;)Lcom/flurry/sdk/kp;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    invoke-virtual {p1, v1, v0}, Lcom/flurry/sdk/kq;->b(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    invoke-static {}, Lcom/flurry/sdk/kf;->b()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/kf$1;->a:Lcom/flurry/sdk/kf;

    iget-object p1, p1, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/flurry/sdk/kf;->d:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/flurry/sdk/kf;->e:J

    return-void

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/kf$1;->a:Lcom/flurry/sdk/kf;

    iget-object p1, p1, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/sdk/kf;->a()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/kf$1;->a:Lcom/flurry/sdk/kf;

    iget-object v2, p1, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ls;

    iget-object p1, p1, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/flurry/sdk/kf;->b:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/flurry/sdk/kf;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/flurry/sdk/kf;->d:J

    if-eqz v2, :cond_7

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/flurry/sdk/kf;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flurry session id started:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/flurry/sdk/kf;->c:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/sdk/lt;

    invoke-direct {v1}, Lcom/flurry/sdk/lt;-><init>()V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    iput-object v2, v1, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ls;

    sget p1, Lcom/flurry/sdk/lt$a;->b:I

    iput p1, v1, Lcom/flurry/sdk/lt;->c:I

    invoke-virtual {v1}, Lcom/flurry/sdk/ko;->b()V

    goto :goto_2

    :cond_7
    :goto_1
    sget-object p1, Lcom/flurry/sdk/kf;->a:Ljava/lang/String;

    const-string v2, "Flurry session id cannot be created."

    invoke-static {v1, p1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/kf$3;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/kf$3;-><init>(Lcom/flurry/sdk/kf;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void
.end method
