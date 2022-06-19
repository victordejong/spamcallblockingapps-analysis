.class public Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;
.super Lcom/callapp/contacts/activity/base/BaseViewTypeData;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->b:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->a:Ljava/lang/String;

    return-void
.end method
