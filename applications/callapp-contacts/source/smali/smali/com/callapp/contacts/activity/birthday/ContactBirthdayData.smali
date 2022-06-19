.class public Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private d:Lcom/callapp/framework/phone/Phone;

.field private e:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/framework/phone/Phone;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/callapp/common/model/json/JSONSocialNetworkID;",
            "Lcom/callapp/framework/phone/Phone;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/callapp/common/model/json/JSONSocialNetworkID;",
            "Lcom/callapp/framework/phone/Phone;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->b:Ljava/util/ArrayList;

    .line 26
    iput-object p3, p0, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 27
    iput-object p4, p0, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->d:Lcom/callapp/framework/phone/Phone;

    .line 28
    iput-object p5, p0, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->e:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayPhotoUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->b:Ljava/util/ArrayList;

    return-object v0
.end method
