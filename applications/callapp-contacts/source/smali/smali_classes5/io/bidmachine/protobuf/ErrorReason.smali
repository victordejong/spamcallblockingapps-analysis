.class public final enum Lio/bidmachine/protobuf/ErrorReason;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/ErrorReason;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/ErrorReason;

.field public static final enum ERROR_REASON_BAD_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_BAD_CONTENT_VALUE:I = 0x65

.field public static final enum ERROR_REASON_HANDLED_EXCEPTION:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HANDLED_EXCEPTION_VALUE:I = 0x68

.field public static final enum ERROR_REASON_HB_NETWORK:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HB_NETWORK_VALUE:I = 0xc8

.field public static final enum ERROR_REASON_HTTP_BAD_REQUEST:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HTTP_BAD_REQUEST_VALUE:I = 0x6e

.field public static final enum ERROR_REASON_HTTP_SERVER_ERROR:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HTTP_SERVER_ERROR_VALUE:I = 0x6d

.field public static final enum ERROR_REASON_INTERNAL:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_INTERNAL_VALUE:I = 0x6c

.field public static final enum ERROR_REASON_INVALID:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_INVALID_VALUE:I = 0x0

.field public static final enum ERROR_REASON_NO_CONNECTION:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_NO_CONNECTION_VALUE:I = 0x64

.field public static final enum ERROR_REASON_NO_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_NO_CONTENT_VALUE:I = 0x67

.field public static final enum ERROR_REASON_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_TIMEOUT_VALUE:I = 0x66

.field public static final enum ERROR_REASON_WAS_CLOSED:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_CLOSED_VALUE:I = 0x69

.field public static final enum ERROR_REASON_WAS_DESTROYED:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_DESTROYED_VALUE:I = 0x6a

.field public static final enum ERROR_REASON_WAS_EXPIRED:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_EXPIRED_VALUE:I = 0x6b

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

