.class public final Lcom/callapp/contacts/databinding/CallDurationItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/LinearLayout;

.field public final m:Landroid/widget/TextView;

.field public final n:Lcom/callapp/contacts/widget/ProfilePictureView;

.field public final o:Landroid/view/View;

.field public final p:Landroid/widget/LinearLayout;

.field private final q:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/callapp/contacts/widget/ProfilePictureView;Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 2

    move-object v0, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 80
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->q:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 81
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->a:Landroid/widget/TextView;

    move-object v1, p3

    .line 82
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->b:Landroid/widget/RelativeLayout;

    move-object v1, p4

    .line 83
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->c:Landroid/widget/TextView;

    move-object v1, p5

    .line 84
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->d:Landroid/widget/TextView;

    move-object v1, p6

    .line 85
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->e:Landroid/widget/TextView;

    move-object v1, p7

    .line 86
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->f:Landroid/widget/TextView;

    move-object v1, p8

    .line 87
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->g:Landroid/widget/TextView;

    move-object v1, p9

    .line 88
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->h:Landroid/widget/TextView;

    move-object v1, p10

    .line 89
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->i:Landroid/widget/TextView;

    move-object v1, p11

    .line 90
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->j:Landroid/widget/TextView;

    move-object v1, p12

    .line 91
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->k:Landroid/widget/TextView;

    move-object v1, p13

    .line 92
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->l:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 93
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->m:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 94
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->n:Lcom/callapp/contacts/widget/ProfilePictureView;

    move-object/from16 v1, p16

    .line 95
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->o:Landroid/view/View;

    move-object/from16 v1, p17

    .line 96
    iput-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->p:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallDurationItemBinding;
    .locals 26

    const v0, 0x7f0d006f

    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 113
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a028f

    .line 1127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    const v3, 0x7f0a07e1

    const v4, 0x7f0a06eb

    const v6, 0x7f0a062d

    const v7, 0x7f0a0583

    const v8, 0x7f0a0572

    const v9, 0x7f0a0362

    const v10, 0x7f0a0361

    const v11, 0x7f0a0360

    const v12, 0x7f0a035f

    const v13, 0x7f0a035d

    const v14, 0x7f0a035c

    const v15, 0x7f0a035b

    const v1, 0x7f0a035a

    const v2, 0x7f0a02d9

    if-eqz v5, :cond_e

    .line 1133
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_d

    .line 1139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_f

    .line 1145
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 1151
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_b

    .line 1157
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_a

    .line 1163
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_9

    .line 1169
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_8

    .line 1175
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v17, v11

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_7

    .line 1181
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v18, v10

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_6

    .line 1187
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_5

    .line 1193
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Landroid/widget/LinearLayout;

    if-eqz v20, :cond_4

    .line 1199
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v21, v7

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_3

    .line 1205
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v22, v6

    check-cast v22, Lcom/callapp/contacts/widget/ProfilePictureView;

    if-eqz v22, :cond_2

    .line 1211
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_1

    const v4, 0x7f0a091f

    .line 1217
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/LinearLayout;

    if-eqz v24, :cond_0

    .line 1222
    new-instance v25, Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    move-object/from16 v3, v25

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v6, v16

    move-object v7, v2

    move-object v8, v1

    move-object v9, v15

    move-object v10, v14

    move-object v11, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    invoke-direct/range {v3 .. v20}, Lcom/callapp/contacts/databinding/CallDurationItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/callapp/contacts/widget/ProfilePictureView;Landroid/view/View;Landroid/widget/LinearLayout;)V

    return-object v25

    :cond_0
    const v1, 0x7f0a091f

    goto :goto_0

    :cond_1
    const v1, 0x7f0a07e1

    goto :goto_0

    :cond_2
    const v1, 0x7f0a06eb

    goto :goto_0

    :cond_3
    const v1, 0x7f0a062d

    goto :goto_0

    :cond_4
    const v1, 0x7f0a0583

    goto :goto_0

    :cond_5
    const v1, 0x7f0a0572

    goto :goto_0

    :cond_6
    const v1, 0x7f0a0362

    goto :goto_0

    :cond_7
    const v1, 0x7f0a0361

    goto :goto_0

    :cond_8
    const v1, 0x7f0a0360

    goto :goto_0

    :cond_9
    const v1, 0x7f0a035f

    goto :goto_0

    :cond_a
    const v1, 0x7f0a035d

    goto :goto_0

    :cond_b
    const v1, 0x7f0a035c

    goto :goto_0

    :cond_c
    const v1, 0x7f0a035b

    goto :goto_0

    :cond_d
    const v1, 0x7f0a02d9

    goto :goto_0

    :cond_e
    const v1, 0x7f0a028f

    .line 1227
    :cond_f
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1228
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
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->q:Landroid/widget/LinearLayout;

    return-object v0
.end method
