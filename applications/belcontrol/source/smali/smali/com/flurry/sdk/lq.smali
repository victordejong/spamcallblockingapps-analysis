.class public final Lcom/flurry/sdk/lq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lo<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/flurry/sdk/lr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/lr<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/flurry/sdk/lr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/flurry/sdk/lr<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    iput p2, p0, Lcom/flurry/sdk/lq;->b:I

    iput-object p3, p0, Lcom/flurry/sdk/lq;->c:Lcom/flurry/sdk/lr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/lq;->c:Lcom/flurry/sdk/lr;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/lq$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/lq$2;-><init>(Lcom/flurry/sdk/lq;Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iget-object v1, p0, Lcom/flurry/sdk/lq;->c:Lcom/flurry/sdk/lr;

    invoke-interface {v1, p1}, Lcom/flurry/sdk/lr;->a(I)Lcom/flurry/sdk/lo;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/flurry/sdk/lo;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/lq;->c:Lcom/flurry/sdk/lr;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/lq$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/lq$1;-><init>(Lcom/flurry/sdk/lq;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/flurry/sdk/lq;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget p1, p0, Lcom/flurry/sdk/lq;->b:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/flurry/sdk/lq;->c:Lcom/flurry/sdk/lr;

    iget v1, p0, Lcom/flurry/sdk/lq;->b:I

    invoke-interface {p1, v1}, Lcom/flurry/sdk/lr;->a(I)Lcom/flurry/sdk/lo;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/flurry/sdk/lo;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :cond_1
    :goto_0
    return-void
.end method
