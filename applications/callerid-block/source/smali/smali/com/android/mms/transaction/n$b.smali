.class Lcom/android/mms/transaction/n$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/klinker/android/send_message/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/n;->e(Ljava/lang/String;)[B
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/mms/transaction/n;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/n$b;->b:Lcom/android/mms/transaction/n;

    iput-object p2, p0, Lcom/android/mms/transaction/n$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 10

    iget-object v0, p0, Lcom/android/mms/transaction/n$b;->b:Lcom/android/mms/transaction/n;

    iget-object v1, v0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/transaction/n$b;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->d()Z

    move-result v7

    iget-object v0, p0, Lcom/android/mms/transaction/n$b;->b:Lcom/android/mms/transaction/n;

    iget-object v0, v0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/mms/transaction/n$b;->b:Lcom/android/mms/transaction/n;

    iget-object v0, v0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->c()I

    move-result v9

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static/range {v1 .. v9}, Lcom/android/mms/transaction/d;->f(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/transaction/n$b;->a()[B

    move-result-object v0

    return-object v0
.end method
