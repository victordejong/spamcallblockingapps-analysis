.class public Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private i:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field private j:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field private final k:I

.field private l:Z

.field private m:I

.field private n:F

.field private o:F


# direct methods
.method public constructor <init>(IIILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ZILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 14

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p10

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 55
    invoke-direct/range {v0 .. v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 14

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    .line 49
    invoke-direct/range {v0 .. v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 10

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 61
    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 14

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0x7f0601ec

    move-object v0, p0

    move v2, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    .line 67
    invoke-direct/range {v0 .. v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->a:Ljava/lang/CharSequence;

    .line 24
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->b:Ljava/lang/CharSequence;

    .line 25
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->c:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->d:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->i:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 32
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->j:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->l:Z

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->n:F

    .line 38
    iput v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->o:F

    if-eqz p5, :cond_0

    .line 74
    iput-object p5, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->a:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p7, :cond_1

    .line 77
    iput-object p7, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->b:Ljava/lang/CharSequence;

    :cond_1
    if-eqz p8, :cond_2

    .line 80
    iput-object p8, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->c:Ljava/lang/String;

    :cond_2
    if-eqz p11, :cond_3

    .line 83
    iput-object p11, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->d:Ljava/lang/String;

    .line 85
    :cond_3
    iput-object p10, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->i:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 86
    iput-object p13, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->j:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 87
    iput p2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->e:I

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->f:Ljava/lang/String;

    .line 89
    iput p3, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->g:I

    .line 90
    iput p4, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->h:I

    .line 91
    iput p12, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->k:I

    .line 92
    iput-boolean p9, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->l:Z

    .line 93
    iput p6, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->m:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0x7f0601ec

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    .line 43
    invoke-direct/range {v0 .. v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d00d9

    return v0
.end method

.method protected getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getNegativeBtnText()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->j:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-object v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 149
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method protected getPositiveBtnText()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->i:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->getLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setupViews(Landroid/view/View;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method protected setMessageSize(F)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->n:F

    return-void
.end method

.method protected setPositiveListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->i:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 14

    .line 123
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->m:I

    const v2, 0x7f0a0a4d

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;II)Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0a0a48

    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    .line 125
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->n:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->n:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->o:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 129
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    move-result-object v4

    const v5, 0x7f0a0318

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->l:Z

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;Z)Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    move-result-object v10

    const v11, 0x7f0a0315

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->getNegativeBtnText()Ljava/lang/String;

    move-result-object v12

    iget v13, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->k:I

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;I)Landroid/view/View;

    const v0, 0x7f0a0958

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0115

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0116

    .line 136
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 137
    iget v2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 138
    iget v1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->h:I

    invoke-static {p1, v1, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 140
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 141
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void

    .line 143
    :cond_2
    iget p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->e:I

    invoke-static {v0, p1, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void
.end method
