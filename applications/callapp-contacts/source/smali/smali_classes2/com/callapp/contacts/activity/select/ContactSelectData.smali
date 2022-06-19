.class public Lcom/callapp/contacts/activity/select/ContactSelectData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/activity/select/ContactSelectData;",
        ">;"
    }
.end annotation


# instance fields
.field private contactId:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/ContactSelectData;->userId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/callapp/contacts/activity/select/ContactSelectData;->contactId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/callapp/contacts/activity/select/ContactSelectData;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/callapp/contacts/activity/select/ContactSelectData;)I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/ContactSelectData;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/select/ContactSelectData;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/callapp/contacts/activity/select/ContactSelectData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/select/ContactSelectData;->compareTo(Lcom/callapp/contacts/activity/select/ContactSelectData;)I

    move-result p1

    return p1
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/ContactSelectData;->contactId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/ContactSelectData;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/ContactSelectData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/ContactSelectData;->contactId:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/ContactSelectData;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/ContactSelectData;->userId:Ljava/lang/String;

    return-void
.end method
