.class public final enum Lcom/explorestack/protobuf/Syntax;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Syntax;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Syntax;

.field public static final enum SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

.field public static final SYNTAX_PROTO2_VALUE:I = 0x0

.field public static final enum SYNTAX_PROTO3:Lcom/explorestack/protobuf/Syntax;

.field public static final SYNTAX_PROTO3_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

.field private static final VALUES:[Lcom/explorestack/protobuf/Syntax;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/Syntax;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 22
    new-instance v0, Lcom/explorestack/protobuf/Syntax;

    const-string v1, "SYNTAX_PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/Syntax;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

    .line 30
    new-instance v1, Lcom/explorestack/protobuf/Syntax;

    const-string v3, "SYNTAX_PROTO3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/explorestack/protobuf/Syntax;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO3:Lcom/explorestack/protobuf/Syntax;

    .line 31
    new-instance v3, Lcom/explorestack/protobuf/Syntax;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/explorestack/protobuf/Syntax;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/explorestack/protobuf/Syntax;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 13
    sput-object v5, Lcom/explorestack/protobuf/Syntax;->$VALUES:[Lcom/explorestack/protobuf/Syntax;

    .line 81
    new-instance v0, Lcom/explorestack/protobuf/Syntax$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Syntax$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Syntax;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 101
    invoke-static {}, Lcom/explorestack/protobuf/Syntax;->values()[Lcom/explorestack/protobuf/Syntax;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Syntax;->VALUES:[Lcom/explorestack/protobuf/Syntax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/explorestack/protobuf/Syntax;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/Syntax;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO3:Lcom/explorestack/protobuf/Syntax;

    return-object p0

    .line 70
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 98
    invoke-static {}, Lcom/explorestack/protobuf/TypeProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

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
            "Lcom/explorestack/protobuf/Syntax;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/Syntax;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-static {p0}, Lcom/explorestack/protobuf/Syntax;->forNumber(I)Lcom/explorestack/protobuf/Syntax;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/Syntax;
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/Syntax;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    sget-object p0, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    return-object p0

    .line 112
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->VALUES:[Lcom/explorestack/protobuf/Syntax;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Syntax;
    .locals 1

    .line 13
    const-class v0, Lcom/explorestack/protobuf/Syntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Syntax;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Syntax;
    .locals 1

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->$VALUES:[Lcom/explorestack/protobuf/Syntax;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Syntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Syntax;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 94
    invoke-static {}, Lcom/explorestack/protobuf/Syntax;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 53
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    if-eq p0, v0, :cond_0

    .line 57
    iget v0, p0, Lcom/explorestack/protobuf/Syntax;->value:I

    return v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 90
    invoke-static {}, Lcom/explorestack/protobuf/Syntax;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Syntax;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
