.class public Lcom/android/mms/transaction/i;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source ""


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:[B

.field private final d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J[B)V
    .locals 0

    invoke-direct {p0, p4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object p1, p0, Lcom/android/mms/transaction/i;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/mms/transaction/i;->c:[B

    iput-wide p2, p0, Lcom/android/mms/transaction/i;->d:J

    return-void
.end method

.method private b(I)V
    .locals 5

    iget-wide v0, p0, Lcom/android/mms/transaction/i;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "progress"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-wide v2, p0, Lcom/android/mms/transaction/i;->d:J

    const-string p1, "token"

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/mms/transaction/i;->b:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/i;->b(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/transaction/i;->c:[B

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    sub-int v2, v1, v0

    const/16 v3, 0x1000

    if-le v2, v3, :cond_0

    const/16 v2, 0x1000

    :cond_0
    iget-object v3, p0, Lcom/android/mms/transaction/i;->c:[B

    invoke-virtual {p1, v3, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/i;->b(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/i;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/i;->b(I)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
