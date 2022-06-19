.class public final enum Lcom/callapp/contacts/widget/BaseItemView$CheckableType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/BaseItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/widget/BaseItemView$CheckableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

.field public static final enum CHECK_BOX_LEFT:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

.field public static final enum CHECK_BOX_RIGHT:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

.field public static final enum IMAGE_FLIP:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

.field public static final enum SWITCH:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    const-string v1, "CHECK_BOX_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;->CHECK_BOX_LEFT:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    .line 41
    new-instance v1, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    const-string v3, "CHECK_BOX_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;->CHECK_BOX_RIGHT:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    .line 42
    new-instance v3, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    const-string v5, "IMAGE_FLIP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;->IMAGE_FLIP:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    .line 43
    new-instance v5, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    const-string v7, "SWITCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;->SWITCH:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 39
    sput-object v7, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;->$VALUES:[Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/widget/BaseItemView$CheckableType;
    .locals 1

    .line 39
    const-class v0, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/widget/BaseItemView$CheckableType;
    .locals 1

    .line 39
    sget-object v0, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;->$VALUES:[Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/widget/BaseItemView$CheckableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    return-object v0
.end method
