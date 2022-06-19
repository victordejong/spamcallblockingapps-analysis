.class public Le/a/b/f/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static e:Le/a/b/f/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/content/SharedPreferences;

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/f/a;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Le/a/b/f/a;->b:Landroid/os/Handler;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Le/a/b/f/a;->c:Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Le/a/b/f/a;->c(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result p1

    iput-boolean p1, p0, Le/a/b/f/a;->d:Z

    return-void
.end method

.method static synthetic a(Le/a/b/f/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Le/a/b/f/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Le/a/b/f/a;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/f/a;->f(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 0

    invoke-static {p0}, Le/a/b/f/a;->i(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1, p0}, Le/a/b/f/a;->d(Landroid/content/SharedPreferences;Z)Z

    move-result p0

    return p0
.end method

.method static d(Landroid/content/SharedPreferences;Z)Z
    .locals 2

    const-string v0, "auto_download_mms"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e()Le/a/b/f/a;
    .locals 2

    sget-object v0, Le/a/b/f/a;->e:Le/a/b/f/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Le/a/b/f/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/mms/c/p;->j(Landroid/net/Uri;)Lcom/google/android/mms/c/f;

    move-result-object p1

    check-cast p1, Lcom/google/android/mms/c/h;

    invoke-virtual {p1}, Lcom/google/android/mms/c/h;->h()Lcom/google/android/mms/c/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mms/c/e;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/a/b/f/a;->a:Landroid/content/Context;

    sget v0, Lcom/klinker/android/send_message/d;->no_subject:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Le/a/b/f/a;->a:Landroid/content/Context;

    sget v1, Lcom/klinker/android/send_message/d;->unknown_sender:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/a/b/f/a;->a:Landroid/content/Context;

    sget v2, Lcom/klinker/android/send_message/d;->dl_failure_notification:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static g(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Le/a/b/f/a;->e:Le/a/b/f/a;

    if-eqz v0, :cond_0

    const-string v0, "Mms"

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Le/a/b/f/a;

    invoke-direct {v0, p0}, Le/a/b/f/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Le/a/b/f/a;->e:Le/a/b/f/a;

    return-void
.end method

.method static i(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "gsm.operator.isroaming"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Le/a/b/e/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public h()Z
    .locals 1

    iget-boolean v0, p0, Le/a/b/f/a;->d:Z

    return v0
.end method

.method public j(Landroid/net/Uri;I)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Le/a/b/f/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/mms/c/p;->j(Landroid/net/Uri;)Lcom/google/android/mms/c/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/c/h;

    invoke-virtual {v0}, Lcom/google/android/mms/c/h;->g()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/16 v0, 0x81

    if-eq p2, v0, :cond_0

    const/16 v0, 0x88

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object p2, p0, Le/a/b/f/a;->b:Landroid/os/Handler;

    new-instance v0, Le/a/b/f/a$a;

    invoke-direct {v0, p0}, Le/a/b/f/a$a;-><init>(Le/a/b/f/a;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Le/a/b/f/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1, v1}, Lc/a/a/a;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/16 v0, 0x87

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Le/a/b/f/a;->b:Landroid/os/Handler;

    new-instance v1, Le/a/b/f/a$b;

    invoke-direct {v1, p0, p1}, Le/a/b/f/a$b;-><init>(Le/a/b/f/a;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Le/a/b/f/a;->d:Z

    if-nez v0, :cond_3

    or-int/lit8 p2, p2, 0x4

    :cond_3
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "st"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Le/a/b/f/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lc/a/a/a;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mms"

    invoke-static {v0, p2, p1}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public k(I)V
    .locals 2

    iget-object v0, p0, Le/a/b/f/a;->b:Landroid/os/Handler;

    new-instance v1, Le/a/b/f/a$c;

    invoke-direct {v1, p0, p1}, Le/a/b/f/a$c;-><init>(Le/a/b/f/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
