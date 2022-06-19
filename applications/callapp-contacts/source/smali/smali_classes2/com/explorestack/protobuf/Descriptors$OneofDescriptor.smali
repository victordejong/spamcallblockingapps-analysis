.class public final Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofDescriptor"
.end annotation


# instance fields
.field private containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private fieldCount:I

.field private fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2653
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 2654
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 2655
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fullName:Ljava/lang/String;

    .line 2656
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2657
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->index:I

    .line 2659
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    const/4 p1, 0x0

    .line 2660
    iput p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2597
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    .line 2597
    iget-object p0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    .line 2597
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;I)I
    .locals 0

    .line 2597
    iput p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return p1
.end method

.method static synthetic access$2008(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)I
    .locals 2

    .line 2597
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .locals 0

    .line 2597
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V

    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .locals 0

    .line 2645
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-void
.end method


# virtual methods
.method public final getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2619
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getField(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 2636
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getFieldCount()I
    .locals 1

    .line 2623
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return v0
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

    .line 2632
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 2610
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .line 2615
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 2600
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->index:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 2605
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;
    .locals 1

    .line 2627
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public final toProto()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1

    .line 2641
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2597
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method
