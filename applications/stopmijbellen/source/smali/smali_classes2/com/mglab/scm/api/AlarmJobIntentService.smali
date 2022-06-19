.class public Lcom/mglab/scm/api/AlarmJobIntentService;
.super Lc0/i;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/mglab/scm/api/AlarmJobIntentService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc0/i;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 11

    const-string p1, "<"

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/g;->v(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x10

    .line 3
    invoke-static {v1}, Lf8/g;->B(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    const-string v1, "pilc"

    .line 4
    invoke-static {v0, v1}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    cmp-long v9, v1, v3

    if-lez v9, :cond_0

    .line 6
    invoke-static {v0}, Lf8/h;->p(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v7, :cond_0

    .line 7
    invoke-static {v0}, Lf8/h;->z(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v8, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/mglab/scm/api/AlarmJobIntentService;->h()V

    goto/16 :goto_2

    .line 9
    :cond_0
    invoke-static {v0}, Lf8/h;->p(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v7, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lf8/h;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_0
    invoke-static {v0}, Lf8/h;->z(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0}, Lf8/h;->D(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_2

    .line 11
    invoke-static {v0, v5}, Lf8/h;->l0(Landroid/content/Context;I)V

    .line 12
    sget-object v2, Lg8/d;->a:[Ljava/lang/String;

    invoke-static {v0, v2}, Lf8/h;->n0(Landroid/content/Context;[Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-static {v0}, Lf8/h;->z(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v8

    .line 14
    invoke-static {v0, v2}, Lf8/h;->l0(Landroid/content/Context;I)V

    .line 15
    new-instance v2, Ly2/k;

    invoke-direct {v2, p0, v0, v6}, Ly2/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 16
    new-instance v3, Ls6/k;

    invoke-direct {v3}, Ls6/k;-><init>()V

    .line 17
    invoke-virtual {v3, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 18
    iget-object v4, v3, Ls6/k;->a:Lt6/e;

    const-string v7, "initserver"

    invoke-virtual {v4, v7, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v0}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-static {v0}, Lf8/h;->C(Landroid/content/Context;)I

    move-result v7

    add-int/2addr v7, v8

    .line 21
    invoke-static {v0}, Lf8/h;->D(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v7, v9, :cond_3

    const/4 v7, 0x0

    .line 22
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "pinumber"

    invoke-static {v0, v10, v9}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    invoke-static {v0, v7}, Lf8/h;->A(Landroid/content/Context;I)Ljava/lang/String;

    .line 24
    invoke-static {v0, v7}, Lf8/h;->A(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "app_preinit.php"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v1, Lw7/p;

    invoke-virtual {v1, v4}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    const/16 v4, 0x2710

    .line 26
    iput v4, v1, Lw7/p;->g:I

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "android_id"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "deviceid"

    .line 28
    invoke-virtual {v1, v4, v0}, Lw7/p;->m(Ljava/lang/String;Ljava/lang/String;)Lw7/p;

    .line 29
    invoke-static {}, Lf8/g;->f()Ljava/lang/String;

    move-result-object v0

    const-string v4, "appvc"

    .line 30
    invoke-virtual {v1, v4, v0}, Lw7/p;->m(Ljava/lang/String;Ljava/lang/String;)Lw7/p;

    .line 31
    invoke-static {p0}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "tcc"

    .line 32
    invoke-virtual {v1, v4, v0}, Lw7/p;->m(Ljava/lang/String;Ljava/lang/String;)Lw7/p;

    .line 33
    iget-object v0, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    const-string v4, "data"

    .line 34
    invoke-virtual {v1, v4, v0}, Lw7/p;->m(Ljava/lang/String;Ljava/lang/String;)Lw7/p;

    const-string v0, "1"

    const-string v4, "gzip"

    .line 35
    invoke-virtual {v1, v4, v0}, Lw7/p;->m(Ljava/lang/String;Ljava/lang/String;)Lw7/p;

    .line 36
    invoke-static {p0}, Lf8/h;->i(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "commandid"

    .line 37
    invoke-virtual {v1, v7, v4}, Lw7/p;->m(Ljava/lang/String;Ljava/lang/String;)Lw7/p;

    .line 38
    invoke-static {}, Lf8/g;->y()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "0"

    :goto_1
    const-string v4, "ispro"

    .line 39
    invoke-virtual {v1, v4, v0}, Lw7/p;->m(Ljava/lang/String;Ljava/lang/String;)Lw7/p;

    .line 40
    iget-object v0, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    .line 41
    invoke-virtual {v3}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lg8/d;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lw7/p;->a([B)Ljava/lang/Object;

    .line 42
    invoke-interface {v1}, Lz7/b;->d()Lc8/a;

    move-result-object v0

    .line 43
    check-cast v0, Lm7/g;

    invoke-virtual {v0, v2}, Lm7/g;->k(Lm7/d;)V

    .line 44
    :goto_2
    :try_start_0
    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lg8/d;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    .line 45
    new-instance v1, Lw8/f;

    invoke-direct {v1}, Lw8/f;-><init>()V

    .line 46
    const-class v2, Lh8/g;

    .line 47
    new-instance v3, Lw8/g;

    invoke-direct {v3, v1, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v1, v8, [Lw8/n;

    .line 48
    sget-object v2, Lh8/h;->j:Lx8/c;

    .line 49
    invoke-virtual {v2}, Lx8/c;->c()Lw8/k;

    move-result-object v2

    .line 50
    iput-object p1, v2, Lw8/c;->a:Ljava/lang/String;

    .line 51
    iput-object v0, v2, Lw8/c;->b:Ljava/lang/Object;

    .line 52
    iput-boolean v8, v2, Lw8/c;->e:Z

    aput-object v2, v1, v5

    .line 53
    new-instance v0, Lw8/r;

    invoke-direct {v0, v3, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 54
    invoke-virtual {v0}, Lw8/r;->i()Lc9/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :goto_3
    const-class v0, Lh8/l;

    :try_start_1
    new-array v1, v5, [Lx8/a;

    .line 57
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 58
    new-instance v1, Lw8/g;

    invoke-direct {v1, v2, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 59
    sget-object v2, Lh8/m;->j:Lx8/c;

    invoke-virtual {v1, v2, v5}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object v1

    .line 60
    iput v8, v1, Lw8/r;->h:I

    const/16 v3, 0x12c

    .line 61
    iput v3, v1, Lw8/r;->i:I

    .line 62
    invoke-virtual {v1}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/l;

    if-eqz v1, :cond_5

    .line 63
    new-instance v3, Lw8/f;

    invoke-direct {v3}, Lw8/f;-><init>()V

    .line 64
    new-instance v4, Lw8/g;

    invoke-direct {v4, v3, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v3, v8, [Lw8/n;

    .line 65
    iget-object v7, v1, Lh8/l;->e:Ljava/sql/Date;

    .line 66
    invoke-virtual {v2, v7}, Lx8/b;->i(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v3, v5

    .line 67
    new-instance v2, Lw8/r;

    invoke-direct {v2, v4, v3}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 68
    invoke-virtual {v2}, Lw8/r;->i()Lc9/g;

    .line 69
    iget-object v1, v1, Lh8/l;->e:Ljava/sql/Date;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :cond_5
    :goto_4
    :try_start_2
    new-instance v1, Lw8/f;

    invoke-direct {v1}, Lw8/f;-><init>()V

    .line 72
    new-instance v2, Lw8/g;

    invoke-direct {v2, v1, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v0, v6, [Lw8/n;

    .line 73
    sget-object v1, Lh8/m;->n:Lx8/b;

    .line 74
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lh8/m;->g:Lx8/b;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->v(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v3

    .line 75
    invoke-virtual {v1}, Lx8/b;->c()Lw8/k;

    move-result-object v1

    .line 76
    iput-object p1, v1, Lw8/c;->a:Ljava/lang/String;

    .line 77
    iput-object v3, v1, Lw8/c;->b:Ljava/lang/Object;

    .line 78
    iput-boolean v8, v1, Lw8/c;->e:Z

    aput-object v1, v0, v8

    .line 79
    new-instance p1, Lw8/r;

    invoke-direct {p1, v2, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 80
    invoke-virtual {p1}, Lw8/r;->i()Lc9/g;

    .line 81
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->v(Landroid/content/Context;)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :goto_5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 84
    invoke-static {p1, v5}, Lh8/q;->k(Landroid/content/Context;Z)V

    const-string p1, "AJIS"

    const-string v0, "Completed service"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final e(II)V
    .locals 5

    .line 1
    const-class v0, Lh8/g;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf8/h;->i(Landroid/content/Context;)I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->i(Landroid/content/Context;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lf8/h;->i(Landroid/content/Context;)I

    move-result v2

    const-string v3, "precommandid"

    if-gt v2, p1, :cond_1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    const-string v4, "dsuclbl"

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 7
    invoke-static {p2, v4, v2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 9
    invoke-static {p2, v4, v1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lf8/h;->h0(Landroid/content/Context;I)V

    goto :goto_0

    .line 11
    :cond_5
    :try_start_0
    new-instance p2, Lw8/f;

    invoke-direct {p2}, Lw8/f;-><init>()V

    .line 12
    new-instance v1, Lw8/g;

    invoke-direct {v1, p2, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 13
    invoke-virtual {v1}, Lw8/e;->i()Lc9/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 14
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_6
    :try_start_1
    new-instance p2, Lw8/f;

    invoke-direct {p2}, Lw8/f;-><init>()V

    .line 17
    new-instance v1, Lw8/g;

    invoke-direct {v1, p2, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {v1}, Lw8/e;->i()Lc9/g;

    .line 19
    new-instance p2, Lw8/f;

    invoke-direct {p2}, Lw8/f;-><init>()V

    .line 20
    const-class v0, Lh8/r;

    .line 21
    new-instance v1, Lw8/g;

    invoke-direct {v1, p2, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 22
    invoke-virtual {v1}, Lw8/e;->i()Lc9/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 23
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 26
    invoke-static {p2}, Lf8/h;->i(Landroid/content/Context;)I

    move-result v0

    if-gt v0, p1, :cond_7

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    return-void
.end method

.method public final f()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->i:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->y(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/e;

    const-string v2, "Update disabled"

    invoke-direct {v1, v2}, Lk8/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    const/4 v1, -0x5

    invoke-static {v1, v0}, La6/d;->f(ILba/b;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app_download.php"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lw7/p;

    invoke-virtual {v0, v1}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    const/16 v1, 0x2710

    .line 7
    invoke-interface {v0, v1}, Lz7/a;->e(I)Lz7/a;

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "deviceid"

    invoke-interface {v0, v3, v1}, Lz7/a;->c(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 9
    invoke-static {}, Lh8/q;->v()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lastid"

    invoke-interface {v0, v3, v1}, Lz7/a;->c(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 10
    invoke-interface {v0}, Lz7/b;->d()Lc8/a;

    move-result-object v0

    new-instance v1, Lg8/a;

    invoke-direct {v1, p0, v2}, Lg8/a;-><init>(Lcom/mglab/scm/api/AlarmJobIntentService;I)V

    .line 11
    check-cast v0, Lm7/g;

    invoke-virtual {v0, v1}, Lm7/g;->k(Lm7/d;)V

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "lastdbcheck"

    .line 13
    invoke-static {v0, v5, v3, v4}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lf8/g;->E(Landroid/content/Context;Z)V

    .line 15
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v2, Lk8/e;

    const-string v3, "Download complete"

    invoke-direct {v2, v3}, Lk8/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-static {v1, v0}, La6/d;->f(ILba/b;)V

    :goto_1
    return-void
.end method

.method public final g()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lf8/h;->m(Landroid/content/Context;)Ljava/lang/Integer;

    .line 2
    invoke-static {}, Lh8/q;->v()I

    .line 3
    invoke-static {}, Lh8/q;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->h:I

    invoke-static {v0, v1}, Lf8/h;->h0(Landroid/content/Context;I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->m(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->h:I

    if-eq v0, v1, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->y(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/mglab/scm/api/AlarmJobIntentService;->f()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "app_deleted.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lw7/p;

    invoke-virtual {v0, v1}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lz7/a;

    const/16 v1, 0x2710

    .line 11
    invoke-interface {v0, v1}, Lz7/a;->e(I)Lz7/a;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    invoke-interface {v0, v2, v1}, Lz7/a;->c(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object v0

    .line 13
    invoke-static {p0}, Lf8/h;->m(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastid"

    invoke-interface {v0, v2, v1}, Lz7/a;->c(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lz7/b;->d()Lc8/a;

    move-result-object v0

    new-instance v1, Ly2/l;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    .line 15
    check-cast v0, Lm7/g;

    invoke-virtual {v0, v1}, Lm7/g;->k(Lm7/d;)V

    goto :goto_1

    .line 16
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/mglab/scm/api/AlarmJobIntentService;->f()V

    :goto_1
    return-void
.end method

.method public final h()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lf8/g;->B(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    .line 2
    new-instance v0, Lf8/b;

    invoke-direct {v0}, Lf8/b;-><init>()V

    invoke-virtual {v0}, Lf8/b;->a()Lf8/b;

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lg8/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg8/a;-><init>(Lcom/mglab/scm/api/AlarmJobIntentService;I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf8/h;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    invoke-static {}, Lh8/q;->v()I

    .line 7
    invoke-static {p0}, Lf8/h;->m(Landroid/content/Context;)Ljava/lang/Integer;

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app_init.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lw7/p;

    invoke-virtual {v1, v2}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    const/16 v2, 0x2710

    .line 10
    invoke-interface {v1, v2}, Lz7/a;->e(I)Lz7/a;

    .line 11
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceid"

    invoke-interface {v1, v3, v2}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 12
    invoke-static {}, Lh8/q;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dbinit"

    invoke-interface {v1, v3, v2}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 13
    invoke-static {p0}, Lf8/h;->m(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "delinit"

    invoke-interface {v1, v3, v2}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk"

    invoke-interface {v1, v3, v2}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 15
    invoke-static {}, Lf8/g;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appvc"

    invoke-interface {v1, v3, v2}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 16
    invoke-static {p0}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tcc"

    invoke-interface {v1, v3, v2}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    iget-object v2, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    const-string v3, "data"

    .line 17
    invoke-interface {v1, v3, v2}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 18
    invoke-static {}, Lf8/g;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const-string v3, "ispro"

    invoke-interface {v1, v3, v2}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 19
    invoke-interface {v1}, Lz7/b;->d()Lc8/a;

    move-result-object v1

    .line 20
    check-cast v1, Lm7/g;

    invoke-virtual {v1, v0}, Lm7/g;->k(Lm7/d;)V

    return-void
.end method

.method public final i()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lg8/d;->a:[Ljava/lang/String;

    .line 2
    new-instance v1, Ls6/h;

    invoke-direct {v1}, Ls6/h;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lx8/a;

    .line 3
    new-instance v4, Lw8/o;

    invoke-direct {v4, v3}, Lw8/o;-><init>([Lx8/a;)V

    .line 4
    const-class v3, Lh8/c;

    .line 5
    new-instance v5, Lw8/g;

    invoke-direct {v5, v4, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lw8/n;

    .line 6
    sget-object v4, Lh8/d;->f:Lx8/b;

    .line 7
    invoke-static {v0}, Lf8/h;->u(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lx8/b;->d(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v3, v2

    .line 8
    new-instance v0, Lw8/r;

    invoke-direct {v0, v5, v3}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 9
    sget-object v3, Lh8/d;->j:Lx8/b;

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lx8/b;->d(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    .line 11
    iget-object v5, v0, Lw8/r;->d:Lw8/l;

    const-string v6, "AND"

    .line 12
    invoke-virtual {v5, v6, v3}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    .line 13
    iget-object v3, v0, Lw8/r;->f:Ljava/util/List;

    new-instance v5, Lw8/m;

    invoke-virtual {v4}, Lx8/b;->f()Lw8/j;

    move-result-object v4

    invoke-direct {v5, v4, v2}, Lw8/m;-><init>(Lw8/j;Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0}, Lw8/r;->l()Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/c;

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v3, Ls6/k;

    invoke-direct {v3}, Ls6/k;-><init>()V

    .line 18
    iget-object v4, v2, Lh8/c;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {v3, v4}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v4

    .line 20
    iget-object v5, v3, Ls6/k;->a:Lt6/e;

    const-string v6, "number"

    invoke-virtual {v5, v6, v4}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v4, v2, Lh8/c;->d:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, v4}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v4

    .line 23
    iget-object v5, v3, Ls6/k;->a:Lt6/e;

    const-string v6, "name"

    invoke-virtual {v5, v6, v4}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget v2, v2, Lh8/c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 25
    invoke-virtual {v3, v2}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v2

    .line 26
    iget-object v4, v3, Ls6/k;->a:Lt6/e;

    const-string v5, "category"

    invoke-virtual {v4, v5, v2}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v2, v1, Ls6/h;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->u(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29
    invoke-virtual {v1}, Ls6/i;->toString()Ljava/lang/String;

    int-to-long v2, v0

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 31
    invoke-virtual {v1}, Ls6/h;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/mglab/scm/api/AlarmJobIntentService;->g()V

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Lg8/c;

    invoke-direct {v0, p0}, Lg8/c;-><init>(Lcom/mglab/scm/api/AlarmJobIntentService;)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lf8/h;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app_upload_blacklist.php"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lw7/p;

    invoke-virtual {v2, v3}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    const/16 v3, 0x2710

    .line 37
    invoke-interface {v2, v3}, Lz7/a;->e(I)Lz7/a;

    .line 38
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceid"

    invoke-interface {v2, v4, v3}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    const-string v3, "gzip"

    const-string v4, "1"

    .line 39
    invoke-interface {v2, v3, v4}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    iget-object v3, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lg8/d;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lz7/a;->a([B)Ljava/lang/Object;

    check-cast v2, Lz7/b;

    .line 41
    invoke-interface {v2}, Lz7/b;->d()Lc8/a;

    move-result-object v1

    .line 42
    check-cast v1, Lm7/g;

    invoke-virtual {v1, v0}, Lm7/g;->k(Lm7/d;)V

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/mglab/scm/api/AlarmJobIntentService;->g()V

    :goto_1
    return-void
.end method

.method public final j(Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/mglab/scm/api/AlarmJobIntentService;->k()V

    goto/16 :goto_c

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lg8/d;->a:[Ljava/lang/String;

    .line 3
    new-instance v0, Ls6/k;

    invoke-direct {v0}, Ls6/k;-><init>()V

    .line 4
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 6
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "pm"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 9
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "pmdl"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 12
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "avc"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 15
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "avn"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x17e

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 18
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "appvc"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.3.21"

    .line 19
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 20
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "appvn"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL_PHONE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.CALL_PHONE"

    .line 22
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v4, "0"

    const-string v5, "1"

    if-eqz v2, :cond_2

    move-object v2, v5

    goto :goto_1

    :cond_2
    move-object v2, v4

    .line 23
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", ANSWER_PHONE_CALLS:"

    .line 24
    invoke-static {v1, v2}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.ANSWER_PHONE_CALLS"

    .line 25
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    move-object v2, v5

    goto :goto_3

    :cond_4
    move-object v2, v4

    .line 26
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", READ_PHONE_STATE:"

    .line 27
    invoke-static {v1, v2}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 28
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    move-object v2, v5

    goto :goto_5

    :cond_6
    move-object v2, v4

    .line 29
    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", READ_CALL_LOG:"

    .line 30
    invoke-static {v1, v2}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.READ_CALL_LOG"

    .line 31
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_8

    move-object v2, v5

    goto :goto_7

    :cond_8
    move-object v2, v4

    .line 32
    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", WRITE_CALL_LOG:"

    .line 33
    invoke-static {v1, v2}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lf8/g;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v5

    goto :goto_8

    :cond_9
    move-object v2, v4

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", READ_CONTACTS:"

    .line 34
    invoke-static {v1, v2}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v5

    goto :goto_9

    :cond_a
    move-object v2, v4

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", WAKE_LOCK:"

    .line 35
    invoke-static {v1, v2}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.WAKE_LOCK"

    .line 36
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_c

    move-object v2, v5

    goto :goto_b

    :cond_c
    move-object v2, v4

    .line 37
    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", RECEIVE_BOOT_COMPLETED:"

    .line 38
    invoke-static {v1, v2}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 39
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    const/4 v3, 0x1

    :cond_d
    if-eqz v3, :cond_e

    move-object v4, v5

    .line 40
    :cond_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 42
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "permissions"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 45
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "bf"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 48
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "bn"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 51
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "tcc"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone"

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 53
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 54
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object p1

    .line 57
    iget-object v1, v0, Ls6/k;->a:Lt6/e;

    const-string v2, "phonetype"

    invoke-virtual {v1, v2, p1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    .line 59
    new-instance p1, Lz2/q;

    const/4 v1, 0x6

    invoke-direct {p1, p0, v1}, Lz2/q;-><init>(Ljava/lang/Object;I)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app_device.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lw7/p;

    invoke-virtual {v1, v2}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lz7/a;

    const/16 v2, 0x2710

    .line 62
    invoke-interface {v1, v2}, Lz7/a;->e(I)Lz7/a;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceid"

    invoke-interface {v1, v3, v2}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object v1

    const-string v2, "gzip"

    .line 64
    invoke-interface {v1, v2, v5}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lg8/d;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lz7/a;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz7/b;

    .line 66
    invoke-interface {v0}, Lz7/b;->d()Lc8/a;

    move-result-object v0

    .line 67
    check-cast v0, Lm7/g;

    invoke-virtual {v0, p1}, Lm7/g;->k(Lm7/d;)V

    :goto_c
    return-void
.end method

.method public final k()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lg8/d;->a:[Ljava/lang/String;

    .line 2
    new-instance v1, Ls6/h;

    invoke-direct {v1}, Ls6/h;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lx8/a;

    .line 3
    new-instance v4, Lw8/o;

    invoke-direct {v4, v3}, Lw8/o;-><init>([Lx8/a;)V

    .line 4
    const-class v3, Lh8/l;

    .line 5
    new-instance v5, Lw8/g;

    invoke-direct {v5, v4, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v3, 0x1

    new-array v4, v3, [Lw8/n;

    .line 6
    sget-object v6, Lh8/m;->g:Lx8/b;

    .line 7
    invoke-static {v0}, Lf8/h;->v(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lx8/b;->d(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v4, v2

    .line 8
    new-instance v0, Lw8/r;

    invoke-direct {v0, v5, v4}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 9
    invoke-virtual {v0, v6, v2}, Lw8/r;->o(Lx8/a;Z)Lw8/r;

    .line 10
    invoke-virtual {v0}, Lw8/r;->l()Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "1"

    if-eqz v4, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/l;

    .line 12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v6, Ls6/k;

    invoke-direct {v6}, Ls6/k;-><init>()V

    .line 14
    iget-object v7, v4, Lh8/l;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v6, v7}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v7

    .line 16
    iget-object v8, v6, Ls6/k;->a:Lt6/e;

    const-string v9, "number"

    invoke-virtual {v8, v9, v7}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget v7, v4, Lh8/l;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 18
    invoke-virtual {v6, v7}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v7

    .line 19
    iget-object v8, v6, Ls6/k;->a:Lt6/e;

    const-string v9, "devicetableid"

    invoke-virtual {v8, v9, v7}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v7, v4, Lh8/l;->d:Ljava/lang/Integer;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_12

    .line 21
    iget-object v7, v4, Lh8/l;->e:Ljava/sql/Date;

    invoke-virtual {v7}, Ljava/sql/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 22
    invoke-virtual {v6, v7}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v7

    .line 23
    iget-object v8, v6, Ls6/k;->a:Lt6/e;

    const-string v9, "recdate"

    invoke-virtual {v8, v9, v7}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v7, v4, Lh8/l;->d:Ljava/lang/Integer;

    .line 25
    invoke-virtual {v6, v7}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v7

    .line 26
    iget-object v8, v6, Ls6/k;->a:Lt6/e;

    const-string v9, "recresult"

    invoke-virtual {v8, v9, v7}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v7, v4, Lh8/l;->f:Ljava/lang/Integer;

    .line 28
    invoke-virtual {v6, v7}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v7

    .line 29
    iget-object v8, v6, Ls6/k;->a:Lt6/e;

    const-string v9, "recsimno"

    invoke-virtual {v8, v9, v7}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "METHOD:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lh8/l;->L:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", PRESET:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lh8/l;->G:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", SIM1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-boolean v8, v4, Lh8/l;->J:Z

    const-string v9, "0"

    if-eqz v8, :cond_1

    move-object v8, v5

    goto :goto_2

    :cond_1
    move-object v8, v9

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", SIM2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v8, v4, Lh8/l;->K:Z

    if-eqz v8, :cond_2

    move-object v8, v5

    goto :goto_3

    :cond_2
    move-object v8, v9

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", USECALENDAR:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-boolean v8, v4, Lh8/l;->H:Z

    if-eqz v8, :cond_3

    move-object v8, v5

    goto :goto_4

    :cond_3
    move-object v8, v9

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", CALENDAR:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lh8/l;->I:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", DB:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-boolean v8, v4, Lh8/l;->n:Z

    if-eqz v8, :cond_4

    move-object v8, v5

    goto :goto_5

    :cond_4
    move-object v8, v9

    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", BL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-boolean v8, v4, Lh8/l;->o:Z

    if-eqz v8, :cond_5

    move-object v8, v5

    goto :goto_6

    :cond_5
    move-object v8, v9

    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", WL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean v8, v4, Lh8/l;->p:Z

    if-eqz v8, :cond_6

    move-object v8, v5

    goto :goto_7

    :cond_6
    move-object v8, v9

    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", BLALLEXWL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-boolean v8, v4, Lh8/l;->F:Z

    if-eqz v8, :cond_7

    move-object v8, v5

    goto :goto_8

    :cond_7
    move-object v8, v9

    :goto_8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", CONTACTS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean v8, v4, Lh8/l;->r:Z

    if-eqz v8, :cond_8

    move-object v8, v5

    goto :goto_9

    :cond_8
    move-object v8, v9

    :goto_9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", BLALLEXCONTACTS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-boolean v8, v4, Lh8/l;->B:Z

    if-eqz v8, :cond_9

    move-object v8, v5

    goto :goto_a

    :cond_9
    move-object v8, v9

    :goto_a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", HIDDEN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v8, v4, Lh8/l;->s:Z

    if-eqz v8, :cond_a

    move-object v8, v5

    goto :goto_b

    :cond_a
    move-object v8, v9

    :goto_b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", FOREIGN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v8, v4, Lh8/l;->q:Z

    if-eqz v8, :cond_b

    move-object v8, v5

    goto :goto_c

    :cond_b
    move-object v8, v9

    :goto_c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", SECONDCALL;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-boolean v8, v4, Lh8/l;->O:Z

    if-eqz v8, :cond_c

    move-object v8, v5

    goto :goto_d

    :cond_c
    move-object v8, v9

    :goto_d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", FOREGROUND:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-boolean v8, v4, Lh8/l;->t:Z

    if-eqz v8, :cond_d

    move-object v8, v5

    goto :goto_e

    :cond_d
    move-object v8, v9

    :goto_e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", DND:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-boolean v8, v4, Lh8/l;->M:Z

    if-eqz v8, :cond_e

    move-object v8, v5

    goto :goto_f

    :cond_e
    move-object v8, v9

    :goto_f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", SYSVIBRATE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-boolean v8, v4, Lh8/l;->N:Z

    if-eqz v8, :cond_f

    move-object v8, v5

    goto :goto_10

    :cond_f
    move-object v8, v9

    :goto_10
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", DEFPHONEAPP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean v8, v4, Lh8/l;->R:Z

    if-eqz v8, :cond_10

    move-object v8, v5

    goto :goto_11

    :cond_10
    move-object v8, v9

    :goto_11
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", DEFPHAPPOPTION:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-boolean v8, v4, Lh8/l;->S:Z

    if-eqz v8, :cond_11

    goto :goto_12

    :cond_11
    move-object v5, v9

    :goto_12
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 49
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "settings"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-wide v7, v4, Lh8/l;->w:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 51
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 52
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "callchecktime"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-boolean v5, v4, Lh8/l;->x:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 54
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 55
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "callmemcheck"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-wide v7, v4, Lh8/l;->z:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 57
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 58
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "lastdbcheck"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v5, v4, Lh8/l;->y:Ljava/lang/String;

    .line 60
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 61
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "debug"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget v5, v4, Lh8/l;->E:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 63
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 64
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "appvc"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v5, v4, Lh8/l;->D:Ljava/lang/String;

    .line 66
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 67
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "endcallresult"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_12
    iget-object v5, v4, Lh8/l;->g:Ljava/lang/Integer;

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_13

    :cond_13
    const/4 v5, 0x0

    :goto_13
    if-eqz v5, :cond_14

    .line 69
    iget-object v5, v4, Lh8/l;->i:Ljava/sql/Date;

    invoke-virtual {v5}, Ljava/sql/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 70
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 71
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "dt"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v5, v4, Lh8/l;->j:Ljava/lang/Integer;

    .line 73
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 74
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "calltype"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v5, v4, Lh8/l;->k:Ljava/lang/Integer;

    .line 76
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 77
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "callduration"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v5, v4, Lh8/l;->l:Ljava/lang/String;

    .line 79
    invoke-virtual {v6, v5}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v5

    .line 80
    iget-object v7, v6, Ls6/k;->a:Lt6/e;

    const-string v8, "callcountryiso"

    invoke-virtual {v7, v8, v5}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v4, v4, Lh8/l;->g:Ljava/lang/Integer;

    .line 82
    invoke-virtual {v6, v4}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v4

    .line 83
    iget-object v5, v6, Ls6/k;->a:Lt6/e;

    const-string v7, "clid"

    invoke-virtual {v5, v7, v4}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_14
    invoke-virtual {v6}, Ls6/i;->toString()Ljava/lang/String;

    .line 85
    iget-object v4, v1, Ls6/h;->a:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 86
    :cond_15
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->v(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    invoke-virtual {v1}, Ls6/i;->toString()Ljava/lang/String;

    .line 88
    invoke-virtual {v1}, Ls6/h;->size()I

    move-result v2

    if-nez v2, :cond_16

    .line 89
    invoke-virtual {p0}, Lcom/mglab/scm/api/AlarmJobIntentService;->i()V

    goto :goto_14

    .line 90
    :cond_16
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 91
    new-instance v2, Lg8/b;

    invoke-direct {v2, p0, v0}, Lg8/b;-><init>(Lcom/mglab/scm/api/AlarmJobIntentService;I)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lf8/h;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app_upload.php"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lw7/p;

    invoke-virtual {v0, v3}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lz7/a;

    const/16 v3, 0x2710

    .line 94
    invoke-interface {v0, v3}, Lz7/a;->e(I)Lz7/a;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceid"

    invoke-interface {v0, v4, v3}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object v0

    const-string v3, "gzip"

    .line 96
    invoke-interface {v0, v3, v5}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object v0

    iget-object v3, p0, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    .line 97
    invoke-virtual {v1}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lg8/d;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lz7/a;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz7/b;

    .line 98
    invoke-interface {v0}, Lz7/b;->d()Lc8/a;

    move-result-object v0

    .line 99
    check-cast v0, Lm7/g;

    invoke-virtual {v0, v2}, Lm7/g;->k(Lm7/d;)V

    goto :goto_14

    .line 100
    :cond_17
    invoke-virtual {p0}, Lcom/mglab/scm/api/AlarmJobIntentService;->i()V

    :goto_14
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc0/i;->onDestroy()V

    return-void
.end method
