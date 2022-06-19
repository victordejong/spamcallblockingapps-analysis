.class public final Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;,
        Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;",
        "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final table:[Lcom/explorestack/protobuf/WireFormat$FieldType;


# instance fields
.field private containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

.field private containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private defaultValue:Ljava/lang/Object;

.field private enumType:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

.field private final extensionScope:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private final jsonName:Ljava/lang/String;

.field private messageType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

.field private type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1048
    invoke-static {}, Lcom/explorestack/protobuf/WireFormat$FieldType;->values()[Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->table:[Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 1256
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->values()[Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1257
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Descriptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1315
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 1316
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->index:I

    .line 1317
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1318
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    .line 1319
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1320
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasJsonName()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1321
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getJsonName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->jsonName:Ljava/lang/String;

    goto :goto_0

    .line 1323
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fieldNameToJsonName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->jsonName:Ljava/lang/String;

    .line 1326
    :goto_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1327
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object p4

    invoke-static {p4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->valueOf(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1330
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p4

    if-lez p4, :cond_9

    if-eqz p5, :cond_5

    .line 1335
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 1339
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz p3, :cond_2

    .line 1341
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    goto :goto_1

    .line 1343
    :cond_2
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1346
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1350
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    goto :goto_3

    .line 1347
    :cond_3
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1

    .line 1336
    :cond_4
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1

    .line 1352
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result p4

    if-nez p4, :cond_8

    .line 1356
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1358
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 1359
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result p4

    if-ltz p4, :cond_6

    .line 1360
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result p4

    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p5

    invoke-virtual {p5}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p5

    if-ge p4, p5, :cond_6

    .line 1365
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOneofs()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 1366
    invoke-static {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$2008(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)I

    goto :goto_2

    .line 1361
    :cond_6
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "FieldDescriptorProto.oneof_index is out of range for type "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1

    .line 1368
    :cond_7
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 1370
    :goto_2
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1373
    :goto_3
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void

    .line 1353
    :cond_8
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1

    .line 1331
    :cond_9
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZLcom/explorestack/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 949
    invoke-direct/range {p0 .. p5}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 949
    invoke-direct {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->crossLink()V

    return-void
.end method

.method static synthetic access$1400(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .locals 0

    .line 949
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    return-void
.end method

.method private crossLink()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1378
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    const-string v1, "\" is not a message type."

    const-string v2, "\""

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1379
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1380
    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1381
    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 1380
    invoke-virtual {v0, v4, p0, v5}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 1382
    instance-of v4, v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_1

    .line 1386
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1388
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->isExtensionNumber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1389
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1383
    :cond_1
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1384
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1399
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1400
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1401
    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1402
    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 1401
    invoke-virtual {v0, v4, p0, v5}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 1404
    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1406
    instance-of v4, v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_3

    .line 1407
    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_1

    .line 1408
    :cond_3
    instance-of v4, v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    if-eqz v4, :cond_4

    .line 1409
    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_1

    .line 1411
    :cond_4
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1412
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1416
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_8

    .line 1417
    instance-of v4, v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_7

    .line 1421
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->messageType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1423
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 1424
    :cond_6
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1418
    :cond_7
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1419
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1426
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v4, :cond_a

    .line 1427
    instance-of v1, v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    if-eqz v1, :cond_9

    .line 1431
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    goto :goto_2

    .line 1428
    :cond_9
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1429
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1433
    :cond_a
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1436
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_1e

    .line 1443
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPackable()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    .line 1444
    :cond_c
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1450
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1451
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x22

    .line 1457
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "nan"

    const-string v4, "-inf"

    const-string v5, "inf"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 1521
    :pswitch_0
    :try_start_1
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v2, "Message type had default value."

    invoke-direct {v1, p0, v2, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v1

    .line 1513
    :pswitch_1
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_e

    goto/16 :goto_4

    .line 1515
    :cond_e
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unknown enum default value: \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1516
    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1506
    :pswitch_2
    :try_start_2
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_0
    move-exception v1

    .line 1508
    :try_start_3
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t parse default value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {v1}, Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v2

    .line 1502
    :pswitch_3
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1499
    :pswitch_4
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1488
    :pswitch_5
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1489
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1490
    :cond_f
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1491
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1492
    :cond_10
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 1493
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1495
    :cond_11
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1477
    :pswitch_6
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1478
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1479
    :cond_12
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 1480
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1481
    :cond_13
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1482
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1484
    :cond_14
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1474
    :pswitch_7
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/TextFormat;->parseUInt64(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1470
    :pswitch_8
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/TextFormat;->parseInt64(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1465
    :pswitch_9
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/TextFormat;->parseUInt32(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto :goto_4

    .line 1461
    :pswitch_a
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/TextFormat;->parseInt32(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 1524
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse default value: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1525
    invoke-virtual {v5}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v2

    .line 1452
    :cond_15
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1529
    :cond_16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto :goto_4

    .line 1532
    :cond_17
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 1542
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->access$2400(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto :goto_4

    .line 1539
    :cond_18
    iput-object v3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto :goto_4

    .line 1536
    :cond_19
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    .line 1548
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1549
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addFieldByNumber(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 1552
    :cond_1a
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1553
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1554
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1b

    goto :goto_5

    .line 1555
    :cond_1b
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1559
    :cond_1c
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    :cond_1d
    :goto_5
    return-void

    .line 1437
    :cond_1e
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static fieldNameToJsonName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1291
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_2

    const/16 v4, 0x61

    if-gt v4, v5, :cond_1

    const/16 v4, 0x7a

    if-gt v5, v4, :cond_1

    add-int/lit8 v5, v5, -0x61

    add-int/lit8 v5, v5, 0x41

    int-to-char v5, v5

    .line 1300
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1

    .line 1303
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1306
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .locals 0

    .line 1567
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 2

    .line 1186
    iget-object v0, p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    .line 1191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 1187
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 949
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->compareTo(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I

    move-result p1

    return p1
.end method

.method public final getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    return-object v0
.end method

.method public final getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 2

    .line 1098
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    return-object v0

    .line 1099
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 4

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0

    .line 1170
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not of enum type. (%s)"

    .line 1171
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic getEnumType()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .locals 1

    .line 949
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensionScope()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 4

    .line 1150
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0

    .line 1151
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not an extension. (%s)"

    .line 1152
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 957
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->index:I

    return v0
.end method

.method public final getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final getJsonName()Ljava/lang/String;
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->jsonName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;
    .locals 1

    .line 1004
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;
    .locals 2

    .line 1021
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->table:[Lcom/explorestack/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 4

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->messageType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0

    .line 1160
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not of message type. (%s)"

    .line 1161
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method

.method public final hasDefaultValue()Z
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    return v0
.end method

.method public final internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0

    .line 1575
    check-cast p1, Lcom/explorestack/protobuf/Message$Builder;

    check-cast p2, Lcom/explorestack/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final isExtension()Z
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    return v0
.end method

.method public final isMapField()Z
    .locals 2

    .line 1040
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isOptional()Z
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPackable()Z
    .locals 1

    .line 1084
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPacked()Z
    .locals 3

    .line 1072
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPackable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1075
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v2, :cond_1

    .line 1076
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    return v0

    .line 1078
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isRepeated()Z
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRequired()Z
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final needsUtf8Check()Z
    .locals 3

    .line 1026
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1029
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1033
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v2, :cond_2

    return v1

    .line 1036
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v0

    return v0
.end method

.method public final toProto()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 949
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1196
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
