.class public final enum Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationWhoViewedMyProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "INSTANT",
        "DAILY",
        "WEEKLY",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

.field public static final enum DAILY:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

.field public static final enum INSTANT:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

.field public static final enum WEEKLY:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    new-instance v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    const v2, 0x7f120860

    .line 33
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.s\u2026iew_notification_instant)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "INSTANT"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->INSTANT:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    aput-object v1, v0, v4

    new-instance v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    const v2, 0x7f12085f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.s\u2026_view_notification_daily)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "DAILY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->DAILY:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    aput-object v1, v0, v4

    new-instance v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    const v2, 0x7f120861

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.s\u2026view_notification_weekly)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "WEEKLY"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->WEEKLY:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    aput-object v1, v0, v4

    sput-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->$VALUES:[Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;
    .locals 1

    const-class v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->$VALUES:[Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->type:Ljava/lang/String;

    return-object v0
.end method
