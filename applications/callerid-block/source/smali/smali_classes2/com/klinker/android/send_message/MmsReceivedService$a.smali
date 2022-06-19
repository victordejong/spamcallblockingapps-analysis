.class Lcom/klinker/android/send_message/MmsReceivedService$a;
.super Lcom/klinker/android/send_message/MmsReceivedService$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/klinker/android/send_message/MmsReceivedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final e:Lcom/google/android/mms/c/t;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/mms/c/h;Lcom/android/mms/transaction/p;Lcom/google/android/mms/c/t;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/klinker/android/send_message/MmsReceivedService$b;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/p;Lcom/google/android/mms/c/h;)V

    iput-object p4, p0, Lcom/klinker/android/send_message/MmsReceivedService$a;->e:Lcom/google/android/mms/c/t;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    const-string v0, "error"

    const-string v1, "MmsReceivedService"

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedService$a;->e:Lcom/google/android/mms/c/t;

    invoke-virtual {v2}, Lcom/google/android/mms/c/t;->r()[B

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v3, Lcom/google/android/mms/c/a;

    const/16 v4, 0x12

    invoke-direct {v3, v4, v2}, Lcom/google/android/mms/c/a;-><init>(I[B)V

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/klinker/android/send_message/j;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/google/android/mms/c/e;

    invoke-direct {v4, v2}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/mms/c/f;->c(Lcom/google/android/mms/c/e;)V

    invoke-static {}, Le/a/b/a;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/mms/c/k;

    iget-object v4, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->a:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v2}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v2

    iget-object v3, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/klinker/android/send_message/MmsReceivedService$b;->e([BLjava/lang/String;)[B

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/android/mms/c/k;

    iget-object v4, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->a:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v2}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/klinker/android/send_message/MmsReceivedService$b;->d([B)[B
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    invoke-static {v1, v0, v2}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
