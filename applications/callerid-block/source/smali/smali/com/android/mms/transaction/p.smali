.class public Lcom/android/mms/transaction/p;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/p;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionSettings: apnName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mms"

    invoke-static {v0, p2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/klinker/android/send_message/j;->f(Landroid/content/Context;)Lcom/klinker/android/send_message/f;

    move-result-object p1

    sput-object p1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    :cond_0
    sget-object p1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {p1}, Lcom/klinker/android/send_message/f;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/NetworkUtilsHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/mms/transaction/p;->a:Ljava/lang/String;

    sget-object p1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {p1}, Lcom/klinker/android/send_message/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/NetworkUtilsHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/mms/transaction/p;->b:Ljava/lang/String;

    sget-object p1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {p1}, Lcom/klinker/android/send_message/f;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Le/a/b/a;->q(Ljava/lang/String;)V

    const-string p1, "set user agent"

    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {p1}, Lcom/klinker/android/send_message/f;->q()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Le/a/b/a;->p(Ljava/lang/String;)V

    const-string p1, "set user agent profile url"

    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {p1}, Lcom/klinker/android/send_message/f;->o()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Le/a/b/a;->o(Ljava/lang/String;)V

    const-string p1, "set user agent profile tag name"

    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/transaction/p;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_0
    sget-object p1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {p1}, Lcom/klinker/android/send_message/f;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/mms/transaction/p;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not get proxy: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v1}, Lcom/klinker/android/send_message/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/p;->c:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/mms/transaction/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/transaction/p;->b:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/transaction/p;->c:I

    const/4 p1, 0x2

    const-string p2, "Mms"

    invoke-static {p2, p1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TransactionSettings: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/mms/transaction/p;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " proxyAddress: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/mms/transaction/p;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " proxyPort: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/mms/transaction/p;->c:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/p;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/p;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
