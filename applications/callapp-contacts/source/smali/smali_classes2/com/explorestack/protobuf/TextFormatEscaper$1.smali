.class final Lcom/explorestack/protobuf/TextFormatEscaper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/TextFormatEscaper;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$input:Lcom/explorestack/protobuf/ByteString;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/explorestack/protobuf/TextFormatEscaper$1;->val$input:Lcom/explorestack/protobuf/ByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final byteAt(I)B
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormatEscaper$1;->val$input:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormatEscaper$1;->val$input:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    return v0
.end method
