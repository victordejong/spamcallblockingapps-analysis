.class public Lcom/callapp/contacts/model/contact/SocialMatchesData;
.super Lcom/callapp/contacts/activity/base/BaseViewTypeData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;
    }
.end annotation


# instance fields
.field private checkBoxListener:Landroid/view/View$OnClickListener;

.field private dataSource:Lcom/callapp/contacts/model/contact/DataSource;

.field private name:Ljava/lang/String;

.field private photoResId:I

.field private photoUrl:Ljava/lang/String;

.field private pictureListener:Landroid/view/View$OnClickListener;

.field private socialBadgeBackgroundColor:I

.field private socialBadgeResourceId:I

.field private socialNetId:I

.field private state:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

.field private sureListener:Landroid/view/View$OnClickListener;

.field private unSureListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;-><init>()V

    .line 24
    iput p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->socialNetId:I

    .line 25
    iput p2, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->socialBadgeResourceId:I

    .line 26
    iput p3, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->socialBadgeBackgroundColor:I

    .line 27
    iput p4, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->photoResId:I

    .line 28
    sget-object p1, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->SEARCHING:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->state:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    return-void
.end method


# virtual methods
.method public getCheckBoxListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->checkBoxListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoResId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->photoResId:I

    return v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->pictureListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getSocialBadgeBackgroundColor()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->socialBadgeBackgroundColor:I

    return v0
.end method

.method public getSocialBadgeResourceId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->socialBadgeResourceId:I

    return v0
.end method

.method public getSocialName()Ljava/lang/String;
    .locals 2

    .line 64
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->socialNetId:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialNetId()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->socialNetId:I

    return v0
.end method

.method public getState()Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->state:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    return-object v0
.end method

.method public getSureListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->sureListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getUnSureListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->unSureListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public setCheckBoxListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->checkBoxListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhotoResId(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->photoResId:I

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public setPictureListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->pictureListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->state:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    return-void
.end method

.method public setSureListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->sureListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setUnSureListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialMatchesData;->unSureListener:Landroid/view/View$OnClickListener;

    return-void
.end method
