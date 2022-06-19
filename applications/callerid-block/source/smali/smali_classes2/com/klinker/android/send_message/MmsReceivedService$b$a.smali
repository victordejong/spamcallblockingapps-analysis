.class Lcom/klinker/android/send_message/MmsReceivedService$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/klinker/android/send_message/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/klinker/android/send_message/MmsReceivedService$b;->c(J[BLjava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/klinker/android/send_message/j$a<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[B

.field final synthetic d:Lcom/klinker/android/send_message/MmsReceivedService$b;


# direct methods
.method constructor <init>(Lcom/klinker/android/send_message/MmsReceivedService$b;JLjava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->d:Lcom/klinker/android/send_message/MmsReceivedService$b;

    iput-wide p2, p0, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->a:J

    iput-object p4, p0, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->c:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 10

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->d:Lcom/klinker/android/send_message/MmsReceivedService$b;

    iget-object v1, v0, Lcom/klinker/android/send_message/MmsReceivedService$b;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->a:J

    iget-object v4, p0, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->c:[B

    invoke-static {v0}, Lcom/klinker/android/send_message/MmsReceivedService$b;->a(Lcom/klinker/android/send_message/MmsReceivedService$b;)Lcom/android/mms/transaction/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->d()Z

    move-result v7

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->d:Lcom/klinker/android/send_message/MmsReceivedService$b;

    invoke-static {v0}, Lcom/klinker/android/send_message/MmsReceivedService$b;->a(Lcom/klinker/android/send_message/MmsReceivedService$b;)Lcom/android/mms/transaction/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->d:Lcom/klinker/android/send_message/MmsReceivedService$b;

    invoke-static {v0}, Lcom/klinker/android/send_message/MmsReceivedService$b;->a(Lcom/klinker/android/send_message/MmsReceivedService$b;)Lcom/android/mms/transaction/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->c()I

    move-result v9

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lcom/android/mms/transaction/d;->f(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/klinker/android/send_message/MmsReceivedService$b$a;->a()[B

    move-result-object v0

    return-object v0
.end method
