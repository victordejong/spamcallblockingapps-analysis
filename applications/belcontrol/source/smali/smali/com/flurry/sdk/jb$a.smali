.class public final Lcom/flurry/sdk/jb$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lo<",
        "Lcom/flurry/sdk/jb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/flurry/sdk/jb$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/jb$a$2;-><init>(Lcom/flurry/sdk/jb$a;Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/sdk/jb;

    invoke-direct {v0}, Lcom/flurry/sdk/jb;-><init>()V

    new-array p1, p1, [B

    iput-object p1, v0, Lcom/flurry/sdk/jb;->a:[B

    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    return-object v0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/flurry/sdk/jb;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/jb$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/jb$a$1;-><init>(Lcom/flurry/sdk/jb$a;Ljava/io/OutputStream;)V

    iget-object p1, p2, Lcom/flurry/sdk/jb;->a:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object p1, p2, Lcom/flurry/sdk/jb;->a:[B

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :cond_1
    :goto_0
    return-void
.end method
