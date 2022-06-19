.class abstract Lcom/klinker/android/send_message/MmsReceivedReceiver$c;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/klinker/android/send_message/MmsReceivedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/android/mms/transaction/p;

.field final c:Lcom/google/android/mms/c/h;

.field final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/mms/transaction/p;Lcom/google/android/mms/c/h;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->b:Lcom/android/mms/transaction/p;

    iput-object p3, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->c:Lcom/google/android/mms/c/h;

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/mms/c/h;->f()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->d:Ljava/lang/String;

    return-void
.end method

.method private a(J[BLjava/lang/String;)[B
    .locals 11

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/n;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a:Landroid/content/Context;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, p1

    move-object v4, p4

    move-object v5, p3

    invoke-static/range {v1 .. v9}, Lcom/android/mms/transaction/d;->f(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->b:Lcom/android/mms/transaction/p;

    invoke-virtual {v1}, Lcom/android/mms/transaction/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/klinker/android/send_message/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a:Landroid/content/Context;

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->b:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->d()Z

    move-result v8

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->b:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->b:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->c()I

    move-result v10

    move-wide v3, p1

    move-object v5, p4

    move-object v6, p3

    invoke-static/range {v2 .. v10}, Lcom/android/mms/transaction/d;->f(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot establish route: mmscUrl is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/mms/MmsException;

    invoke-direct {p1}, Lcom/google/android/mms/MmsException;-><init>()V

    throw p1
.end method


# virtual methods
.method b([B)[B
    .locals 3

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->b:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->a()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a(J[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method c([BLjava/lang/String;)[B
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a(J[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
