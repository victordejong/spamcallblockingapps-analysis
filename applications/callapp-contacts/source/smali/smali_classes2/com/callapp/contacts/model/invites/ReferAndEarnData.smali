.class public Lcom/callapp/contacts/model/invites/ReferAndEarnData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field transient __boxStore:Lio/objectbox/BoxStore;

.field private earnedPoints:I

.field protected id:Ljava/lang/Long;

.field private referAndEarnUserDataToMany:Lio/objectbox/relation/ToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field

.field private referId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnData_;->referAndEarnUserDataToMany:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->referAndEarnUserDataToMany:Lio/objectbox/relation/ToMany;

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->earnedPoints:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnData_;->referAndEarnUserDataToMany:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->referAndEarnUserDataToMany:Lio/objectbox/relation/ToMany;

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->earnedPoints:I

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->referId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnData_;->referAndEarnUserDataToMany:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->referAndEarnUserDataToMany:Lio/objectbox/relation/ToMany;

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->earnedPoints:I

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->referId:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->earnedPoints:I

    return-void
.end method


# virtual methods
.method public getEarnedPoints()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->earnedPoints:I

    return v0
.end method

.method public getReferAndEarnUserDataToMany()Lio/objectbox/relation/ToMany;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->referAndEarnUserDataToMany:Lio/objectbox/relation/ToMany;

    return-object v0
.end method

.method public getReferId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->referId:Ljava/lang/String;

    return-object v0
.end method

.method public setEarnedPoints(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->earnedPoints:I

    return-void
.end method

.method public setReferAndEarnUserDataToMany(Lio/objectbox/relation/ToMany;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->referAndEarnUserDataToMany:Lio/objectbox/relation/ToMany;

    return-void
.end method

.method public setReferId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->referId:Ljava/lang/String;

    return-void
.end method
