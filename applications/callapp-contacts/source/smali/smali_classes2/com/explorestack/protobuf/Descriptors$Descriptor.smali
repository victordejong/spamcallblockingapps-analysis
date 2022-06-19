.class public final Lcom/explorestack/protobuf/Descriptors$Descriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Descriptor"
.end annotation


# instance fields
.field private final containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

.field private final extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private final nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 859
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 860
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->index:I

    .line 861
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    .line 862
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    .line 863
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 864
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 866
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p3

    new-array p3, p3, [Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 867
    :goto_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    if-ge p4, v0, :cond_0

    .line 868
    iget-object v6, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    new-instance v7, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    invoke-virtual {p1, p4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDecl(I)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v7, v6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result p4

    new-array p4, p4, [Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    const/4 p4, 0x0

    .line 872
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v0

    if-ge p4, v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, p4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0, p4}, Lcom/explorestack/protobuf/Descriptors$Descriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    aput-object v1, v0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 876
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result p4

    new-array p4, p4, [Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    const/4 p4, 0x0

    .line 877
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-ge p4, v0, :cond_2

    .line 878
    iget-object v6, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    new-instance v7, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, p4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v7, v6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 881
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result p4

    new-array p4, p4, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    const/4 p4, 0x0

    .line 882
    :goto_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    if-ge p4, v0, :cond_3

    .line 883
    iget-object v7, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    new-instance v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, p4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p0

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZLcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v8, v7, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 886
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result p4

    new-array p4, p4, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    const/4 p4, 0x0

    .line 887
    :goto_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v0

    if-ge p4, v0, :cond_4

    .line 888
    iget-object v7, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    new-instance v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, p4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p0

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZLcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v8, v7, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_4
    const/4 p4, 0x0

    .line 891
    :goto_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    if-ge p4, v0, :cond_5

    .line 892
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    aget-object v1, v0, p4

    aget-object v0, v0, p4

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getFieldCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$1902(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 893
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    aget-object v0, v0, p4

    invoke-static {v0, p3}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$2002(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;I)I

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    .line 895
    :cond_5
    :goto_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result p4

    if-ge p3, p4, :cond_7

    .line 896
    iget-object p4, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object p4, p4, p3

    invoke-virtual {p4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 898
    invoke-static {p4}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$1900(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-static {p4}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$2008(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)I

    move-result p4

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, p3

    aput-object v1, v0, p4

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 902
    :cond_7
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$Descriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 826
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    const/16 v1, 0x2e

    .line 829
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 831
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 832
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    move-object v3, p1

    .line 834
    :goto_0
    iput v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->index:I

    .line 836
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v4

    .line 837
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v3

    .line 839
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->setStart(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v4

    const/high16 v5, 0x20000000

    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->setEnd(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v4

    .line 838
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->addExtensionRange(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v3

    .line 840
    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    .line 841
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    .line 842
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    new-array p1, v2, [Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 844
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    new-array p1, v2, [Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 845
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    new-array p1, v2, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 846
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    new-array p1, v2, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 847
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    new-array p1, v2, [Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 848
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 851
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-direct {p1, v1, p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;-><init>(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$1100(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)V
    .locals 0

    .line 629
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)V

    return-void
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 629
    invoke-direct {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->crossLink()V

    return-void
.end method

.method private crossLink()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 908
    invoke-direct {v4}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->crossLink()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 912
    invoke-static {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$1000(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 916
    invoke-static {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$1000(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)V
    .locals 4

    .line 922
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 924
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 925
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 928
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 929
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDecl(I)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$2100(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 932
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 933
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->access$1200(Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 936
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 937
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$1400(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 940
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 941
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$1400(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public final findEnumTypeByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 807
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    if-eqz v0, :cond_0

    .line 808
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findFieldByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 3

    .line 766
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 767
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    if-eqz v0, :cond_0

    .line 768
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findFieldByNumber(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->access$1600(Lcom/explorestack/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p1
.end method

.method public final findNestedTypeByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 3

    .line 791
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 792
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_0

    .line 793
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getEnumTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 647
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->index:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNestedTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOneofs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final isExtendable()Z
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isExtensionNumber(I)Z
    .locals 3

    .line 722
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 723
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isReservedName(Ljava/lang/String;)Z
    .locals 2

    .line 742
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedNameList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/ProtocolStringList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 744
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isReservedNumber(I)Z
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedRangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    .line 733
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getStart()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getEnd()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method
