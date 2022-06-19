.class public final enum Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

.field public static final enum CORD:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

.field public static final CORD_VALUE:I = 0x1

.field public static final enum STRING:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

.field public static final enum STRING_PIECE:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

.field public static final STRING_PIECE_VALUE:I = 0x2

.field public static final STRING_VALUE:I

.field private static final VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27488
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 27492
    new-instance v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    const-string v3, "CORD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 27496
    new-instance v3, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    const-string v5, "STRING_PIECE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->STRING_PIECE:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 27479
    sput-object v5, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->$VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 27543
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 27563
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->values()[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27576
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27577
    iput p3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27533
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->STRING_PIECE:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object p0

    .line 27532
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object p0

    .line 27531
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 27560
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;",
            ">;"
        }
    .end annotation

    .line 27540
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27526
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->forNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 2

    .line 27567
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 27571
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 27568
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .line 27479
    const-class v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .line 27479
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->$VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 27556
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 27518
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 27552
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
