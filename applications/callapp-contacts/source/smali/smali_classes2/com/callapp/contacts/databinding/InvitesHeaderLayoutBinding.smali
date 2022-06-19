.class public final Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/Guideline;

.field public final b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/TextView;

.field private final g:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    iput-object p2, p0, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;->a:Landroidx/constraintlayout/widget/Guideline;

    .line 47
    iput-object p3, p0, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p4, p0, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;->c:Landroid/widget/ImageView;

    .line 49
    iput-object p5, p0, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;->d:Landroid/widget/ImageView;

    .line 50
    iput-object p6, p0, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;->e:Landroid/widget/ImageView;

    .line 51
    iput-object p7, p0, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;->f:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;
    .locals 9

    const v0, 0x7f0d0163

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a047d

    .line 1082
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/Guideline;

    const v0, 0x7f0a07fe

    const v1, 0x7f0a07fb

    const v2, 0x7f0a07fa

    const v4, 0x7f0a07f9

    if-eqz v3, :cond_4

    .line 1087
    move-object p1, p0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1090
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 1096
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    .line 1102
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 1108
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 1113
    new-instance p0, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object p0

    :cond_0
    const p1, 0x7f0a07fe

    goto :goto_0

    :cond_1
    const p1, 0x7f0a07fb

    goto :goto_0

    :cond_2
    const p1, 0x7f0a07fa

    goto :goto_0

    :cond_3
    const p1, 0x7f0a07f9

    .line 1116
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1117
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

    .line 19
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
