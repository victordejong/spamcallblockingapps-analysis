.class public Lcom/klinker/android/send_message/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/klinker/android/send_message/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Landroid/graphics/Bitmap;

.field private e:[Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/klinker/android/send_message/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/klinker/android/send_message/c;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/klinker/android/send_message/c;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/klinker/android/send_message/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/klinker/android/send_message/c;->c:[Ljava/lang/String;

    const/4 p1, 0x0

    new-array p2, p1, [Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/klinker/android/send_message/c;->d:[Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/klinker/android/send_message/c;->b:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/klinker/android/send_message/c;->g:Z

    iput p1, p0, Lcom/klinker/android/send_message/c;->h:I

    return-void
.end method

.method public static d(Landroid/graphics/Bitmap;)[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    if-nez p0, :cond_0

    const-string p0, "Message"

    const-string v1, "image is null, returning byte array of size 0"

    invoke-static {p0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw p0
.end method


# virtual methods
.method public a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/klinker/android/send_message/c;->f:Ljava/util/List;

    new-instance v1, Lcom/klinker/android/send_message/c$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/klinker/android/send_message/c$a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/klinker/android/send_message/c;->c([BLjava/lang/String;)V

    return-void
.end method

.method public c([BLjava/lang/String;)V
    .locals 1

    const-string v0, "video/3gpp"

    invoke-virtual {p0, p1, v0, p2}, Lcom/klinker/android/send_message/c;->a([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/c;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/klinker/android/send_message/c;->h:I

    return v0
.end method

.method public g()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/c;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public h()[Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/c;->d:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/klinker/android/send_message/c$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/klinker/android/send_message/c;->f:Ljava/util/List;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/klinker/android/send_message/c;->g:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public m(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/klinker/android/send_message/c;->d:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method
