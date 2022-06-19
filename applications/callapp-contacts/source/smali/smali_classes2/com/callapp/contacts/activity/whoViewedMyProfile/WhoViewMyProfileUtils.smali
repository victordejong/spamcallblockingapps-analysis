.class public final Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils;",
        "",
        "()V",
        "Companion",
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
.field public static final a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
