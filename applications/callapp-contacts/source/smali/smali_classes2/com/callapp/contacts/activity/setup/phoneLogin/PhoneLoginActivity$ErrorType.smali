.class public final enum Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

.field public static final enum FLASH_CALL_INIT:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

.field public static final enum FLASH_CALL_NO_PERMISSIONS:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

.field public static final enum FLASH_CALL_SERVER_CODE:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

.field public static final enum FLASH_CALL_VERIFICATION:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

.field public static final enum SMS_SENT_FAIL:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

.field public static final enum SMS_SERVER_CODE:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 159
    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    const-string v1, "FLASH_CALL_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->FLASH_CALL_INIT:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    .line 160
    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    const-string v3, "FLASH_CALL_VERIFICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->FLASH_CALL_VERIFICATION:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    .line 161
    new-instance v3, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    const-string v5, "FLASH_CALL_SERVER_CODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->FLASH_CALL_SERVER_CODE:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    .line 162
    new-instance v5, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    const-string v7, "FLASH_CALL_NO_PERMISSIONS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->FLASH_CALL_NO_PERMISSIONS:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    .line 163
    new-instance v7, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    const-string v9, "SMS_SERVER_CODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->SMS_SERVER_CODE:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    .line 164
    new-instance v9, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    const-string v11, "SMS_SENT_FAIL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->SMS_SENT_FAIL:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 158
    sput-object v11, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->$VALUES:[Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;
    .locals 1

    .line 158
    const-class v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;
    .locals 1

    .line 158
    sget-object v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->$VALUES:[Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    return-object v0
.end method
