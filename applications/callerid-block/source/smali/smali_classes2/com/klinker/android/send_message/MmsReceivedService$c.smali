.class Lcom/klinker/android/send_message/MmsReceivedService$c;
.super Lcom/klinker/android/send_message/MmsReceivedService$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/klinker/android/send_message/MmsReceivedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/mms/c/h;Lcom/android/mms/transaction/p;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/klinker/android/send_message/MmsReceivedService$b;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/p;Lcom/google/android/mms/c/h;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/google/android/mms/c/i;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->c:Lcom/google/android/mms/c/h;

    invoke-virtual {v2}, Lcom/google/android/mms/c/h;->i()[B

    move-result-object v2

    const/16 v3, 0x81

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mms/c/i;-><init>(I[BI)V

    invoke-static {}, Le/a/b/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/mms/c/k;

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v1}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v0

    iget-object v1, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/klinker/android/send_message/MmsReceivedService$b;->e([BLjava/lang/String;)[B

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/mms/c/k;

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v1}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/klinker/android/send_message/MmsReceivedService$b;->d([B)[B
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MmsReceivedService"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
