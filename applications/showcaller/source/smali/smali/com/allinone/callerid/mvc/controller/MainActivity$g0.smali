.class Lcom/allinone/callerid/mvc/controller/MainActivity$g0;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "[0-9]+"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->m0()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 2
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const-string v5, "clipboard"

    invoke-virtual {v1, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 6
    invoke-virtual {v1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " "

    .line 8
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "-"

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/a1;->l0()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    new-instance v6, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$a;

    invoke-direct {v6, p0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$a;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$g0;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 12
    invoke-static {v4}, Lcom/allinone/callerid/util/a1;->R1(Z)V

    :cond_0
    const-string v5, "+"

    .line 13
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/a1;->l0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    new-instance v5, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$b;

    invoke-direct {v5, p0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$b;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$g0;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    invoke-static {v4}, Lcom/allinone/callerid/util/a1;->R1(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->R0(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/i/a/t/b;->a(Landroid/content/Context;)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/l/a/f;->k(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/allinone/callerid/util/a1;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$c;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$g0;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/i/d;->a(Landroid/content/Context;Lcom/allinone/callerid/i/a/i/e;)V

    .line 25
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    invoke-static {}, Lcom/allinone/callerid/util/a1;->B()J

    move-result-wide v0

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 28
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v5, v6}, Ljava/util/Date;-><init>(J)V

    const-string v5, "GMT-8:00"

    invoke-static {v7, v8, v5}, Lcom/allinone/callerid/util/i;->s(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 29
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->X(J)J

    move-result-wide v0

    invoke-static {v5, v0, v1}, Lcom/allinone/callerid/util/h1;->F0(Landroid/content/Context;J)V

    .line 30
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$d;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$g0;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/i/d;->a(Landroid/content/Context;Lcom/allinone/callerid/i/a/i/e;)V

    .line 32
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_7

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 36
    :try_start_3
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 38
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x4038000000000000L    # 24.0

    mul-double v1, v1, v7

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    mul-double v1, v1, v7

    mul-double v1, v1, v7

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v7

    sub-double/2addr v5, v1

    double-to-long v1, v5

    .line 40
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_5

    const-string v3, "recorder"

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lodtime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/allinone/callerid/f/k/b;->b(J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    :cond_6
    :goto_1
    :try_start_4
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 44
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 45
    :goto_2
    :try_start_6
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    throw v1

    .line 47
    :cond_7
    :goto_3
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 48
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/c/b/c;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 50
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/c/a/a;->a(Landroid/content/Context;)V

    goto :goto_4

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/c/b/c;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 52
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/c/a/a;->a(Landroid/content/Context;)V

    goto :goto_4

    :cond_9
    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/c/b/c;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x65813800

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 54
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/c/a/a;->a(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_4
    return-void
.end method
