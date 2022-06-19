.class public Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$ReferAndEarnStatusConverter;,
        Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;
    }
.end annotation


# instance fields
.field transient __boxStore:Lio/objectbox/BoxStore;

.field private date:J

.field private globalPhoneNumber:Ljava/lang/String;

.field protected id:Ljava/lang/Long;

.field private nameOrNumber:Ljava/lang/String;

.field public referAndEarnDataToOne:Lio/objectbox/relation/ToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToOne;

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->referAndEarnDataToOne:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToOne;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->referAndEarnDataToOne:Lio/objectbox/relation/ToOne;

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->IDLE:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    iput-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->status:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;J)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToOne;

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->referAndEarnDataToOne:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToOne;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->referAndEarnDataToOne:Lio/objectbox/relation/ToOne;

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->IDLE:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    iput-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->status:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    .line 61
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->globalPhoneNumber:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->status:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    .line 63
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->nameOrNumber:Ljava/lang/String;

    .line 64
    iput-wide p3, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->date:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;J)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToOne;

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->referAndEarnDataToOne:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToOne;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->referAndEarnDataToOne:Lio/objectbox/relation/ToOne;

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->IDLE:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    iput-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->status:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    .line 68
    iput-object p2, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->globalPhoneNumber:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->status:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->nameOrNumber:Ljava/lang/String;

    .line 71
    iput-wide p4, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->date:J

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->date:J

    return-wide v0
.end method

.method public getGlobalPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->globalPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOrNumber()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->nameOrNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getReferAndEarnDataToOne()Lio/objectbox/relation/ToOne;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->referAndEarnDataToOne:Lio/objectbox/relation/ToOne;

    return-object v0
.end method

.method public getStatus()Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->status:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    return-object v0
.end method

.method public setDate(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->date:J

    return-void
.end method

.method public setGlobalPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->globalPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setNameOrNumber(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->nameOrNumber:Ljava/lang/String;

    return-void
.end method

.method public setReferAndEarnDataToOne(Lio/objectbox/relation/ToOne;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->referAndEarnDataToOne:Lio/objectbox/relation/ToOne;

    return-void
.end method

.method public setStatus(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->status:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    return-void
.end method
