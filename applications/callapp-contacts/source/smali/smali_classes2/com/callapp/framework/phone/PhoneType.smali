.class public final enum Lcom/callapp/framework/phone/PhoneType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/framework/phone/PhoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/framework/phone/PhoneType;

.field public static final enum ASSISTANT:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum CALLBACK:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum CAR:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum COMPANY_MAIN:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum FAX_HOME:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum FAX_WORK:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum HOME:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum ISDN:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum MAIN:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum MMS:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum MOBILE:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum OTHER:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum OTHER_FAX:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum PAGER:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum RADIO:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum TELEX:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum TTY_TDD:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum WORK:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum WORK_MOBILE:Lcom/callapp/framework/phone/PhoneType;

.field public static final enum WORK_PAGER:Lcom/callapp/framework/phone/PhoneType;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 5
    new-instance v0, Lcom/callapp/framework/phone/PhoneType;

    const-string v1, "HOME"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/framework/phone/PhoneType;->HOME:Lcom/callapp/framework/phone/PhoneType;

    new-instance v1, Lcom/callapp/framework/phone/PhoneType;

    const-string v4, "MOBILE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/framework/phone/PhoneType;->MOBILE:Lcom/callapp/framework/phone/PhoneType;

    new-instance v4, Lcom/callapp/framework/phone/PhoneType;

    const-string v6, "WORK"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/callapp/framework/phone/PhoneType;->WORK:Lcom/callapp/framework/phone/PhoneType;

    new-instance v6, Lcom/callapp/framework/phone/PhoneType;

    const-string v8, "FAX_WORK"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/callapp/framework/phone/PhoneType;->FAX_WORK:Lcom/callapp/framework/phone/PhoneType;

    new-instance v8, Lcom/callapp/framework/phone/PhoneType;

    const-string v10, "FAX_HOME"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/callapp/framework/phone/PhoneType;->FAX_HOME:Lcom/callapp/framework/phone/PhoneType;

    new-instance v10, Lcom/callapp/framework/phone/PhoneType;

    const-string v12, "PAGER"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/callapp/framework/phone/PhoneType;->PAGER:Lcom/callapp/framework/phone/PhoneType;

    new-instance v12, Lcom/callapp/framework/phone/PhoneType;

    const-string v14, "OTHER"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/callapp/framework/phone/PhoneType;->OTHER:Lcom/callapp/framework/phone/PhoneType;

    new-instance v14, Lcom/callapp/framework/phone/PhoneType;

    const-string v13, "CALLBACK"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/callapp/framework/phone/PhoneType;->CALLBACK:Lcom/callapp/framework/phone/PhoneType;

    new-instance v13, Lcom/callapp/framework/phone/PhoneType;

    const-string v15, "CAR"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/callapp/framework/phone/PhoneType;->CAR:Lcom/callapp/framework/phone/PhoneType;

    new-instance v15, Lcom/callapp/framework/phone/PhoneType;

    const-string v11, "COMPANY_MAIN"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/callapp/framework/phone/PhoneType;->COMPANY_MAIN:Lcom/callapp/framework/phone/PhoneType;

    .line 6
    new-instance v11, Lcom/callapp/framework/phone/PhoneType;

    const-string v9, "ISDN"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/callapp/framework/phone/PhoneType;->ISDN:Lcom/callapp/framework/phone/PhoneType;

    new-instance v9, Lcom/callapp/framework/phone/PhoneType;

    const-string v7, "MAIN"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/callapp/framework/phone/PhoneType;->MAIN:Lcom/callapp/framework/phone/PhoneType;

    new-instance v7, Lcom/callapp/framework/phone/PhoneType;

    const-string v5, "OTHER_FAX"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/callapp/framework/phone/PhoneType;->OTHER_FAX:Lcom/callapp/framework/phone/PhoneType;

    new-instance v5, Lcom/callapp/framework/phone/PhoneType;

    const-string v3, "RADIO"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/framework/phone/PhoneType;->RADIO:Lcom/callapp/framework/phone/PhoneType;

    new-instance v3, Lcom/callapp/framework/phone/PhoneType;

    const-string v2, "TELEX"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/callapp/framework/phone/PhoneType;->TELEX:Lcom/callapp/framework/phone/PhoneType;

    new-instance v2, Lcom/callapp/framework/phone/PhoneType;

    const-string v7, "TTY_TDD"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v2, v7, v5, v3}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/framework/phone/PhoneType;->TTY_TDD:Lcom/callapp/framework/phone/PhoneType;

    new-instance v7, Lcom/callapp/framework/phone/PhoneType;

    const-string v5, "WORK_MOBILE"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v7, v5, v3, v2}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/callapp/framework/phone/PhoneType;->WORK_MOBILE:Lcom/callapp/framework/phone/PhoneType;

    new-instance v5, Lcom/callapp/framework/phone/PhoneType;

    const-string v3, "WORK_PAGER"

    move-object/from16 v20, v7

    const/16 v7, 0x12

    invoke-direct {v5, v3, v2, v7}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/framework/phone/PhoneType;->WORK_PAGER:Lcom/callapp/framework/phone/PhoneType;

    new-instance v3, Lcom/callapp/framework/phone/PhoneType;

    const-string v2, "ASSISTANT"

    move-object/from16 v21, v5

    const/16 v5, 0x13

    invoke-direct {v3, v2, v7, v5}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/callapp/framework/phone/PhoneType;->ASSISTANT:Lcom/callapp/framework/phone/PhoneType;

    new-instance v2, Lcom/callapp/framework/phone/PhoneType;

    const-string v7, "MMS"

    move-object/from16 v22, v3

    const/16 v3, 0x14

    invoke-direct {v2, v7, v5, v3}, Lcom/callapp/framework/phone/PhoneType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/framework/phone/PhoneType;->MMS:Lcom/callapp/framework/phone/PhoneType;

    new-array v3, v3, [Lcom/callapp/framework/phone/PhoneType;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    const/16 v0, 0x11

    aput-object v21, v3, v0

    const/16 v0, 0x12

    aput-object v22, v3, v0

    aput-object v2, v3, v5

    .line 3
    sput-object v3, Lcom/callapp/framework/phone/PhoneType;->$VALUES:[Lcom/callapp/framework/phone/PhoneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/callapp/framework/phone/PhoneType;->code:I

    return-void
.end method

.method public static fromCode(I)Lcom/callapp/framework/phone/PhoneType;
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    .line 16
    invoke-static {}, Lcom/callapp/framework/phone/PhoneType;->values()[Lcom/callapp/framework/phone/PhoneType;

    move-result-object v0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lcom/callapp/framework/phone/PhoneType;->OTHER:Lcom/callapp/framework/phone/PhoneType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/framework/phone/PhoneType;
    .locals 1

    .line 3
    const-class v0, Lcom/callapp/framework/phone/PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/framework/phone/PhoneType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/framework/phone/PhoneType;
    .locals 1

    .line 3
    sget-object v0, Lcom/callapp/framework/phone/PhoneType;->$VALUES:[Lcom/callapp/framework/phone/PhoneType;

    invoke-virtual {v0}, [Lcom/callapp/framework/phone/PhoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/framework/phone/PhoneType;

    return-object v0
.end method
