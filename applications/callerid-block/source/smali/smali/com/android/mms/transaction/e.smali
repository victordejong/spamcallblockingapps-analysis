.class public Lcom/android/mms/transaction/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/net/Uri;

.field private final c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/transaction/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/transaction/e;->b:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/android/mms/transaction/e;->c:J

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null message URI."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lcom/google/android/mms/c/v;)V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/transaction/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/32 v1, 0x93a80

    invoke-virtual {p1, v1, v2}, Lcom/google/android/mms/c/v;->y(J)V

    const/16 v1, 0x81

    invoke-virtual {p1, v1}, Lcom/google/android/mms/c/g;->m(I)V

    const-string v2, "delivery_reports"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/16 v5, 0x80

    if-eqz v4, :cond_0

    const/16 v4, 0x80

    goto :goto_0

    :cond_0
    const/16 v4, 0x81

    :goto_0
    invoke-virtual {p1, v4}, Lcom/google/android/mms/c/v;->x(I)V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "read_reports"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x80

    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/android/mms/c/v;->B(I)V

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 8

    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/mms/transaction/e;->b:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/a/b/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/e;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/p;->j(Landroid/net/Uri;)Lcom/google/android/mms/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/mms/c/f;->a()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/google/android/mms/c/v;

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/e;->b(Lcom/google/android/mms/c/v;)V

    const-string v4, "personal"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/c/v;->z([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/mms/c/g;->l(J)V

    iget-wide v4, p0, Lcom/android/mms/transaction/e;->c:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/mms/c/v;->A(J)V

    iget-object v4, p0, Lcom/android/mms/transaction/e;->b:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3}, Lcom/google/android/mms/c/p;->z(Landroid/net/Uri;Lcom/google/android/mms/c/v;)V

    iget-object v3, p0, Lcom/android/mms/transaction/e;->b:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/mms/transaction/e;->b:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    const/4 v5, 0x7

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "proto_type"

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "msg_id"

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1}, Lcom/google/android/mms/c/f;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "msg_type"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "err_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "err_code"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "retry_index"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "due_time"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/mms/transaction/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v5, v0}, Lcom/google/android/mms/e/f;->c(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/e;->b:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/c/p;->n(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    :goto_0
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1, p2}, Le/a/b/f/d;->b(Ljava/lang/Object;J)V

    iget-object p1, p0, Lcom/android/mms/transaction/e;->a:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/transaction/e;->a:Landroid/content/Context;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    new-instance p1, Lcom/google/android/mms/MmsException;

    const-string p2, "transaction service not registered in manifest"

    invoke-direct {p1, p2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/mms/MmsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/mms/c/f;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
