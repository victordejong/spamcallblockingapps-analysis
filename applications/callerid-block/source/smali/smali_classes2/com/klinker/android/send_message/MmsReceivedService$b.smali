.class abstract Lcom/klinker/android/send_message/MmsReceivedService$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/klinker/android/send_message/MmsReceivedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Lcom/android/mms/transaction/p;

.field final c:Lcom/google/android/mms/c/h;

.field final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/mms/transaction/p;Lcom/google/android/mms/c/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->b:Lcom/android/mms/transaction/p;

    iput-object p3, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->c:Lcom/google/android/mms/c/h;

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/mms/c/h;->f()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/klinker/android/send_message/MmsReceivedService$b;)Lcom/android/mms/transaction/p;
    .locals 0

    iget-object p0, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->b:Lcom/android/mms/transaction/p;

    return-object p0
.end method

.method private c(J[BLjava/lang/String;)[B
    .locals 10

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/n;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->a:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->b:Lcom/android/mms/transaction/p;

    invoke-virtual {v1}, Lcom/android/mms/transaction/p;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/klinker/android/send_message/MmsReceivedService$b$a;

    move-object v2, v8

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/klinker/android/send_message/MmsReceivedService$b$a;-><init>(Lcom/klinker/android/send_message/MmsReceivedService$b;JLjava/lang/String;[B)V

    invoke-static {v0, p4, v1, v8}, Lcom/klinker/android/send_message/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/klinker/android/send_message/j$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

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
.method public abstract b()V
.end method

.method d([B)[B
    .locals 3

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedService$b;->b:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->a()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/klinker/android/send_message/MmsReceivedService$b;->c(J[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method e([BLjava/lang/String;)[B
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/klinker/android/send_message/MmsReceivedService$b;->c(J[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
