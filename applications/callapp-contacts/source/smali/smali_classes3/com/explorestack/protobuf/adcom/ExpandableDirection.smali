.class public final enum Lcom/explorestack/protobuf/adcom/ExpandableDirection;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/ExpandableDirection;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final enum EXPANDABLE_DIRECTION_DOWN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_DOWN_VALUE:I = 0x4

.field public static final enum EXPANDABLE_DIRECTION_FULL_SCREEN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_FULL_SCREEN_VALUE:I = 0x5

.field public static final enum EXPANDABLE_DIRECTION_INVALID:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_INVALID_VALUE:I = 0x0

.field public static final enum EXPANDABLE_DIRECTION_LEFT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_LEFT_VALUE:I = 0x1

.field public static final enum EXPANDABLE_DIRECTION_RIGHT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_RIGHT_VALUE:I = 0x2

.field public static final enum EXPANDABLE_DIRECTION_UP:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_UP_VALUE:I = 0x3

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/ExpandableDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v1, "EXPANDABLE_DIRECTION_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_INVALID:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 18
    new-instance v1, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v3, "EXPANDABLE_DIRECTION_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_LEFT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 22
    new-instance v3, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v5, "EXPANDABLE_DIRECTION_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_RIGHT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 26
    new-instance v5, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v7, "EXPANDABLE_DIRECTION_UP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_UP:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 30
    new-instance v7, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v9, "EXPANDABLE_DIRECTION_DOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_DOWN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 34
    new-instance v9, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v11, "EXPANDABLE_DIRECTION_FULL_SCREEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_FULL_SCREEN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 35
    new-instance v11, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 9
    sput-object v13, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->$VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 97
    new-instance v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/ExpandableDirection$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 117
    invoke-static {}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->values()[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput p3, p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_FULL_SCREEN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 86
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_DOWN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 85
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_UP:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 84
    :cond_3
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_RIGHT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 83
    :cond_4
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_LEFT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 82
    :cond_5
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_INVALID:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 114
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

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
            "Lcom/explorestack/protobuf/adcom/ExpandableDirection;",
            ">;"
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->forNumber(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 126
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 128
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 122
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .locals 1

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .locals 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->$VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/ExpandableDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 110
    invoke-static {}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 65
    sget-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    if-eq p0, v0, :cond_0

    .line 69
    iget v0, p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->value:I

    return v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 106
    invoke-static {}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
