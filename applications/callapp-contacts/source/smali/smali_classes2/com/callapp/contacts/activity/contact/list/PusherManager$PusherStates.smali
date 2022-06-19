.class public final enum Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/PusherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PusherStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

.field public static final enum DEFAULT_NO_PUSHER:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

.field public static final enum HUAWEI_PROTECTED_APPS:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

.field public static final enum MISSING_AUTO_START_PERMISSION:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

.field public static final enum SHOW_ALLOW_DRAW_OVERLAY:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    const-string v1, "DEFAULT_NO_PUSHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->DEFAULT_NO_PUSHER:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    .line 10
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    const-string v3, "SHOW_ALLOW_DRAW_OVERLAY"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->SHOW_ALLOW_DRAW_OVERLAY:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    .line 11
    new-instance v3, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    const-string v6, "MISSING_AUTO_START_PERMISSION"

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-direct {v3, v6, v7, v8}, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->MISSING_AUTO_START_PERMISSION:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    .line 12
    new-instance v6, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    const-string v8, "HUAWEI_PROTECTED_APPS"

    const/4 v9, 0x3

    const/4 v10, 0x6

    invoke-direct {v6, v8, v9, v10}, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->HUAWEI_PROTECTED_APPS:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    new-array v5, v5, [Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v7

    aput-object v6, v5, v9

    .line 7
    sput-object v5, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->$VALUES:[Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;
    .locals 1

    .line 7
    const-class v0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;
    .locals 1

    .line 7
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->$VALUES:[Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->id:I

    return v0
.end method
