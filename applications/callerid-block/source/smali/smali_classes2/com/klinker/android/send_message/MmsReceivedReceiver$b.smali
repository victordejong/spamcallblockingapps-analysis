.class Lcom/klinker/android/send_message/MmsReceivedReceiver$b;
.super Lcom/klinker/android/send_message/MmsReceivedReceiver$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/klinker/android/send_message/MmsReceivedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final e:Lcom/google/android/mms/c/t;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/mms/c/h;Lcom/android/mms/transaction/p;Lcom/google/android/mms/c/t;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/p;Lcom/google/android/mms/c/h;)V

    iput-object p4, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$b;->e:Lcom/google/android/mms/c/t;

    return-void
.end method


# virtual methods
.method protected varargs d([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const-string p1, "error"

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$b;->e:Lcom/google/android/mms/c/t;

    invoke-virtual {v0}, Lcom/google/android/mms/c/t;->r()[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending ACK to MMSC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->b:Lcom/android/mms/transaction/p;

    invoke-virtual {v2}, Lcom/android/mms/transaction/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MmsReceivedReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/google/android/mms/c/a;

    const/16 v3, 0x12

    invoke-direct {v1, v3, v0}, Lcom/google/android/mms/c/a;-><init>(I[B)V

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/klinker/android/send_message/j;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/google/android/mms/c/e;

    invoke-direct {v3, v0}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/mms/c/f;->c(Lcom/google/android/mms/c/e;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/mms/c/e;

    const-string v3, ""

    invoke-direct {v0, v3}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/mms/c/f;->c(Lcom/google/android/mms/c/e;)V

    :goto_0
    invoke-static {}, Le/a/b/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/mms/c/k;

    iget-object v3, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v0}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v0

    iget-object v1, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->c([BLjava/lang/String;)[B

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/android/mms/c/k;

    iget-object v3, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v0}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;->b([B)[B
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/klinker/android/send_message/MmsReceivedReceiver$b;->d([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
