.class public abstract Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ContactDataForNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1919
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;)Ljava/lang/String;
    .locals 6

    .line 1989
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getNameForNotificationLine()Ljava/lang/String;

    move-result-object v0

    .line 1992
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1993
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</b>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1996
    :goto_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "\u200e\u202a"

    const-string/jumbo v3, "\u200f\u202b"

    const-string/jumbo v4, "\u202c"

    if-eqz v1, :cond_2

    .line 1997
    invoke-static {}, Lcom/callapp/contacts/util/ViewUtils;->isLocaleLTR()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2000
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2004
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getSourcePhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2006
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2007
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, ")"

    if-eqz v1, :cond_3

    .line 2008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2010
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2014
    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2016
    invoke-static {}, Lcom/callapp/contacts/util/ViewUtils;->isLocaleLTR()Z

    move-result p0

    const v0, 0x7f120198

    if-eqz p0, :cond_5

    .line 2017
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2019
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1976
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;

    .line 1978
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getSourcePhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1979
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getSourcePhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1980
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1981
    invoke-static {v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->setContactData(Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getAddContactIntent()Landroid/content/Intent;
    .locals 2

    .line 1937
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->b:Lcom/callapp/contacts/model/contact/ContactData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 1940
    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getCallappName()Ljava/lang/String;
    .locals 1

    .line 1969
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->b:Lcom/callapp/contacts/model/contact/ContactData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1972
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactData()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 1929
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->b:Lcom/callapp/contacts/model/contact/ContactData;

    return-object v0
.end method

.method public getNameForNotificationLine()Ljava/lang/String;
    .locals 1

    .line 2027
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getCallappName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2028
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getCallappName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2029
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2030
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 1955
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->b:Lcom/callapp/contacts/model/contact/ContactData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1958
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSourceDate()Ljava/util/Date;
.end method

.method public abstract getSourceName()Ljava/lang/String;
.end method

.method public abstract getSourcePhone()Lcom/callapp/framework/phone/Phone;
.end method

.method public isContactInDevice()Z
    .locals 1

    .line 1944
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->b:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setContactData(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 1933
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->b:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method
