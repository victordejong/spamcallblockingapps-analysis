.class public Lbc1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Landroid/app/ProgressDialog;

.field public static b:I

.field public static c:Z

.field public static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lbc1;->b(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 1

    :try_start_0
    sget-object v0, Lbc1;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    sput-boolean p0, Lbc1;->c:Z

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbc1;->d:Ljava/lang/ref/WeakReference;

    sget-object p0, Lbc1;->a:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lbc1;->b(Z)V

    const/4 p0, 0x0

    sput-object p0, Lbc1;->a:Landroid/app/ProgressDialog;

    :cond_0
    sget-boolean p0, Lbc1;->c:Z

    if-eqz p0, :cond_1

    sget p0, Lbc1;->b:I

    invoke-static {p0}, Lbc1;->e(I)V

    :cond_1
    return-void
.end method

.method public static d()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0, v0}, Lbc1;->f(II)V

    return-void
.end method

.method public static e(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0, p0}, Lbc1;->f(II)V

    return-void
.end method

.method public static f(II)V
    .locals 4

    sget-object v0, Lbc1;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lbc1;->a:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Landroid/app/ProgressDialog;

    const v3, 0x7f12014c

    invoke-direct {v1, v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lbc1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sget-object v1, Lbc1;->a:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_1
    sget-object v1, Lbc1;->a:Landroid/app/ProgressDialog;

    const/4 v3, -0x1

    if-ne p0, v3, :cond_2

    const p0, 0x7f1102bd

    :cond_2
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object p0, Lbc1;->a:Landroid/app/ProgressDialog;

    if-ne p1, v3, :cond_3

    const v1, 0x7f1104fd

    goto :goto_0

    :cond_3
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object p0, Lbc1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    sput p1, Lbc1;->b:I

    sput-boolean v2, Lbc1;->c:Z

    return-void
.end method
