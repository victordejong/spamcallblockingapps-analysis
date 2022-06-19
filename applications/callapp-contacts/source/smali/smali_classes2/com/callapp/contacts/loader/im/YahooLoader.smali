.class public Lcom/callapp/contacts/loader/im/YahooLoader;
.super Lcom/callapp/contacts/loader/im/BaseChatLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/loader/im/YahooLoader$YahooChatData;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "@yahoo.com"

    const-string v1, "@ymail.com"

    const-string v2, "@rocketmail.com"

    .line 15
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/im/YahooLoader;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/callapp/contacts/loader/im/BaseChatLoader;-><init>()V

    return-void
.end method

.method public static isYahooInstalled()Z
    .locals 3

    .line 55
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "imto"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "yahoo"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected final a(Lcom/callapp/common/model/json/JSONIMaddress;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ChatData;
    .locals 0

    .line 44
    new-instance p2, Lcom/callapp/contacts/loader/im/YahooLoader$YahooChatData;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/loader/im/YahooLoader$YahooChatData;-><init>(Lcom/callapp/common/model/json/JSONIMaddress;)V

    return-object p2
.end method

.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/ChatData;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getYahooData()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/callapp/contacts/model/contact/ChatData;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setYahooData(Ljava/util/Collection;)V

    .line 50
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateYahooData()V

    return-void
.end method

.method protected getChatField()Lcom/callapp/contacts/model/contact/ContactField;
    .locals 1

    .line 19
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->yahoo:Lcom/callapp/contacts/model/contact/ContactField;

    return-object v0
.end method

.method protected getEmailSuffixes()[Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/callapp/contacts/loader/im/YahooLoader;->a:[Ljava/lang/String;

    return-object v0
.end method

.method protected getProtocolId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected isAppInstalled()Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/callapp/contacts/loader/im/YahooLoader;->isYahooInstalled()Z

    move-result v0

    return v0
.end method
