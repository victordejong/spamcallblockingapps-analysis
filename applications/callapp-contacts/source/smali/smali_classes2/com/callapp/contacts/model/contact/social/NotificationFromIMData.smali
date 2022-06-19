.class public Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;
.super Lcom/callapp/contacts/model/contact/ExternalSourceData;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ExternalSourceData;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;->setFullName(Ljava/lang/String;)V

    return-void
.end method
