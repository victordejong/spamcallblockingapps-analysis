.class final enum Lcom/explorestack/protobuf/WireFormat$Utf8Validation$1;
.super Lcom/explorestack/protobuf/WireFormat$Utf8Validation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/WireFormat$Utf8Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2, v0}, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method final readString(Lcom/explorestack/protobuf/CodedInputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
