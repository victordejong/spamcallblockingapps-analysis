.class Lcom/android/mms/transaction/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/klinker/android/send_message/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/n;->l(J[BLjava/lang/String;)[B
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

.field final synthetic d:Lcom/android/mms/transaction/n;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/n;JLjava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/n$a;->d:Lcom/android/mms/transaction/n;

    iput-wide p2, p0, Lcom/android/mms/transaction/n$a;->a:J

    iput-object p4, p0, Lcom/android/mms/transaction/n$a;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/transaction/n$a;->c:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 10

    iget-object v0, p0, Lcom/android/mms/transaction/n$a;->d:Lcom/android/mms/transaction/n;

    iget-object v1, v0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/transaction/n$a;->a:J

    iget-object v4, p0, Lcom/android/mms/transaction/n$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/transaction/n$a;->c:[B

    iget-object v0, v0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->d()Z

    move-result v7

    iget-object v0, p0, Lcom/android/mms/transaction/n$a;->d:Lcom/android/mms/transaction/n;

    iget-object v0, v0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/mms/transaction/n$a;->d:Lcom/android/mms/transaction/n;

    iget-object v0, v0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->c()I

    move-result v9

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lcom/android/mms/transaction/d;->f(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/transaction/n$a;->a()[B

    move-result-object v0

    return-object v0
.end method
