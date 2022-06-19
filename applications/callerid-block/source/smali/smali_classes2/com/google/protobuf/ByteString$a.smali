.class Lcom/google/protobuf/ByteString$a;
.super Lcom/google/protobuf/ByteString$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/ByteString;->iterator()Lcom/google/protobuf/ByteString$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private b:I

.field private final c:I

.field final synthetic d:Lcom/google/protobuf/ByteString;


# direct methods
.method constructor <init>(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iput-object p1, p0, Lcom/google/protobuf/ByteString$a;->d:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/google/protobuf/ByteString$c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$a;->b:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/ByteString$a;->c:I

    return-void
.end method


# virtual methods
.method public a()B
    .locals 2

    iget v0, p0, Lcom/google/protobuf/ByteString$a;->b:I

    iget v1, p0, Lcom/google/protobuf/ByteString$a;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/ByteString$a;->b:I

    iget-object v1, p0, Lcom/google/protobuf/ByteString$a;->d:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/ByteString;->internalByteAt(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/ByteString$a;->b:I

    iget v1, p0, Lcom/google/protobuf/ByteString$a;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
