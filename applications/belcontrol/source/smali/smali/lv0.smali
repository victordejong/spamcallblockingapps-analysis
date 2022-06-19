.class public final Llv0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llv0$a;
    }
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Llv0;->b(Landroid/content/Context;Landroid/widget/TextView;Z)V

    return-void
.end method

.method public static final b(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 1

    new-instance p0, Llv0$a;

    const/4 v0, 0x0

    invoke-static {v0}, Lb91;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Llv0$a;-><init>(Ljava/lang/String;Landroid/widget/TextView;Z)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
