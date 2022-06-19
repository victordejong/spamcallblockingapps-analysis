.class public final Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroidx/fragment/app/FragmentContainerView;

.field private final i:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/fragment/app/FragmentContainerView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    iput-object p2, p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->a:Landroid/widget/TextView;

    .line 55
    iput-object p3, p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->b:Landroid/widget/ImageView;

    .line 56
    iput-object p4, p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->c:Landroid/widget/ImageView;

    .line 57
    iput-object p5, p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->d:Landroid/widget/ImageView;

    .line 58
    iput-object p6, p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    iput-object p7, p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->f:Landroid/widget/TextView;

    .line 60
    iput-object p8, p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->g:Landroid/widget/TextView;

    .line 61
    iput-object p9, p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->h:Landroidx/fragment/app/FragmentContainerView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;
    .locals 13

    const v0, 0x7f0a0369

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    const v1, 0x7f0a074c

    const v2, 0x7f0a074b

    const v3, 0x7f0a074a

    const v5, 0x7f0a0519

    const v6, 0x7f0a04c9

    const v7, 0x7f0a04c8

    if-eqz v4, :cond_6

    .line 98
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 104
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    .line 110
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 115
    move-object v9, p0

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 118
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_2

    .line 124
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_1

    .line 130
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v12, :cond_0

    .line 135
    new-instance p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    move-object v2, p0

    move-object v3, v9

    move-object v5, v0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-direct/range {v2 .. v11}, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/fragment/app/FragmentContainerView;)V

    return-object p0

    :cond_0
    const v0, 0x7f0a074c

    goto :goto_0

    :cond_1
    const v0, 0x7f0a074b

    goto :goto_0

    :cond_2
    const v0, 0x7f0a074a

    goto :goto_0

    :cond_3
    const v0, 0x7f0a0519

    goto :goto_0

    :cond_4
    const v0, 0x7f0a04c9

    goto :goto_0

    :cond_5
    const v0, 0x7f0a04c8

    .line 139
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
