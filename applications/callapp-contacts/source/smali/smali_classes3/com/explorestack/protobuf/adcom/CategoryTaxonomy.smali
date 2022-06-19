.class public final enum Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field public static final enum CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field public static final CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0_VALUE:I = 0x3

.field public static final enum CATEGORY_TAXONOMY_IAB_CONTENT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field public static final CATEGORY_TAXONOMY_IAB_CONTENT_1_0_VALUE:I = 0x1

.field public static final enum CATEGORY_TAXONOMY_IAB_CONTENT_2_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field public static final CATEGORY_TAXONOMY_IAB_CONTENT_2_0_VALUE:I = 0x2

.field public static final enum CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field public static final CATEGORY_TAXONOMY_INVALID_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 14
    new-instance v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    const-string v1, "CATEGORY_TAXONOMY_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 18
    new-instance v1, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    const-string v3, "CATEGORY_TAXONOMY_IAB_CONTENT_1_0"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_CONTENT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 22
    new-instance v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    const-string v5, "CATEGORY_TAXONOMY_IAB_CONTENT_2_0"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_CONTENT_2_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 26
    new-instance v5, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    const-string v7, "CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 27
    new-instance v7, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 9
    sput-object v9, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->$VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 79
    new-instance v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 99
    invoke-static {}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->values()[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
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

    .line 69
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    return-object p0

    .line 68
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_CONTENT_2_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    return-object p0

    .line 67
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_CONTENT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    return-object p0

    .line 66
    :cond_3
    sget-object p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 96
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

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
            "Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->forNumber(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 108
    sget-object p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    return-object p0

    .line 110
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 104
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->$VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 92
    invoke-static {}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 49
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    if-eq p0, v0, :cond_0

    .line 53
    iget v0, p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->value:I

    return v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 88
    invoke-static {}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
