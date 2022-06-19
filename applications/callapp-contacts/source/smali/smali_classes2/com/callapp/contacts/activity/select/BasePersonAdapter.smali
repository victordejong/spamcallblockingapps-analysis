.class public abstract Lcom/callapp/contacts/activity/select/BasePersonAdapter;
.super Lcom/callapp/contacts/activity/base/BaseArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;,
        Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseArrayAdapter<",
        "Lcom/callapp/contacts/model/PersonData;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;

.field private b:I

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;)V
    .locals 1
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

    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;",
            "Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;",
            "I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;-><init>(Ljava/util/List;)V

    .line 38
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->c:Landroid/view/LayoutInflater;

    .line 39
    iput-object p2, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->a:Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;

    .line 41
    iput p3, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->b:I

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 46
    new-instance p2, Lcom/callapp/contacts/model/PersonData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/model/PersonData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/select/BasePersonAdapter;)Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->a:Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;

    return-object p0
.end method

.method private a()Z
    .locals 2

    .line 55
    iget v0, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .line 106
    new-instance p2, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;-><init>(Lcom/callapp/contacts/activity/select/BasePersonAdapter;)V

    const v0, 0x7f0a0289

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ContactItemView;

    iput-object v0, p2, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->h:Lcom/callapp/contacts/widget/ContactItemView;

    .line 110
    new-instance v0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/select/BasePersonAdapter$1;-><init>(Lcom/callapp/contacts/activity/select/BasePersonAdapter;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;)V

    .line 117
    iget-object v1, p2, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->h:Lcom/callapp/contacts/widget/ContactItemView;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/ContactItemView;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p2, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->h:Lcom/callapp/contacts/widget/ContactItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ContactItemView;->setOnItemLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 119
    iget-object v1, p2, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->h:Lcom/callapp/contacts/widget/ContactItemView;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/ContactItemView;->setOnProfileClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p2, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->h:Lcom/callapp/contacts/widget/ContactItemView;

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ContactItemView;->setSecondRowTextColor(I)V

    const v0, 0x7f0a06ed

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p2, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->g:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x7f060026

    .line 123
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method protected a(Landroid/view/View;ILcom/callapp/contacts/model/PersonData;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;

    .line 84
    iput p2, p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->d:I

    .line 86
    invoke-virtual {p3}, Lcom/callapp/contacts/model/PersonData;->getType()I

    move-result p2

    iput p2, p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->a:I

    .line 87
    invoke-virtual {p3}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->b:Ljava/lang/String;

    .line 88
    invoke-virtual {p3}, Lcom/callapp/contacts/model/PersonData;->getPublicProfileUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->e:Ljava/lang/String;

    .line 90
    iget-object p2, p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->g:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p2, p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->h:Lcom/callapp/contacts/widget/ContactItemView;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ContactItemView;->setFirstRowText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p2, p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->h:Lcom/callapp/contacts/widget/ContactItemView;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/PersonData;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ContactItemView;->setSecondRowText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p3}, Lcom/callapp/contacts/model/PersonData;->getType()I

    move-result p2

    invoke-static {p2}, Lcom/callapp/contacts/model/contact/DataSource;->getDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 98
    invoke-static {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p2

    iput-object p2, p1, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->f:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    .line 101
    :cond_0
    invoke-virtual {p3}, Lcom/callapp/contacts/model/PersonData;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p3, Lcom/callapp/contacts/model/PersonData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->a(Landroid/view/View;ILcom/callapp/contacts/model/PersonData;)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 164
    iget v0, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->b:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLayoutResourceId(I)I
    .locals 0

    const p1, 0x7f0d0169

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    .line 64
    iget-object p1, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->c:Landroid/view/LayoutInflater;

    const p2, 0x7f0d016e

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p1, 0x7f0a058a

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x7f060088

    .line 66
    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p3, 0x7f120507

    .line 67
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a0333

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0600f3

    .line 69
    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-object p2

    .line 74
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 2

    .line 156
    iget v0, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public setSeperatorPosition(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter;->b:I

    return-void
.end method
