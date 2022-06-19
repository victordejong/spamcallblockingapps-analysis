.class public Lcom/callapp/contacts/activity/invite/MultipleContactsData;
.super Lcom/callapp/contacts/activity/base/BaseViewTypeData;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/callapp/contacts/activity/invite/MultipleContactsData;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMultipleContactsData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/MultipleContactsData;->a:Ljava/util/List;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method
