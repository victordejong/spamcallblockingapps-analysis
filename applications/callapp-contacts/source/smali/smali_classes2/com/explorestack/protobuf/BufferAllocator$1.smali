.class final Lcom/explorestack/protobuf/BufferAllocator$1;
.super Lcom/explorestack/protobuf/BufferAllocator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/BufferAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/explorestack/protobuf/BufferAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public final allocateDirectBuffer(I)Lcom/explorestack/protobuf/AllocatedBuffer;
    .locals 0

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/AllocatedBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final allocateHeapBuffer(I)Lcom/explorestack/protobuf/AllocatedBuffer;
    .locals 0

    .line 45
    new-array p1, p1, [B

    invoke-static {p1}, Lcom/explorestack/protobuf/AllocatedBuffer;->wrap([B)Lcom/explorestack/protobuf/AllocatedBuffer;

    move-result-object p1

    return-object p1
.end method
