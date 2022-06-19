.class public Ld2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static b:Ld2/f1;

.field public static c:Z

.field public static d:Z


# direct methods
.method public static a(Ljava/lang/String;Ld2/y0;)Ld2/y0;
    .locals 1

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->q()Ld2/u0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ld2/u0;->d(Ljava/lang/String;Ld2/y0;)V

    return-object p1
.end method

.method public static b(Landroid/content/Context;Ld2/l;Z)V
    .locals 3

    .line 1
    sput-object p0, Ld2/t;->a:Landroid/content/Context;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Ld2/t;->d:Z

    .line 3
    sget-object v1, Ld2/t;->b:Ld2/f1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ld2/f1;

    invoke-direct {v1}, Ld2/f1;-><init>()V

    sput-object v1, Ld2/t;->b:Ld2/f1;

    .line 5
    invoke-virtual {p1, p0}, Ld2/l;->c(Landroid/content/Context;)V

    .line 6
    sget-object v1, Ld2/t;->b:Ld2/f1;

    invoke-virtual {v1, p1, p2}, Ld2/f1;->g(Ld2/l;Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, p0}, Ld2/l;->c(Landroid/content/Context;)V

    .line 8
    sget-object p2, Ld2/t;->b:Ld2/f1;

    .line 9
    iput-boolean v2, p2, Ld2/f1;->D:Z

    .line 10
    iget-object v1, p2, Ld2/f1;->d:Ld2/k0;

    invoke-virtual {v1}, Ld2/k0;->f()V

    .line 11
    invoke-virtual {p2}, Ld2/f1;->e()V

    .line 12
    sget-object v1, Ld2/t;->a:Landroid/content/Context;

    .line 13
    invoke-static {v1, p1}, Ld2/b;->b(Landroid/content/Context;Ld2/l;)V

    .line 14
    invoke-virtual {p2, v0}, Ld2/f1;->h(I)Z

    .line 15
    iget-object v1, p2, Ld2/f1;->u:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 16
    iput-object p1, p2, Ld2/f1;->r:Ld2/l;

    .line 17
    iget-object p1, p2, Ld2/f1;->a:Ld2/u0;

    invoke-virtual {p1}, Ld2/u0;->b()V

    .line 18
    invoke-virtual {p2, v0, v0}, Ld2/f1;->j(ZZ)Z

    .line 19
    :goto_0
    new-instance p1, Ld2/t$a;

    invoke-direct {p1, p0}, Ld2/t$a;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Ld2/i3;->j(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Executing ADC.configure queryAdvertisingId failed"

    .line 20
    invoke-static {v2, v2, p0, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_1
    const/4 p0, 0x2

    const-string p1, "Configuring AdColony"

    .line 21
    invoke-static {v2, p0, p1, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 22
    sget-object p0, Ld2/t;->b:Ld2/f1;

    .line 23
    iput-boolean v2, p0, Ld2/f1;->B:Z

    .line 24
    invoke-virtual {p0}, Ld2/f1;->a()Ld2/g2;

    move-result-object p0

    .line 25
    iput-boolean v2, p0, Ld2/g2;->j:Z

    .line 26
    sget-object p0, Ld2/t;->b:Ld2/f1;

    .line 27
    iput-boolean v0, p0, Ld2/f1;->E:Z

    .line 28
    invoke-virtual {p0}, Ld2/f1;->a()Ld2/g2;

    move-result-object p0

    invoke-virtual {p0, v2}, Ld2/g2;->c(Z)V

    .line 29
    sget-object p0, Ld2/t;->b:Ld2/f1;

    invoke-virtual {p0}, Ld2/f1;->a()Ld2/g2;

    move-result-object p0

    invoke-virtual {p0, v0}, Ld2/g2;->d(Z)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ld2/y0;)V
    .locals 1

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->q()Ld2/u0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ld2/u0;->d(Ljava/lang/String;Ld2/y0;)V

    return-void
.end method

.method public static d()Ld2/f1;
    .locals 3

    .line 1
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ld2/f1;

    invoke-direct {v1}, Ld2/f1;-><init>()V

    sput-object v1, Ld2/t;->b:Ld2/f1;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/adc3/AppInfo"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ld2/e4;->q(Ljava/lang/String;)Ld2/f4;

    move-result-object v0

    const-string v1, "zoneIds"

    .line 7
    invoke-static {v0, v1}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v1

    const-string v2, "appId"

    .line 8
    invoke-virtual {v0, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v2, Ld2/l;

    invoke-direct {v2}, Ld2/l;-><init>()V

    invoke-virtual {v2, v0}, Ld2/l;->a(Ljava/lang/String;)Ld2/l;

    .line 10
    invoke-static {v1}, Ld2/e4;->j(Ld2/d4;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ld2/l;->b([Ljava/lang/String;)Ld2/l;

    .line 11
    sget-object v0, Ld2/t;->b:Ld2/f1;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ld2/f1;->g(Ld2/l;Z)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ld2/f1;

    invoke-direct {v0}, Ld2/f1;-><init>()V

    return-object v0

    .line 13
    :cond_1
    :goto_0
    sget-object v0, Ld2/t;->b:Ld2/f1;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    .line 1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Z
    .locals 1

    .line 1
    sget-object v0, Ld2/t;->b:Ld2/f1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()V
    .locals 4

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->q()Ld2/u0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ld2/u0;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Ld2/u0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 4
    iget-object v3, v0, Ld2/u0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld2/z0;

    .line 5
    invoke-interface {v3}, Ld2/z0;->b()V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
