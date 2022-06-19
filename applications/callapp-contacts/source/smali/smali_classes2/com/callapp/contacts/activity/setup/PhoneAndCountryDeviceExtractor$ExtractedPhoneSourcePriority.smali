.class public final enum Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtractedPhoneSourcePriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum AYOBA:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum BIP:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum BOTIM:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum FACEBOOK_ACCOUNT:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum GLIDE:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum ICQ:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum ICS:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum LINE1NUMBER:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum MI_CHAT:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum PHONE_NUMBER:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum SAMSUNG:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum SOMA:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum UNKNOWN:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field public static final enum VIBER:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;


# instance fields
.field public final description:Ljava/lang/String;

.field public final isReliable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 205
    new-instance v0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v1, "PHONE_NUMBER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Phone number"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->PHONE_NUMBER:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 206
    new-instance v1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v4, "VIBER"

    const-string v5, "Viber"

    invoke-direct {v1, v4, v3, v3, v5}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->VIBER:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 207
    new-instance v4, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v5, "SAMSUNG"

    const/4 v6, 0x2

    const-string v7, "Samsung"

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v4, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->SAMSUNG:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 208
    new-instance v5, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v7, "SOMA"

    const/4 v8, 0x3

    const-string v9, "Soma"

    invoke-direct {v5, v7, v8, v3, v9}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v5, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->SOMA:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 209
    new-instance v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v9, "GLIDE"

    const/4 v10, 0x4

    const-string v11, "Glide"

    invoke-direct {v7, v9, v10, v3, v11}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->GLIDE:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 210
    new-instance v9, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v11, "ICQ"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v3, v11}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v9, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->ICQ:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 211
    new-instance v11, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v13, "BIP"

    const/4 v14, 0x6

    const-string v15, "Bip"

    invoke-direct {v11, v13, v14, v3, v15}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->BIP:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 212
    new-instance v13, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v15, "BOTIM"

    const/4 v14, 0x7

    const-string v12, "Botim"

    invoke-direct {v13, v15, v14, v3, v12}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v13, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->BOTIM:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 213
    new-instance v12, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v15, "MI_CHAT"

    const/16 v14, 0x8

    const-string v10, "MiChat"

    invoke-direct {v12, v15, v14, v3, v10}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->MI_CHAT:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 214
    new-instance v10, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v15, "AYOBA"

    const/16 v14, 0x9

    const-string v8, "Ayoba"

    invoke-direct {v10, v15, v14, v3, v8}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v10, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->AYOBA:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 215
    new-instance v8, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v15, "FACEBOOK_ACCOUNT"

    const/16 v14, 0xa

    const-string v6, "Facebook"

    invoke-direct {v8, v15, v14, v3, v6}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->FACEBOOK_ACCOUNT:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 216
    new-instance v6, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v15, "LINE1NUMBER"

    const/16 v14, 0xb

    const-string v3, "getLine1Number"

    invoke-direct {v6, v15, v14, v2, v3}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v6, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->LINE1NUMBER:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 217
    new-instance v3, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v15, "ICS"

    const/16 v14, 0xc

    invoke-direct {v3, v15, v14, v2, v15}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->ICS:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 218
    new-instance v15, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const-string v14, "UNKNOWN"

    move-object/from16 v16, v3

    const/16 v3, 0xd

    move-object/from16 v17, v6

    const-string v6, "unknown"

    invoke-direct {v15, v14, v3, v2, v6}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v15, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->UNKNOWN:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    const/16 v6, 0xe

    new-array v6, v6, [Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    const/16 v0, 0xa

    aput-object v8, v6, v0

    const/16 v0, 0xb

    aput-object v17, v6, v0

    const/16 v0, 0xc

    aput-object v16, v6, v0

    aput-object v15, v6, v3

    .line 204
    sput-object v6, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->$VALUES:[Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput-boolean p3, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->isReliable:Z

    .line 225
    iput-object p4, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;
    .locals 1

    .line 204
    const-class v0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;
    .locals 1

    .line 204
    sget-object v0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->$VALUES:[Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    return-object v0
.end method
