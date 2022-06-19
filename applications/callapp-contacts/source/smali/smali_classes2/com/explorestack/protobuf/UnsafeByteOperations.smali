.class public final Lcom/explorestack/protobuf/UnsafeByteOperations;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unsafeWrap(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/ByteString;
    .locals 0

    .line 98
    invoke-static {p0}, Lcom/explorestack/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static unsafeWrap([B)Lcom/explorestack/protobuf/ByteString;
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static unsafeWrap([BII)Lcom/explorestack/protobuf/ByteString;
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/ByteString;->wrap([BII)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static unsafeWriteTo(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ByteString;->writeTo(Lcom/explorestack/protobuf/ByteOutput;)V

    return-void
.end method
