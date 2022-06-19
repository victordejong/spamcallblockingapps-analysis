.class public final enum Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phone/libphone/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum c:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum d:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum e:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum f:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum g:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum h:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum i:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum j:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum k:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum l:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field public static final enum m:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

.field private static final synthetic n:[Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "FIXED_LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->b:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v1, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v3, "MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->c:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v3, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v5, "FIXED_LINE_OR_MOBILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->d:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v5, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v7, "TOLL_FREE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->e:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v7, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v9, "PREMIUM_RATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->f:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v9, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v11, "SHARED_COST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->g:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v11, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v13, "VOIP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->h:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v13, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v15, "PERSONAL_NUMBER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->i:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v15, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v14, "PAGER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->j:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v14, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v12, "UAN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->k:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v12, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v10, "VOICEMAIL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->l:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    new-instance v10, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const-string v8, "UNKNOWN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->m:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->n:[Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;
    .locals 1

    const-class v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    return-object p0
.end method

.method public static values()[Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;
    .locals 1

    sget-object v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->n:[Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v0}, [Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    return-object v0
.end method
