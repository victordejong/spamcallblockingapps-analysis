.class Lcom/klinker/android/send_message/MmsReceivedReceiver$e;
.super Lcom/klinker/android/send_message/MmsReceivedReceiver$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/klinker/android/send_message/MmsReceivedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/mms/c/h;Lcom/android/mms/transaction/p;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/p;Lcom/google/android/mms/c/h;)V

    return-void
.end method


# virtual methods
.method protected varargs d([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const-string p1, "error"

    const-string v0, "MmsReceivedReceiver"

    :try_start_0
    new-instance v1, Lcom/google/android/mms/c/i;

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->c:Lcom/google/android/mms/c/h;

    invoke-virtual {v3}, Lcom/google/android/mms/c/h;->i()[B

    move-result-object v3

    const/16 v4, 0x81

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/mms/c/i;-><init>(I[BI)V

    invoke-static {}, Le/a/b/a;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/mms/c/k;

    iget-object v3, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v2}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v1

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->c([BLjava/lang/String;)[B

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/android/mms/c/k;

    iget-object v3, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v2}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->b([B)[B
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/klinker/android/send_message/MmsReceivedReceiver$e;->d([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
