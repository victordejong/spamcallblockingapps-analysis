.class public final Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;
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
        "Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;",
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
.field public static final a:Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;->a:Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/callapp/contacts/activity/contact/details/ContactAction;

    .line 13
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->WHATSAPP:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->TELEGRAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->DUO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->VIBER:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->HANGOUTS:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SKYPE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->WECHAT:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ALLO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SIGNAL:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;->b:Ljava/util/List;

    return-object v0
.end method
