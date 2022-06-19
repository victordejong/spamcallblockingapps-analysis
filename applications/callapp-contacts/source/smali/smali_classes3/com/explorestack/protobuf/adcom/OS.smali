.class public final enum Lcom/explorestack/protobuf/adcom/OS;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/OS;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/OS;

.field public static final enum OS_ANDROID:Lcom/explorestack/protobuf/adcom/OS;

.field public static final OS_ANDROID_VALUE:I = 0x2

.field public static final enum OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

.field public static final OS_INVALID_VALUE:I = 0x0

.field public static final enum OS_IOS:Lcom/explorestack/protobuf/adcom/OS;

.field public static final OS_IOS_VALUE:I = 0xd

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/OS;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/OS;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lcom/explorestack/protobuf/adcom/OS;

    const-string v1, "OS_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    .line 18
    new-instance v1, Lcom/explorestack/protobuf/adcom/OS;

    const-string v3, "OS_ANDROID"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/explorestack/protobuf/adcom/OS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_ANDROID:Lcom/explorestack/protobuf/adcom/OS;

    .line 22
    new-instance v3, Lcom/explorestack/protobuf/adcom/OS;

    const-string v6, "OS_IOS"

    const/16 v7, 0xd

    invoke-direct {v3, v6, v5, v7}, Lcom/explorestack/protobuf/adcom/OS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/OS;->OS_IOS:Lcom/explorestack/protobuf/adcom/OS;

    .line 23
    new-instance v6, Lcom/explorestack/protobuf/adcom/OS;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v6, v7, v8, v9}, Lcom/explorestack/protobuf/adcom/OS;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/explorestack/protobuf/adcom/OS;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v5

    aput-object v6, v7, v8

    .line 9
    sput-object v7, Lcom/explorestack/protobuf/adcom/OS;->$VALUES:[Lcom/explorestack/protobuf/adcom/OS;

    .line 70
    new-instance v0, Lcom/explorestack/protobuf/adcom/OS$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/OS$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/OS;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 90
    invoke-static {}, Lcom/explorestack/protobuf/adcom/OS;->values()[Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/OS;->VALUES:[Lcom/explorestack/protobuf/adcom/OS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/explorestack/protobuf/adcom/OS;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/OS;->OS_IOS:Lcom/explorestack/protobuf/adcom/OS;

    return-object p0

    .line 59
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/OS;->OS_ANDROID:Lcom/explorestack/protobuf/adcom/OS;

    return-object p0

    .line 58
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 87
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x16

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
            "Lcom/explorestack/protobuf/adcom/OS;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/OS;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/OS;->forNumber(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/OS;
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/OS;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 99
    sget-object p0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    return-object p0

    .line 101
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->VALUES:[Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 95
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/OS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/OS;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->$VALUES:[Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/OS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/OS;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 83
    invoke-static {}, Lcom/explorestack/protobuf/adcom/OS;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 41
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    if-eq p0, v0, :cond_0

    .line 45
    iget v0, p0, Lcom/explorestack/protobuf/adcom/OS;->value:I

    return v0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 79
    invoke-static {}, Lcom/explorestack/protobuf/adcom/OS;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/OS;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
