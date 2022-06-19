.class public final Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ExtensionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionInfo"
.end annotation


# instance fields
.field public final defaultInstance:Lcom/explorestack/protobuf/Message;

.field public final descriptor:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/explorestack/protobuf/Message;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 127
    iput-object p2, p0, Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/explorestack/protobuf/Message;

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/ExtensionRegistry$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)V

    return-void
.end method
