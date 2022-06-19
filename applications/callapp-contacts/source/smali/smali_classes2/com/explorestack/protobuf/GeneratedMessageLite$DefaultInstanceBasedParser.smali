.class public Lcom/explorestack/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DefaultInstanceBasedParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite<",
        "TT;*>;>",
        "Lcom/explorestack/protobuf/AbstractParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/explorestack/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1498
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    .line 1499
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1505
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/explorestack/protobuf/GeneratedMessageLite;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1512
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/explorestack/protobuf/GeneratedMessageLite;[BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->parsePartialFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->parsePartialFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method
