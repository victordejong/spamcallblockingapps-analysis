.class public final Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\n\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;",
        "",
        "()V",
        "instantMessagingApps",
        "",
        "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
        "getCallFabActions",
        "contactData",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "getCurrentIm",
        "getCurrentPromotion",
        "isAppInstalled",
        "",
        "contactAction",
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
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;-><init>()V

    return-void
.end method

.method private static a(Lcom/callapp/contacts/activity/contact/details/ContactAction;)Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 46
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    invoke-static {p0}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object p0

    const-string v0, "Singletons.get().getImSenderHelper(it)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->isAppInstalled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/activity/contact/details/ContactAction;
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;->INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    :goto_0
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 70
    invoke-static {v2}, Lkotlin/a/n;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x17

    .line 71
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v4, :cond_1

    .line 72
    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactAction;->PVR:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isInstalledApp()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p0

    const-string v2, "ReferAndEarnFeature"

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 75
    sget-object p0, Lcom/callapp/contacts/activity/contact/details/ContactAction;->REFER_AND_EARN:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_3

    .line 78
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    return-object p0

    .line 80
    :cond_3
    sget-object p0, Lkotlin/e/c;->a:Lkotlin/e/c$a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lkotlin/e/c$a;->a(II)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    return-object p0
.end method

.method private final getCurrentIm()Lcom/callapp/contacts/activity/contact/details/ContactAction;
    .locals 5

    .line 53
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    .line 54
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UNKNOWN:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string v1, "defaultIm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;->a(Lcom/callapp/contacts/activity/contact/details/ContactAction;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 84
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    .line 56
    sget-object v4, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;->a:Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;->a(Lcom/callapp/contacts/activity/contact/details/ContactAction;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 85
    :goto_0
    move-object v0, v1

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-eqz v0, :cond_3

    .line 59
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 62
    :cond_3
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UNKNOWN:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-ne v0, v1, :cond_4

    return-object v2

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/callapp/contacts/activity/contact/details/ContactAction;

    .line 16
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SMS_MESSAGE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/a/n;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;->getCurrentIm()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v1

    if-nez v1, :cond_3

    .line 22
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isBusiness()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;->a:Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;->b(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_SPAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_1
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SPAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    .line 31
    :cond_2
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ADD_CONTACT:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;->a:Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;->b(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 37
    :cond_3
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->NOTE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_4

    .line 39
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;->a:Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;->b(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method
