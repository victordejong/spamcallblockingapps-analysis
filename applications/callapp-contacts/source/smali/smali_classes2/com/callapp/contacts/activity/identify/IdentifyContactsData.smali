.class public Lcom/callapp/contacts/activity/identify/IdentifyContactsData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Lcom/callapp/framework/phone/Phone;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadedName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestedContactId()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->a:J

    return-wide v0
.end method

.method public getSuggestedPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->b:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public setLoadedName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->c:Ljava/lang/String;

    return-void
.end method

.method public setSuggestedContactId(J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->a:J

    return-void
.end method

.method public setSuggestedPhone(Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->b:Lcom/callapp/framework/phone/Phone;

    return-void
.end method
