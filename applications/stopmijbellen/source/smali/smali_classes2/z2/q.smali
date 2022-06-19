.class public final synthetic Lz2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/r$b;
.implements Lw5/a$a;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/SuccessContinuation;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Ls4/g;
.implements Lm7/d;
.implements Ld9/c;
.implements Le2/g$c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz2/q;->a:I

    iput-object p1, p0, Lz2/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/api/AlarmJobIntentService;

    check-cast p2, Ls6/k;

    sget v0, Lcom/mglab/scm/api/AlarmJobIntentService;->l:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "fstart"

    .line 3
    invoke-static {p2, v1, v0}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 4
    invoke-static {p2, v1, v0}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "resend_dev"

    .line 6
    invoke-static {p2, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/mglab/scm/api/AlarmJobIntentService;->k()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    const/4 p2, -0x3

    invoke-static {p2, p1}, Landroid/support/v4/media/b;->c(ILba/b;)Lba/b;

    move-result-object p1

    const-string p2, ".uploadDev no result"

    .line 10
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/a;->l(Ljava/lang/String;ILba/b;)V

    :goto_0
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const-string v0, "DELETE FROM events WHERE num_attempts >= 16"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lc9/f;)V
    .locals 4

    iget-object p1, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast p1, Ls6/h;

    sget v0, Lcom/mglab/scm/api/AlarmJobIntentService;->l:I

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ls6/h;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ls6/h;->e(I)Ls6/i;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->c()Ls6/k;

    move-result-object v1

    .line 3
    new-instance v2, Lh8/r;

    invoke-direct {v2}, Lh8/r;-><init>()V

    const-string v3, "id"

    .line 4
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->a()I

    move-result v3

    iput v3, v2, Lh8/r;->b:I

    const-string v3, "hash"

    .line 5
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lh8/r;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {v2}, Lb9/a;->a()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lw5/b;)V
    .locals 7

    iget-object v0, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast v0, La5/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-interface {p1}, Lw5/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx4/a;

    .line 2
    new-instance v1, Lf/t;

    invoke-direct {v1, p1}, Lf/t;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v2, La5/b;

    invoke-direct {v2}, La5/b;-><init>()V

    const-string v3, "clx"

    .line 4
    invoke-interface {p1, v3, v2}, Lx4/a;->a(Ljava/lang/String;Lx4/a$b;)Lx4/a$a;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v3, :cond_1

    const-string v3, "FirebaseCrashlytics"

    .line 5
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const-string v6, "crash"

    .line 6
    invoke-interface {p1, v6, v2}, Lx4/a;->a(Ljava/lang/String;Lx4/a$b;)Lx4/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v6, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 7
    invoke-static {v3, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v3, p1

    :cond_1
    if-eqz v3, :cond_3

    const-string p1, "FirebaseCrashlytics"

    .line 8
    invoke-static {p1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    new-instance p1, Lc5/d;

    invoke-direct {p1}, Lc5/d;-><init>()V

    .line 10
    new-instance v3, Lc5/c;

    const/16 v4, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, v1, v4, v5}, Lc5/c;-><init>(Lf/t;ILjava/util/concurrent/TimeUnit;)V

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, v0, La5/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld5/a;

    .line 13
    invoke-virtual {p1, v4}, Lc5/d;->d(Ld5/a;)V

    goto :goto_0

    .line 14
    :cond_2
    iput-object p1, v2, La5/b;->b:Lc5/b;

    .line 15
    iput-object v3, v2, La5/b;->a:Lc5/b;

    .line 16
    iput-object p1, v0, La5/a;->c:Ld5/b;

    .line 17
    iput-object v3, v0, La5/a;->b:Lc5/a;

    .line 18
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    const-string p1, "Could not register Firebase Analytics listener; a listener is already registered."

    const-string v0, "FirebaseCrashlytics"

    .line 19
    invoke-static {v0, p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 10

    iget p1, p0, Lz2/q;->a:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/mglab/scm/visual/FragmentStat$a;->b:I

    const-string v0, "rate_100"

    .line 1
    invoke-static {p1, v0, p2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/FragmentPreferences;

    .line 3
    iget-object p1, p1, Lcom/mglab/scm/visual/FragmentPreferences;->pinEntry:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void

    .line 4
    :goto_0
    iget-object p1, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lh8/c;

    const-class v2, Lh8/w;

    sget-object v3, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v4, 0x7f0901e8

    invoke-virtual {v3, v4}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget v4, p1, Lcom/mglab/scm/visual/c;->d:I

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eq v4, p2, :cond_5

    if-eq v4, v5, :cond_1

    const/4 v1, 0x5

    if-eq v4, v1, :cond_0

    goto/16 :goto_5

    .line 7
    :cond_0
    iget-object v1, p1, Lcom/mglab/scm/visual/c;->f:Lcom/mglab/scm/visual/CallItem;

    .line 8
    iget-object v1, v1, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v1, v1, Lh8/l;->b:I

    .line 9
    const-class v1, Lh8/l;

    .line 10
    new-instance v2, Lw8/q;

    invoke-direct {v2, v1}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v1, p2, [Lw8/n;

    .line 11
    sget-object v3, Lh8/m;->n:Lx8/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v1

    new-array p2, p2, [Lw8/n;

    sget-object v2, Lh8/m;->g:Lx8/b;

    iget-object v3, p1, Lcom/mglab/scm/visual/c;->f:Lcom/mglab/scm/visual/CallItem;

    .line 12
    iget-object v3, v3, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v3, v3, Lh8/l;->b:I

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, p2, v0

    .line 14
    new-instance v0, Lw8/r;

    invoke-direct {v0, v1, p2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 15
    invoke-virtual {v0}, Lw8/r;->i()Lc9/g;

    .line 16
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v0, Lk8/j;

    iget-object v1, p1, Lcom/mglab/scm/visual/c;->f:Lcom/mglab/scm/visual/CallItem;

    invoke-direct {v0, v1}, Lk8/j;-><init>(Lcom/mglab/scm/visual/CallItem;)V

    invoke-virtual {p2, v0}, Lba/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 17
    :cond_1
    iget-boolean v2, p1, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v2, :cond_2

    .line 18
    new-instance v2, Lw8/f;

    invoke-direct {v2}, Lw8/f;-><init>()V

    .line 19
    new-instance v4, Lw8/g;

    invoke-direct {v4, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v1, v5, [Lw8/n;

    .line 20
    sget-object v2, Lh8/d;->g:Lx8/b;

    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v0, Lh8/d;->j:Lx8/b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v1, p2

    .line 21
    new-instance v0, Lw8/r;

    invoke-direct {v0, v4, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 22
    invoke-virtual {v0}, Lw8/r;->i()Lc9/g;

    goto :goto_2

    :cond_2
    new-array v2, v0, [Lx8/a;

    .line 23
    new-instance v4, Lw8/o;

    invoke-direct {v4, v2}, Lw8/o;-><init>([Lx8/a;)V

    .line 24
    new-instance v2, Lw8/g;

    invoke-direct {v2, v4, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v4, p2, [Lw8/n;

    .line 25
    sget-object v7, Lh8/d;->j:Lx8/b;

    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v7

    aput-object v7, v4, v0

    .line 27
    new-instance v7, Lw8/r;

    invoke-direct {v7, v2, v4}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 28
    invoke-virtual {v7}, Lw8/r;->l()Ljava/util/List;

    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/c;

    .line 30
    iget-object v7, v4, Lh8/c;->c:Ljava/lang/String;

    invoke-static {v7, v3}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 31
    new-instance v7, Lw8/f;

    invoke-direct {v7}, Lw8/f;-><init>()V

    .line 32
    new-instance v8, Lw8/g;

    invoke-direct {v8, v7, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v7, v5, [Lw8/n;

    .line 33
    sget-object v9, Lh8/d;->g:Lx8/b;

    iget-object v4, v4, Lh8/c;->c:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v7, v0

    sget-object v4, Lh8/d;->j:Lx8/b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lx8/b;->j(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v7, p2

    .line 34
    new-instance v4, Lw8/r;

    invoke-direct {v4, v8, v7}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 35
    invoke-virtual {v4}, Lw8/r;->i()Lc9/g;

    goto :goto_1

    .line 36
    :cond_4
    :goto_2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/a;

    invoke-direct {v1, p2}, Lk8/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 37
    :cond_5
    iget-boolean v1, p1, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v1, :cond_6

    .line 38
    new-instance v1, Lw8/f;

    invoke-direct {v1}, Lw8/f;-><init>()V

    .line 39
    new-instance v4, Lw8/g;

    invoke-direct {v4, v1, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v1, v5, [Lw8/n;

    .line 40
    sget-object v2, Lh8/x;->g:Lx8/b;

    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v0, Lh8/x;->j:Lx8/b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v1, p2

    .line 41
    new-instance v0, Lw8/r;

    invoke-direct {v0, v4, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 42
    invoke-virtual {v0}, Lw8/r;->i()Lc9/g;

    goto :goto_4

    :cond_6
    new-array v1, v0, [Lx8/a;

    .line 43
    new-instance v4, Lw8/o;

    invoke-direct {v4, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 44
    new-instance v1, Lw8/g;

    invoke-direct {v1, v4, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v4, p2, [Lw8/n;

    .line 45
    sget-object v7, Lh8/x;->j:Lx8/b;

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v7

    aput-object v7, v4, v0

    .line 47
    new-instance v7, Lw8/r;

    invoke-direct {v7, v1, v4}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 48
    invoke-virtual {v7}, Lw8/r;->l()Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/w;

    .line 50
    iget-object v7, v4, Lh8/w;->c:Ljava/lang/String;

    invoke-static {v7, v3}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 51
    new-instance v7, Lw8/f;

    invoke-direct {v7}, Lw8/f;-><init>()V

    .line 52
    new-instance v8, Lw8/g;

    invoke-direct {v8, v7, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v7, v5, [Lw8/n;

    .line 53
    sget-object v9, Lh8/x;->g:Lx8/b;

    iget-object v4, v4, Lh8/w;->c:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v7, v0

    sget-object v4, Lh8/x;->j:Lx8/b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lx8/b;->j(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v7, p2

    .line 54
    new-instance v4, Lw8/r;

    invoke-direct {v4, v8, v7}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 55
    invoke-virtual {v4}, Lw8/r;->i()Lc9/g;

    goto :goto_3

    .line 56
    :cond_8
    :goto_4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-static {p2, v0}, La6/h;->m(ILba/b;)V

    .line 57
    :goto_5
    iget-object p2, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/mglab/scm/visual/c;->b:Landroid/view/View;

    const v0, 0x7f1100c3

    invoke-static {p2, p1, v0}, Lf8/g;->K(Landroid/content/Context;Landroid/view/View;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast v0, Lf8/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onConsentFormLoadSuccess(Ls4/b;)V
    .locals 3

    iget-object v0, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/mglab/scm/MainActivity;

    .line 1
    iget-object v1, v0, Lcom/mglab/scm/MainActivity;->r:Ls4/c;

    invoke-interface {v1}, Ls4/c;->getConsentStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2
    new-instance v1, Lf8/m;

    invoke-direct {v1, v0}, Lf8/m;-><init>(Lcom/mglab/scm/MainActivity;)V

    invoke-interface {p1, v0, v1}, Ls4/b;->show(Landroid/app/Activity;Ls4/b$a;)V

    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->b(Lcom/google/firebase/perf/config/RemoteConfigManager;Ljava/lang/Exception;)V

    return-void
.end method

.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 5

    iget-object v0, p0, Lz2/q;->b:Ljava/lang/Object;

    check-cast v0, Lq6/b;

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, v0, Lq6/b;->d:Lr6/d;

    invoke-virtual {p1}, Lr6/d;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 2
    iget-object v1, v0, Lq6/b;->e:Lr6/d;

    invoke-virtual {v1}, Lr6/d;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/tasks/Task;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    iget-object v3, v0, Lq6/b;->c:Ljava/util/concurrent/Executor;

    new-instance v4, Lx2/a;

    invoke-direct {v4, v0, p1, v1}, Lx2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
