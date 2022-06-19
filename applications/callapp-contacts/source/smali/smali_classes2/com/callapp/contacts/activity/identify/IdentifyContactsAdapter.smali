.class public Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/identify/IdentifyContactsData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/identify/IdentifyContactsData;",
            ">;",
            "Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;->a:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 3

    .line 13
    check-cast p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    .line 1036
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;

    .line 1094
    iput-object p2, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->x:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    .line 1095
    new-instance v1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;

    invoke-direct {v1, p1, p2}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Lcom/callapp/contacts/activity/identify/IdentifyContactsData;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1098
    iget-object v1, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->t:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->getSuggestedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v1, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->v:Landroid/widget/TextView;

    new-instance v2, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$1;

    invoke-direct {v2, p1, v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$1;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    iget-object v1, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->w:Landroid/widget/TextView;

    new-instance v2, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$2;

    invoke-direct {v2, p1, v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$2;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    iget-object v0, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->r:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$3;

    invoke-direct {v1, p1, p2}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$3;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Lcom/callapp/contacts/activity/identify/IdentifyContactsData;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    iget-object p2, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1127
    iget v0, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->y:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1128
    iget-object p2, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->requestLayout()V

    .line 1129
    iget-object p2, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->u:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1130
    iget-object p1, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->u:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2030
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d02d9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2031
    new-instance p2, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
