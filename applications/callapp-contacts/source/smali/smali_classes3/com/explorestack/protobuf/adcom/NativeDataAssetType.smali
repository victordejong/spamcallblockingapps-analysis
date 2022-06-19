.class public final enum Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/NativeDataAssetType;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final enum NATIVE_DATA_ASSET_TYPE_ADDRESS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_ADDRESS_VALUE:I = 0x9

.field public static final enum NATIVE_DATA_ASSET_TYPE_CTA_TEXT:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_CTA_TEXT_VALUE:I = 0xc

.field public static final enum NATIVE_DATA_ASSET_TYPE_DESC:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final enum NATIVE_DATA_ASSET_TYPE_DESC2:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_DESC2_VALUE:I = 0xa

.field public static final NATIVE_DATA_ASSET_TYPE_DESC_VALUE:I = 0x2

.field public static final enum NATIVE_DATA_ASSET_TYPE_DISPLAY_URL:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_DISPLAY_URL_VALUE:I = 0xb

.field public static final enum NATIVE_DATA_ASSET_TYPE_DOWNLOADS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_DOWNLOADS_VALUE:I = 0x5

.field public static final enum NATIVE_DATA_ASSET_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_INVALID_VALUE:I = 0x0

.field public static final enum NATIVE_DATA_ASSET_TYPE_LIKES:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_LIKES_VALUE:I = 0x4

.field public static final enum NATIVE_DATA_ASSET_TYPE_PHONE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_PHONE_VALUE:I = 0x8

.field public static final enum NATIVE_DATA_ASSET_TYPE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_PRICE_VALUE:I = 0x6

.field public static final enum NATIVE_DATA_ASSET_TYPE_RATING:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_RATING_VALUE:I = 0x3

.field public static final enum NATIVE_DATA_ASSET_TYPE_SALE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_SALE_PRICE_VALUE:I = 0x7

.field public static final enum NATIVE_DATA_ASSET_TYPE_SPONSORED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_SPONSORED_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/NativeDataAssetType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 14
    new-instance v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v1, "NATIVE_DATA_ASSET_TYPE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 23
    new-instance v1, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v3, "NATIVE_DATA_ASSET_TYPE_SPONSORED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_SPONSORED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 33
    new-instance v3, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v5, "NATIVE_DATA_ASSET_TYPE_DESC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DESC:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 41
    new-instance v5, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v7, "NATIVE_DATA_ASSET_TYPE_RATING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_RATING:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 49
    new-instance v7, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v9, "NATIVE_DATA_ASSET_TYPE_LIKES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_LIKES:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 57
    new-instance v9, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v11, "NATIVE_DATA_ASSET_TYPE_DOWNLOADS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DOWNLOADS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 66
    new-instance v11, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v13, "NATIVE_DATA_ASSET_TYPE_PRICE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 75
    new-instance v13, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v15, "NATIVE_DATA_ASSET_TYPE_SALE_PRICE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_SALE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 83
    new-instance v15, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v14, "NATIVE_DATA_ASSET_TYPE_PHONE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_PHONE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 91
    new-instance v14, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v12, "NATIVE_DATA_ASSET_TYPE_ADDRESS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_ADDRESS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 99
    new-instance v12, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v10, "NATIVE_DATA_ASSET_TYPE_DESC2"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DESC2:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 108
    new-instance v10, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v8, "NATIVE_DATA_ASSET_TYPE_DISPLAY_URL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DISPLAY_URL:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 117
    new-instance v8, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v6, "NATIVE_DATA_ASSET_TYPE_CTA_TEXT"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_CTA_TEXT:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 118
    new-instance v6, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v4, "UNRECOGNIZED"

    const/16 v2, 0xd

    move-object/from16 v16, v8

    const/4 v8, -0x1

    invoke-direct {v6, v4, v2, v8}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const/4 v8, 0x0

    aput-object v0, v4, v8

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

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v6, v4, v2

    .line 9
    sput-object v4, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->$VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 270
    new-instance v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 290
    invoke-static {}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->values()[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 307
    iput p3, p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 260
    :pswitch_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_CTA_TEXT:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 259
    :pswitch_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DISPLAY_URL:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 258
    :pswitch_2
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DESC2:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 257
    :pswitch_3
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_ADDRESS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 256
    :pswitch_4
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_PHONE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 255
    :pswitch_5
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_SALE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 254
    :pswitch_6
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 253
    :pswitch_7
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DOWNLOADS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 252
    :pswitch_8
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_LIKES:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 251
    :pswitch_9
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_RATING:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 250
    :pswitch_a
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DESC:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 249
    :pswitch_b
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_SPONSORED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 248
    :pswitch_c
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
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

    .line 287
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x14

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
            "Lcom/explorestack/protobuf/adcom/NativeDataAssetType;",
            ">;"
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->forNumber(I)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .locals 2

    .line 294
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 299
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 301
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 295
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .locals 1

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .locals 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->$VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 283
    invoke-static {}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 231
    sget-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    if-eq p0, v0, :cond_0

    .line 235
    iget v0, p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->value:I

    return v0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 279
    invoke-static {}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
