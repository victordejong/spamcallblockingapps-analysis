.class public final enum Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/popup/DialogPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BACKGROUND_DARKNESS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

.field public static final enum DARK:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

.field public static final enum DARKEST:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

.field public static final enum LIGHT:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

.field public static final enum NORMAL:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

.field public static final enum TRANSPARENT:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 36
    new-instance v0, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->LIGHT:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    .line 37
    new-instance v1, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->NORMAL:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    .line 38
    new-instance v3, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    const-string v5, "DARK"

    const/4 v6, 0x2

    const v7, 0x3f333333    # 0.7f

    invoke-direct {v3, v5, v6, v7}, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;-><init>(Ljava/lang/String;IF)V

    sput-object v3, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->DARK:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    .line 39
    new-instance v5, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    const-string v7, "DARKEST"

    const/4 v8, 0x3

    const v9, 0x3f666666    # 0.9f

    invoke-direct {v5, v7, v8, v9}, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;-><init>(Ljava/lang/String;IF)V

    sput-object v5, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->DARKEST:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    .line 40
    new-instance v7, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    const-string v9, "TRANSPARENT"

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-direct {v7, v9, v10, v11}, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;-><init>(Ljava/lang/String;IF)V

    sput-object v7, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->TRANSPARENT:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 35
    sput-object v9, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->$VALUES:[Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->value:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;
    .locals 1

    .line 35
    const-class v0, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;
    .locals 1

    .line 35
    sget-object v0, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->$VALUES:[Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    return-object v0
.end method


# virtual methods
.method public final getValue()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->value:F

    return v0
.end method
