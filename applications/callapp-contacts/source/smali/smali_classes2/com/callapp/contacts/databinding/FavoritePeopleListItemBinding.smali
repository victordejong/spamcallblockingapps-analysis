.class public final Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/TextView;

.field public final k:Lcom/callapp/contacts/widget/ProfilePictureView;

.field public final l:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

.field public final m:Landroid/view/View;

.field public final n:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final o:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/callapp/contacts/widget/ProfilePictureView;Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    iput-object p2, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->a:Landroid/widget/TextView;

    .line 76
    iput-object p3, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->b:Landroid/widget/TextView;

    .line 77
    iput-object p4, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->c:Landroid/widget/TextView;

    .line 78
    iput-object p5, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->d:Landroid/widget/TextView;

    .line 79
    iput-object p6, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->e:Landroid/widget/TextView;

    .line 80
    iput-object p7, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->f:Landroid/widget/TextView;

    .line 81
    iput-object p8, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->g:Landroid/widget/TextView;

    .line 82
    iput-object p9, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->h:Landroid/widget/TextView;

    .line 83
    iput-object p10, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->i:Landroid/widget/TextView;

    .line 84
    iput-object p11, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->j:Landroid/widget/TextView;

    .line 85
    iput-object p12, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->k:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 86
    iput-object p13, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->l:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    .line 87
    iput-object p14, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->m:Landroid/view/View;

    .line 88
    iput-object p15, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;
    .locals 23

    const v0, 0x7f0d0106

    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 105
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a028f

    .line 1119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    const v2, 0x7f0a0916

    const v3, 0x7f0a07e1

    const v4, 0x7f0a06f7

    const v6, 0x7f0a06ec

    const v7, 0x7f0a0572

    const v8, 0x7f0a0362

    const v9, 0x7f0a0361

    const v10, 0x7f0a0360

    const v11, 0x7f0a035f

    const v12, 0x7f0a035d

    const v13, 0x7f0a035c

    const v14, 0x7f0a035b

    const v15, 0x7f0a035a

    if-eqz v5, :cond_d

    .line 1125
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 1131
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_b

    .line 1137
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_a

    .line 1143
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_9

    .line 1149
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_8

    .line 1155
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_7

    .line 1161
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_6

    .line 1167
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_5

    .line 1173
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_4

    .line 1179
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Lcom/callapp/contacts/widget/ProfilePictureView;

    if-eqz v19, :cond_3

    .line 1185
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    if-eqz v20, :cond_2

    .line 1191
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 1197
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v22, :cond_0

    .line 1202
    new-instance v2, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v2

    move-object v6, v1

    move-object v7, v15

    move-object v8, v14

    move-object v9, v13

    move-object v10, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    invoke-direct/range {v3 .. v18}, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/callapp/contacts/widget/ProfilePictureView;Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-object v2

    :cond_0
    const v1, 0x7f0a0916

    goto :goto_0

    :cond_1
    const v1, 0x7f0a07e1

    goto :goto_0

    :cond_2
    const v1, 0x7f0a06f7

    goto :goto_0

    :cond_3
    const v1, 0x7f0a06ec

    goto :goto_0

    :cond_4
    const v1, 0x7f0a0572

    goto :goto_0

    :cond_5
    const v1, 0x7f0a0362

    goto :goto_0

    :cond_6
    const v1, 0x7f0a0361

    goto :goto_0

    :cond_7
    const v1, 0x7f0a0360

    goto :goto_0

    :cond_8
    const v1, 0x7f0a035f

    goto :goto_0

    :cond_9
    const v1, 0x7f0a035d

    goto :goto_0

    :cond_a
    const v1, 0x7f0a035c

    goto :goto_0

    :cond_b
    const v1, 0x7f0a035b

    goto :goto_0

    :cond_c
    const v1, 0x7f0a035a

    .line 1207
    :cond_d
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1208
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
