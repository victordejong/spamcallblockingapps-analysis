.class public final Lcom/callapp/contacts/databinding/CircleGraphItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Lcom/callapp/contacts/activity/analytics/graph/DecoView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final g:Lcom/callapp/contacts/widget/ProfilePictureView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/FrameLayout;

.field private final j:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/callapp/contacts/activity/analytics/graph/DecoView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/callapp/contacts/widget/ProfilePictureView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    iput-object p2, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->a:Lcom/callapp/contacts/activity/analytics/graph/DecoView;

    .line 60
    iput-object p3, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->b:Landroid/widget/ImageView;

    .line 61
    iput-object p4, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->c:Landroid/widget/TextView;

    .line 62
    iput-object p5, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->d:Landroid/widget/TextView;

    .line 63
    iput-object p6, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->e:Landroid/widget/ImageView;

    .line 64
    iput-object p7, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    iput-object p8, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->g:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 66
    iput-object p9, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->h:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->i:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CircleGraphItemBinding;
    .locals 13

    const v0, 0x7f0d0097

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a0231

    .line 1098
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/callapp/contacts/activity/analytics/graph/DecoView;

    const v0, 0x7f0a02c5

    const v1, 0x7f0a0238

    const v2, 0x7f0a0237

    const v4, 0x7f0a0235

    const v5, 0x7f0a0234

    const v6, 0x7f0a0233

    const v7, 0x7f0a0232

    if-eqz v3, :cond_7

    .line 1104
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 1110
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .line 1116
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 1122
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 1127
    move-object v9, p0

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1130
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/callapp/contacts/widget/ProfilePictureView;

    if-eqz v10, :cond_2

    .line 1136
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_1

    .line 1142
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    .line 1147
    new-instance p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;

    move-object v1, p0

    move-object v2, v9

    move-object v4, p1

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-direct/range {v1 .. v11}, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/callapp/contacts/activity/analytics/graph/DecoView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/callapp/contacts/widget/ProfilePictureView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V

    return-object p0

    :cond_0
    const p1, 0x7f0a02c5

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0238

    goto :goto_0

    :cond_2
    const p1, 0x7f0a0237

    goto :goto_0

    :cond_3
    const p1, 0x7f0a0235

    goto :goto_0

    :cond_4
    const p1, 0x7f0a0234

    goto :goto_0

    :cond_5
    const p1, 0x7f0a0233

    goto :goto_0

    :cond_6
    const p1, 0x7f0a0232

    .line 1151
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1152
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
