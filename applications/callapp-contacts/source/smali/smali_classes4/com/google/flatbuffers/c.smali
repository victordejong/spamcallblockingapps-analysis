.class public final Lcom/google/flatbuffers/c;
.super Lcom/google/flatbuffers/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/flatbuffers/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/c;
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/flatbuffers/c;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method
