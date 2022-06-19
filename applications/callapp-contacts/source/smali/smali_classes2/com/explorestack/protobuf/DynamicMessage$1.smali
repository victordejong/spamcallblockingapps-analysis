.class Lcom/explorestack/protobuf/DynamicMessage$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/DynamicMessage;->getParserForType()Lcom/explorestack/protobuf/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lcom/explorestack/protobuf/DynamicMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/explorestack/protobuf/DynamicMessage;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/DynamicMessage;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage$1;->this$0:Lcom/explorestack/protobuf/DynamicMessage;

    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$1;->this$0:Lcom/explorestack/protobuf/DynamicMessage;

    invoke-static {v0}, Lcom/explorestack/protobuf/DynamicMessage;->access$200(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    .line 291
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 295
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 293
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1
.end method
