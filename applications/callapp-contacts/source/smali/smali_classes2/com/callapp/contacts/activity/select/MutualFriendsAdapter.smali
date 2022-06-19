.class public Lcom/callapp/contacts/activity/select/MutualFriendsAdapter;
.super Lcom/callapp/contacts/activity/select/BasePersonAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;",
            "Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;ILcom/callapp/contacts/model/PersonData;)V
    .locals 1

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->a(Landroid/view/View;ILcom/callapp/contacts/model/PersonData;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;

    .line 19
    iget-object p2, p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->g:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/PersonData;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeResId(I)I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 20
    iget-object p1, p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->g:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/PersonData;->getType()I

    move-result p2

    invoke-static {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeBgColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    return-void
.end method

.method public final bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p3, Lcom/callapp/contacts/model/PersonData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/select/MutualFriendsAdapter;->a(Landroid/view/View;ILcom/callapp/contacts/model/PersonData;)V

    return-void
.end method
