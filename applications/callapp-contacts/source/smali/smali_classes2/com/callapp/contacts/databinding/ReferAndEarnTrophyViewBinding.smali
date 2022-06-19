.class public final Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final e:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

.field public final f:Landroid/widget/RelativeLayout;

.field public final g:Landroid/widget/ProgressBar;

.field private final h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    iput-object p2, p0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->a:Landroid/widget/TextView;

    .line 53
    iput-object p3, p0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->b:Landroid/widget/TextView;

    .line 54
    iput-object p4, p0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->c:Landroid/widget/LinearLayout;

    .line 55
    iput-object p5, p0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    iput-object p6, p0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->e:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    .line 57
    iput-object p7, p0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->f:Landroid/widget/RelativeLayout;

    .line 58
    iput-object p8, p0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->g:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;
    .locals 10

    const v0, 0x7f0d0257

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a036a

    .line 1089
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f0a097d

    const v1, 0x7f0a0748

    const v2, 0x7f0a0747

    const v4, 0x7f0a06c8

    const v5, 0x7f0a06c7

    if-eqz v3, :cond_5

    .line 1095
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 1101
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    .line 1106
    move-object v6, p0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1109
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    if-eqz v7, :cond_2

    .line 1115
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_1

    .line 1121
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ProgressBar;

    if-eqz v9, :cond_0

    .line 1126
    new-instance p0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-object v1, p0

    move-object v2, v6

    move-object v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;)V

    return-object p0

    :cond_0
    const p1, 0x7f0a097d

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0748

    goto :goto_0

    :cond_2
    const p1, 0x7f0a0747

    goto :goto_0

    :cond_3
    const p1, 0x7f0a06c8

    goto :goto_0

    :cond_4
    const p1, 0x7f0a06c7

    .line 1130
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1131
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
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
