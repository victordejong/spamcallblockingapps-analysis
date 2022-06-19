.class final Lcom/explorestack/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageInfo;


# instance fields
.field private final defaultInstance:Lcom/explorestack/protobuf/MessageLite;

.field private final flags:I

.field private final info:Ljava/lang/String;

.field private final objects:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/explorestack/protobuf/RawMessageInfo;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    .line 181
    iput-object p2, p0, Lcom/explorestack/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/explorestack/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 184
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_0

    .line 186
    iput p1, p0, Lcom/explorestack/protobuf/RawMessageInfo;->flags:I

    return-void

    :cond_0
    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 190
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_1

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_0

    :cond_1
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    .line 194
    iput p1, p0, Lcom/explorestack/protobuf/RawMessageInfo;->flags:I

    return-void
.end method


# virtual methods
.method public final getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/explorestack/protobuf/RawMessageInfo;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    return-object v0
.end method

.method final getObjects()[Ljava/lang/Object;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/explorestack/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    return-object v0
.end method

.method final getStringInfo()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/explorestack/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyntax()Lcom/explorestack/protobuf/ProtoSyntax;
    .locals 2

    .line 213
    iget v0, p0, Lcom/explorestack/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO2:Lcom/explorestack/protobuf/ProtoSyntax;

    return-object v0

    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO3:Lcom/explorestack/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public final isMessageSetWireFormat()Z
    .locals 2

    .line 218
    iget v0, p0, Lcom/explorestack/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
