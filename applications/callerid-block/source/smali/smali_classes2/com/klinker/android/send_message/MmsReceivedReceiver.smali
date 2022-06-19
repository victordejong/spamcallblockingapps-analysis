.class public abstract Lcom/klinker/android/send_message/MmsReceivedReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/klinker/android/send_message/MmsReceivedReceiver$d;,
        Lcom/klinker/android/send_message/MmsReceivedReceiver$b;,
        Lcom/klinker/android/send_message/MmsReceivedReceiver$e;,
        Lcom/klinker/android/send_message/MmsReceivedReceiver$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/klinker/android/send_message/MmsReceivedReceiver;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/klinker/android/send_message/MmsReceivedReceiver;Landroid/content/Context;Landroid/content/Intent;[B)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/klinker/android/send_message/MmsReceivedReceiver;->f(Landroid/content/Context;Landroid/content/Intent;[B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/klinker/android/send_message/MmsReceivedReceiver;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic c(Lcom/klinker/android/send_message/MmsReceivedReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/klinker/android/send_message/MmsReceivedReceiver;->g(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/mms/c/h;
    .locals 1

    invoke-static {p0}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object p0

    const-string v0, "notification_ind_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/p;->j(Landroid/net/Uri;)Lcom/google/android/mms/c/f;

    move-result-object p0

    check-cast p0, Lcom/google/android/mms/c/h;

    return-object p0
.end method

.method private f(Landroid/content/Context;Landroid/content/Intent;[B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[B)",
            "Ljava/util/List<",
            "Lcom/klinker/android/send_message/MmsReceivedReceiver$c;",
            ">;"
        }
    .end annotation

    array-length v0, p3

    const-string v1, "MmsReceivedReceiver"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "MmsReceivedReceiver.sendNotification blank response"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/klinker/android/send_message/MmsReceivedReceiver;->d()Lcom/klinker/android/send_message/MmsReceivedReceiver$d;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "No MMSC information set, so no notification tasks will be able to complete"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    new-instance v0, Lcom/google/android/mms/c/n;

    new-instance v3, Le/a/b/e/c$b;

    new-instance v4, Le/a/b/e/c;

    invoke-direct {v4, p1}, Le/a/b/e/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4, v2}, Le/a/b/e/c$b;-><init>(Le/a/b/e/c;Landroid/os/Bundle;)V

    invoke-virtual {v3}, Le/a/b/e/c$b;->m()Z

    move-result v3

    invoke-direct {v0, p3, v3}, Lcom/google/android/mms/c/n;-><init>([BZ)V

    invoke-virtual {v0}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object p3

    if-eqz p3, :cond_3

    instance-of v0, p3, Lcom/google/android/mms/c/t;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p1, p2}, Lcom/klinker/android/send_message/MmsReceivedReceiver;->e(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/mms/c/h;

    move-result-object p2

    invoke-virtual {p0}, Lcom/klinker/android/send_message/MmsReceivedReceiver;->d()Lcom/klinker/android/send_message/MmsReceivedReceiver$d;

    move-result-object v0

    new-instance v3, Lcom/android/mms/transaction/p;

    iget-object v4, v0, Lcom/klinker/android/send_message/MmsReceivedReceiver$d;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/klinker/android/send_message/MmsReceivedReceiver$d;->b:Ljava/lang/String;

    iget v0, v0, Lcom/klinker/android/send_message/MmsReceivedReceiver$d;->c:I

    invoke-direct {v3, v4, v5, v0}, Lcom/android/mms/transaction/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/klinker/android/send_message/MmsReceivedReceiver$b;

    check-cast p3, Lcom/google/android/mms/c/t;

    invoke-direct {v4, p1, p2, v3, p3}, Lcom/klinker/android/send_message/MmsReceivedReceiver$b;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/h;Lcom/android/mms/transaction/p;Lcom/google/android/mms/c/t;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/klinker/android/send_message/MmsReceivedReceiver$e;

    invoke-direct {p3, p1, p2, v3}, Lcom/klinker/android/send_message/MmsReceivedReceiver$e;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/h;Lcom/android/mms/transaction/p;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "error"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_3
    :goto_0
    const-string p1, "MmsReceivedReceiver.sendNotification failed to parse pdu"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    const-string v0, "android.telephony.extra.MMS_HTTP_STATUS"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x194

    if-eq v0, v2, :cond_0

    const/16 v2, 0x190

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "location_url"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    const-string p2, "m_type=? AND ct_l =?"

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/mms/e/f;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public d()Lcom/klinker/android/send_message/MmsReceivedReceiver$d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract h(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract i(Landroid/content/Context;Landroid/net/Uri;)V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "MmsReceivedReceiver"

    const-string v1, "MMS has finished downloading, persisting it to the database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "file_path"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v7

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;-><init>(Lcom/klinker/android/send_message/MmsReceivedReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
