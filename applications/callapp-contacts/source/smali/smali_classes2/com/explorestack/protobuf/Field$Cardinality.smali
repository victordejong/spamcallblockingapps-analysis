.class public final enum Lcom/explorestack/protobuf/Field$Cardinality;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cardinality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Field$Cardinality;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

.field public static final enum CARDINALITY_OPTIONAL:Lcom/explorestack/protobuf/Field$Cardinality;

.field public static final CARDINALITY_OPTIONAL_VALUE:I = 0x1

.field public static final enum CARDINALITY_REPEATED:Lcom/explorestack/protobuf/Field$Cardinality;

.field public static final CARDINALITY_REPEATED_VALUE:I = 0x3

.field public static final enum CARDINALITY_REQUIRED:Lcom/explorestack/protobuf/Field$Cardinality;

.field public static final CARDINALITY_REQUIRED_VALUE:I = 0x2

.field public static final enum CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

.field public static final CARDINALITY_UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

.field private static final VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/Field$Cardinality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 581
    new-instance v0, Lcom/explorestack/protobuf/Field$Cardinality;

    const-string v1, "CARDINALITY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 589
    new-instance v1, Lcom/explorestack/protobuf/Field$Cardinality;

    const-string v3, "CARDINALITY_OPTIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/explorestack/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_OPTIONAL:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 597
    new-instance v3, Lcom/explorestack/protobuf/Field$Cardinality;

    const-string v5, "CARDINALITY_REQUIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/explorestack/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_REQUIRED:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 605
    new-instance v5, Lcom/explorestack/protobuf/Field$Cardinality;

    const-string v7, "CARDINALITY_REPEATED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/explorestack/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_REPEATED:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 606
    new-instance v7, Lcom/explorestack/protobuf/Field$Cardinality;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcom/explorestack/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/explorestack/protobuf/Field$Cardinality;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 572
    sput-object v9, Lcom/explorestack/protobuf/Field$Cardinality;->$VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

    .line 674
    new-instance v0, Lcom/explorestack/protobuf/Field$Cardinality$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Field$Cardinality$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 694
    invoke-static {}, Lcom/explorestack/protobuf/Field$Cardinality;->values()[Lcom/explorestack/protobuf/Field$Cardinality;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 710
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 711
    iput p3, p0, Lcom/explorestack/protobuf/Field$Cardinality;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/Field$Cardinality;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 664
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_REPEATED:Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0

    .line 663
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_REQUIRED:Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0

    .line 662
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_OPTIONAL:Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0

    .line 661
    :cond_3
    sget-object p0, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 691
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/explorestack/protobuf/Field$Cardinality;",
            ">;"
        }
    .end annotation

    .line 671
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/Field$Cardinality;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 656
    invoke-static {p0}, Lcom/explorestack/protobuf/Field$Cardinality;->forNumber(I)Lcom/explorestack/protobuf/Field$Cardinality;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/Field$Cardinality;
    .locals 2

    .line 698
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/Field$Cardinality;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 703
    sget-object p0, Lcom/explorestack/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0

    .line 705
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 699
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Field$Cardinality;
    .locals 1

    .line 572
    const-class v0, Lcom/explorestack/protobuf/Field$Cardinality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Field$Cardinality;
    .locals 1

    .line 572
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->$VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Field$Cardinality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Field$Cardinality;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 687
    invoke-static {}, Lcom/explorestack/protobuf/Field$Cardinality;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 644
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

    if-eq p0, v0, :cond_0

    .line 648
    iget v0, p0, Lcom/explorestack/protobuf/Field$Cardinality;->value:I

    return v0

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 683
    invoke-static {}, Lcom/explorestack/protobuf/Field$Cardinality;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Cardinality;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
