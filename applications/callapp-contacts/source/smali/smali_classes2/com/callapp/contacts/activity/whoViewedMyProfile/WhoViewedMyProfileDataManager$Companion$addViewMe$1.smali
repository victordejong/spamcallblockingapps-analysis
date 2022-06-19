.class public final Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion$addViewMe$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->b(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion$addViewMe$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 1

    .line 122
    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;

    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->c()J

    return-void
.end method
