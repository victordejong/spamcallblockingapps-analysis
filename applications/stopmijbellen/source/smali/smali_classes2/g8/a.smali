.class public final synthetic Lg8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mglab/scm/api/AlarmJobIntentService;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/api/AlarmJobIntentService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg8/a;->a:I

    iput-object p1, p0, Lg8/a;->b:Lcom/mglab/scm/api/AlarmJobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 7

    iget p1, p0, Lg8/a;->a:I

    const/4 v0, 0x1

    const-string v1, "body"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lg8/a;->b:Lcom/mglab/scm/api/AlarmJobIntentService;

    check-cast p2, Ls6/k;

    sget v2, Lcom/mglab/scm/api/AlarmJobIntentService;->l:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x3

    if-eqz p2, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v4

    invoke-virtual {v4}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance v1, Ls6/l;

    invoke-direct {v1}, Ls6/l;-><init>()V

    invoke-virtual {v1, p2}, Ls6/l;->a(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->c()Ls6/k;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    const-string v1, "delinit"

    .line 7
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->a()I

    move-result v1

    iput v1, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->h:I

    const-string v1, "dbinit"

    .line 8
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->a()I

    move-result v1

    iput v1, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->i:I

    const-string v1, "key"

    .line 9
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    const-string v1, "pcount"

    .line 10
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->a()I

    move-result v1

    iput v1, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->j:I

    const-string v1, "needid"

    .line 11
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->a()I

    move-result p2

    if-eq p2, v0, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "resend_dev"

    .line 13
    invoke-static {p2, v1, v0}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 14
    :goto_1
    invoke-virtual {p1, p2}, Lcom/mglab/scm/api/AlarmJobIntentService;->j(Z)V

    .line 15
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v6}, Lf8/h;->i0(Landroid/content/Context;I)V

    .line 16
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v1, Lk8/q;

    const/16 v3, 0x65

    iget v4, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->j:I

    invoke-direct {v1, v3, v4}, Lk8/q;-><init>(II)V

    invoke-virtual {p2, v1}, Lba/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 17
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 20
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/q;

    invoke-direct {p2, v2}, Lk8/q;-><init>(I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/e;

    const-string v1, ".Initexception"

    invoke-direct {p2, v1, v0}, Lk8/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/q;

    invoke-direct {p2, v2}, Lk8/q;-><init>(I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/e;

    const-string v1, ".Init no result"

    invoke-direct {p2, v1, v0}, Lk8/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 25
    :goto_3
    iget-object p1, p0, Lg8/a;->b:Lcom/mglab/scm/api/AlarmJobIntentService;

    check-cast p2, Ls6/k;

    sget v2, Lcom/mglab/scm/api/AlarmJobIntentService;->l:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x4

    if-eqz p2, :cond_4

    .line 26
    :try_start_1
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 27
    iget-object v3, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 28
    new-instance v1, Ls6/l;

    invoke-direct {v1}, Ls6/l;-><init>()V

    invoke-virtual {v1, p2}, Ls6/l;->a(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->b()Ls6/h;

    move-result-object p2

    .line 29
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Ls6/h;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    const-class v1, Lh8/k;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->d(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v1

    .line 32
    new-instance v3, Lz2/q;

    const/4 v4, 0x7

    invoke-direct {v3, p2, v4}, Lz2/q;-><init>(Ljava/lang/Object;I)V

    .line 33
    new-instance p2, Ld9/h$a;

    invoke-direct {p2, v3, v1}, Ld9/h$a;-><init>(Ld9/c;Lcom/raizlabs/android/dbflow/config/c;)V

    .line 34
    new-instance v1, Ls2/b;

    invoke-direct {v1, p1}, Ls2/b;-><init>(Ljava/lang/Object;)V

    .line 35
    iput-object v1, p2, Ld9/h$a;->d:Ld9/h$c;

    .line 36
    new-instance v1, Lg8/c;

    invoke-direct {v1, p1}, Lg8/c;-><init>(Lcom/mglab/scm/api/AlarmJobIntentService;)V

    .line 37
    iput-object v1, p2, Ld9/h$a;->c:Ld9/h$b;

    .line 38
    new-instance v1, Ld9/h;

    invoke-direct {v1, p2}, Ld9/h;-><init>(Ld9/h$a;)V

    .line 39
    invoke-virtual {v1}, Ld9/h;->a()V

    goto/16 :goto_4

    .line 40
    :cond_3
    invoke-static {}, Lh8/q;->v()I

    .line 41
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v1, "lastdbcheck"

    .line 42
    invoke-static {p2, v1, v3, v4}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    .line 43
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lf8/g;->E(Landroid/content/Context;Z)V

    .line 44
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v1, Lk8/e;

    const-string v3, "Download complete"

    invoke-direct {v1, v3}, Lk8/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lba/b;->g(Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v1, Lk8/q;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Lk8/q;-><init>(I)V

    invoke-virtual {p2, v1}, Lba/b;->g(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 46
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 49
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/q;

    invoke-direct {p2, v2}, Lk8/q;-><init>(I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/e;

    const-string v1, "exception"

    invoke-direct {p2, v1, v0}, Lk8/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_4

    .line 51
    :cond_4
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/q;

    invoke-direct {p2, v2}, Lk8/q;-><init>(I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/e;

    const-string v1, "Download not completed"

    invoke-direct {p2, v1, v0}, Lk8/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
