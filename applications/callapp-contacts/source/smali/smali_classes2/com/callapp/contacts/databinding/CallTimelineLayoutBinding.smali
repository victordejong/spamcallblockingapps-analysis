.class public final Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;

.field public final f:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/ImageView;

.field public final j:Landroid/widget/ImageView;

.field public final k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final l:Landroid/widget/TextView;

.field public final m:Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;

.field public final n:Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;

.field private final o:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->o:Landroid/widget/LinearLayout;

    .line 75
    iput-object p2, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->a:Landroid/widget/ImageView;

    .line 76
    iput-object p3, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->b:Landroid/widget/ImageView;

    .line 77
    iput-object p4, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->c:Landroid/widget/TextView;

    .line 78
    iput-object p5, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->d:Landroid/widget/TextView;

    .line 79
    iput-object p6, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->e:Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;

    .line 80
    iput-object p7, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    iput-object p8, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->g:Landroid/widget/TextView;

    .line 82
    iput-object p9, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->h:Landroid/widget/ImageView;

    .line 83
    iput-object p10, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->i:Landroid/widget/ImageView;

    .line 84
    iput-object p11, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->j:Landroid/widget/ImageView;

    .line 85
    iput-object p12, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 86
    iput-object p13, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->l:Landroid/widget/TextView;

    .line 87
    iput-object p14, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->m:Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;

    .line 88
    iput-object p15, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->n:Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;
    .locals 23

    const v0, 0x7f0d0073

    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 105
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02e3

    .line 1119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    const v2, 0x7f0a06f9

    const v3, 0x7f0a06f8

    const v4, 0x7f0a0666

    const v6, 0x7f0a0665

    const v7, 0x7f0a0628

    const v8, 0x7f0a0627

    const v9, 0x7f0a0598

    const v10, 0x7f0a0501

    const v11, 0x7f0a04ff

    const v12, 0x7f0a04fc

    const v13, 0x7f0a02e6

    const v14, 0x7f0a02e5

    const v15, 0x7f0a02e4

    if-eqz v5, :cond_d

    .line 1125
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

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

    if-eqz v13, :cond_9

    .line 1147
    invoke-static {v13}, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->a(Landroid/view/View;)Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;

    move-result-object v12

    .line 1150
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v13, :cond_8

    .line 1156
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_7

    .line 1162
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_6

    .line 1168
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_5

    .line 1174
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_4

    .line 1180
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v19, :cond_3

    .line 1186
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_2

    .line 1192
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1196
    invoke-static {v4}, Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;->a(Landroid/view/View;)Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;

    move-result-object v21

    .line 1199
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1203
    invoke-static {v3}, Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;->a(Landroid/view/View;)Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;

    move-result-object v2

    .line 1205
    new-instance v22, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v22

    move-object v6, v1

    move-object v7, v15

    move-object v8, v14

    move-object v9, v12

    move-object v10, v13

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    invoke-direct/range {v3 .. v18}, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;)V

    return-object v22

    :cond_0
    const v1, 0x7f0a06f9

    goto :goto_0

    :cond_1
    const v1, 0x7f0a06f8

    goto :goto_0

    :cond_2
    const v1, 0x7f0a0666

    goto :goto_0

    :cond_3
    const v1, 0x7f0a0665

    goto :goto_0

    :cond_4
    const v1, 0x7f0a0628

    goto :goto_0

    :cond_5
    const v1, 0x7f0a0627

    goto :goto_0

    :cond_6
    const v1, 0x7f0a0598

    goto :goto_0

    :cond_7
    const v1, 0x7f0a0501

    goto :goto_0

    :cond_8
    const v1, 0x7f0a04ff

    goto :goto_0

    :cond_9
    const v1, 0x7f0a04fc

    goto :goto_0

    :cond_a
    const v1, 0x7f0a02e6

    goto :goto_0

    :cond_b
    const v1, 0x7f0a02e5

    goto :goto_0

    :cond_c
    const v1, 0x7f0a02e4

    .line 1211
    :cond_d
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1212
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
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method