.field private static final VALUES:[Lio/bidmachine/protobuf/ErrorReason;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/ErrorReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 19
    new-instance v0, Lio/bidmachine/protobuf/ErrorReason;

    const-string v1, "ERROR_REASON_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INVALID:Lio/bidmachine/protobuf/ErrorReason;

    .line 23
    new-instance v1, Lio/bidmachine/protobuf/ErrorReason;

    const-string v3, "ERROR_REASON_NO_CONNECTION"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v1, v3, v4, v5}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONNECTION:Lio/bidmachine/protobuf/ErrorReason;

    .line 27
    new-instance v3, Lio/bidmachine/protobuf/ErrorReason;

    const-string v5, "ERROR_REASON_BAD_CONTENT"

    const/4 v6, 0x2

    const/16 v7, 0x65

    invoke-direct {v3, v5, v6, v7}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_BAD_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    .line 31
    new-instance v5, Lio/bidmachine/protobuf/ErrorReason;

    const-string v7, "ERROR_REASON_TIMEOUT"

    const/4 v8, 0x3

    const/16 v9, 0x66

    invoke-direct {v5, v7, v8, v9}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

    .line 35
    new-instance v7, Lio/bidmachine/protobuf/ErrorReason;

    const-string v9, "ERROR_REASON_NO_CONTENT"

    const/4 v10, 0x4

    const/16 v11, 0x67

    invoke-direct {v7, v9, v10, v11}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    .line 39
    new-instance v9, Lio/bidmachine/protobuf/ErrorReason;

    const-string v11, "ERROR_REASON_HANDLED_EXCEPTION"

    const/4 v12, 0x5

    const/16 v13, 0x68

    invoke-direct {v9, v11, v12, v13}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HANDLED_EXCEPTION:Lio/bidmachine/protobuf/ErrorReason;

    .line 43
    new-instance v11, Lio/bidmachine/protobuf/ErrorReason;

    const-string v13, "ERROR_REASON_WAS_CLOSED"

    const/4 v14, 0x6

    const/16 v15, 0x69

    invoke-direct {v11, v13, v14, v15}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_CLOSED:Lio/bidmachine/protobuf/ErrorReason;

    .line 47
    new-instance v13, Lio/bidmachine/protobuf/ErrorReason;

    const-string v15, "ERROR_REASON_WAS_DESTROYED"

    const/4 v14, 0x7

    const/16 v12, 0x6a

    invoke-direct {v13, v15, v14, v12}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_DESTROYED:Lio/bidmachine/protobuf/ErrorReason;

    .line 51
    new-instance v12, Lio/bidmachine/protobuf/ErrorReason;

    const-string v15, "ERROR_REASON_WAS_EXPIRED"

    const/16 v14, 0x8

    const/16 v10, 0x6b

    invoke-direct {v12, v15, v14, v10}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_EXPIRED:Lio/bidmachine/protobuf/ErrorReason;

    .line 55
    new-instance v10, Lio/bidmachine/protobuf/ErrorReason;

    const-string v15, "ERROR_REASON_INTERNAL"

    const/16 v14, 0x9

    const/16 v8, 0x6c

    invoke-direct {v10, v15, v14, v8}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INTERNAL:Lio/bidmachine/protobuf/ErrorReason;

    .line 59
    new-instance v8, Lio/bidmachine/protobuf/ErrorReason;

    const-string v15, "ERROR_REASON_HTTP_SERVER_ERROR"

    const/16 v14, 0xa

    const/16 v6, 0x6d

    invoke-direct {v8, v15, v14, v6}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_SERVER_ERROR:Lio/bidmachine/protobuf/ErrorReason;

    .line 63
    new-instance v6, Lio/bidmachine/protobuf/ErrorReason;

    const-string v15, "ERROR_REASON_HTTP_BAD_REQUEST"

    const/16 v14, 0xb

    const/16 v4, 0x6e

    invoke-direct {v6, v15, v14, v4}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_BAD_REQUEST:Lio/bidmachine/protobuf/ErrorReason;

    .line 67
    new-instance v4, Lio/bidmachine/protobuf/ErrorReason;

    const-string v15, "ERROR_REASON_HB_NETWORK"

    const/16 v14, 0xc

    const/16 v2, 0xc8

    invoke-direct {v4, v15, v14, v2}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HB_NETWORK:Lio/bidmachine/protobuf/ErrorReason;

    .line 68
    new-instance v2, Lio/bidmachine/protobuf/ErrorReason;

    const-string v15, "UNRECOGNIZED"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/4 v4, -0x1

    invoke-direct {v2, v15, v14, v4}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    const/16 v4, 0xe

    new-array v4, v4, [Lio/bidmachine/protobuf/ErrorReason;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v2, v4, v14

    .line 14
    sput-object v4, Lio/bidmachine/protobuf/ErrorReason;->$VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    .line 165
    new-instance v0, Lio/bidmachine/protobuf/ErrorReason$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/ErrorReason$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 185
    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->values()[Lio/bidmachine/protobuf/ErrorReason;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 202
    iput p3, p0, Lio/bidmachine/protobuf/ErrorReason;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/ErrorReason;
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 154
    :pswitch_0
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_BAD_REQUEST:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 153
    :pswitch_1
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_SERVER_ERROR:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 152
    :pswitch_2
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INTERNAL:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 151
    :pswitch_3
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_EXPIRED:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 150
    :pswitch_4
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_DESTROYED:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 149
    :pswitch_5
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_CLOSED:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 148
    :pswitch_6
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HANDLED_EXCEPTION:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 147
    :pswitch_7
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 146
    :pswitch_8
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 145
    :pswitch_9
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_BAD_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 144
    :pswitch_a
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONNECTION:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 155
    :cond_0
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HB_NETWORK:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 143
    :cond_1
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INVALID:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 182
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
            "Lio/bidmachine/protobuf/ErrorReason;",
            ">;"
        }
    .end annotation

    .line 162
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/ErrorReason;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-static {p0}, Lio/bidmachine/protobuf/ErrorReason;->forNumber(I)Lio/bidmachine/protobuf/ErrorReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/ErrorReason;
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 194
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 196
    :cond_0
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 190
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/ErrorReason;
    .locals 1

    .line 14
    const-class v0, Lio/bidmachine/protobuf/ErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ErrorReason;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/ErrorReason;
    .locals 1

    .line 14
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->$VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/ErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/ErrorReason;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 178
    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 126
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    if-eq p0, v0, :cond_0

    .line 130
    iget v0, p0, Lio/bidmachine/protobuf/ErrorReason;->value:I

    return v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 174
    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lio/bidmachine/protobuf/ErrorReason;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
