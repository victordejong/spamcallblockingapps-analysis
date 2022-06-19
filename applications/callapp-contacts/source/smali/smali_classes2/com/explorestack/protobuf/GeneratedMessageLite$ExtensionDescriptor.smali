.class final Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final enumTypeMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field final isPacked:Z

.field final isRepeated:Z

.field final number:I

.field final type:Lcom/explorestack/protobuf/WireFormat$FieldType;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Internal$EnumLiteMap;ILcom/explorestack/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    .line 1083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 1085
    iput p2, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    .line 1086
    iput-object p3, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 1087
    iput-boolean p4, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    .line 1088
    iput-boolean p5, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .locals 1

    .line 1136
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget p1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1076
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result p1

    return p1
.end method

.method public final getEnumType()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public final getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/explorestack/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1099
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public final internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0

    .line 1130
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite$Builder;

    check-cast p2, Lcom/explorestack/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/GeneratedMessageLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final isPacked()Z
    .locals 1

    .line 1119
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return v0
.end method

.method public final isRepeated()Z
    .locals 1

    .line 1114
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
