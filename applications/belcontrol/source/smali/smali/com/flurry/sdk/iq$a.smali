.class public final Lcom/flurry/sdk/iq$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lo<",
        "Lcom/flurry/sdk/iq;",
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
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/flurry/sdk/iq$a$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/iq$a$2;-><init>(Lcom/flurry/sdk/iq$a;Ljava/io/InputStream;)V

    new-instance p1, Lcom/flurry/sdk/iq;

    invoke-direct {p1}, Lcom/flurry/sdk/iq;-><init>()V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/flurry/sdk/iq;->a:J

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p1, Lcom/flurry/sdk/iq;->b:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/flurry/sdk/iq;->c:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/flurry/sdk/iq;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/iq$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/iq$a$1;-><init>(Lcom/flurry/sdk/iq$a;Ljava/io/OutputStream;)V

    iget-wide v1, p2, Lcom/flurry/sdk/iq;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean p1, p2, Lcom/flurry/sdk/iq;->b:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object p1, p2, Lcom/flurry/sdk/iq;->c:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p2, Lcom/flurry/sdk/iq;->c:[B

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :cond_1
    :goto_0
    return-void
.end method
