.class public Lcom/callapp/contacts/activity/base/HeaderSectionData;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/HeaderSectionData;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/HeaderSectionData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
