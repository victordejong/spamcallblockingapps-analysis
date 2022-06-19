.class public final enum Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;
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
    name = "JSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

.field public static final enum JS_NORMAL:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

.field public static final JS_NORMAL_VALUE:I = 0x0

.field public static final enum JS_NUMBER:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

.field public static final JS_NUMBER_VALUE:I = 0x2

.field public static final enum JS_STRING:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

.field public static final JS_STRING_VALUE:I = 0x1

.field private static final VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27595
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    const-string v1, "JS_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->JS_NORMAL:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    .line 27603
    new-instance v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    const-string v3, "JS_STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->JS_STRING:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    .line 27611
    new-instance v3, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    const-string v5, "JS_NUMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->JS_NUMBER:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 27586
    sput-object v5, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->$VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    .line 27666
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 27686
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->values()[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27699
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27700
    iput p3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27656
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->JS_NUMBER:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-object p0

    .line 27655
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->JS_STRING:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-object p0

    .line 27654
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->JS_NORMAL:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 27683
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;",
            ">;"
        }
    .end annotation

    .line 27663
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27649
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->forNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 2

    .line 27690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 27694
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 27691
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    .line 27586
    const-class v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    .line 27586
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->$VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 27679
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 27641
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 27675
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
