.class public Lcom/unknownphone/callblocker/a/a/a/c;
.super Landroidx/fragment/app/Fragment;
.source "ContactFragment.java"


# instance fields
.field private a:Lcom/unknownphone/callblocker/f/a;

.field private ae:Landroidx/appcompat/widget/AppCompatButton;

.field private af:Landroidx/appcompat/widget/AppCompatButton;

.field private ag:Landroidx/appcompat/widget/AppCompatTextView;

.field private ah:Landroidx/appcompat/widget/AppCompatTextView;

.field private ai:Lcom/unknownphone/callblocker/a/a/a/a;

.field private b:Landroidx/appcompat/widget/AppCompatImageButton;

.field private c:Landroidx/appcompat/widget/AppCompatImageButton;

.field private d:Lcom/unknownphone/callblocker/d/b;

.field private e:Landroidx/appcompat/widget/AppCompatImageView;

.field private f:Landroidx/appcompat/widget/AppCompatButton;

.field private g:Landroidx/appcompat/widget/AppCompatButton;

.field private h:Landroidx/appcompat/widget/AppCompatButton;

.field private i:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/unknownphone/callblocker/f/a;Lcom/unknownphone/callblocker/a/a/a/a;)Lcom/unknownphone/callblocker/a/a/a/c;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/a/a/a/c;-><init>()V

    .line 55
    iput-object p0, v0, Lcom/unknownphone/callblocker/a/a/a/c;->a:Lcom/unknownphone/callblocker/f/a;

    .line 56
    iput-object p1, v0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    .line 57
    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/a/a/c;)Lcom/unknownphone/callblocker/f/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->a:Lcom/unknownphone/callblocker/f/a;

    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/a/a/c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/a/a/a/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/a/a/a/c;)Lcom/unknownphone/callblocker/a/a/a/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 182
    new-instance v0, Lcom/unknownphone/callblocker/a/c;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/a/c;-><init>()V

    .line 183
    invoke-virtual {v0, v3}, Lcom/unknownphone/callblocker/a/c;->a(S)V

    .line 184
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    invoke-virtual {v1, p1}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/c;->a(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/c;->b(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c;->d:Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/d/b;->a(Lcom/unknownphone/callblocker/a/c;)V

    .line 187
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->a:Lcom/unknownphone/callblocker/f/a;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unknownphone/callblocker/f/a;->d(I)V

    .line 188
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->a:Lcom/unknownphone/callblocker/f/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/b;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c;->a:Lcom/unknownphone/callblocker/f/a;

    const v2, 0x7f090110

    invoke-interface {v1, v2, v0, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V

    .line 190
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f0c0053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    const v0, 0x7f090168

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->f:Landroidx/appcompat/widget/AppCompatButton;

    .line 64
    const v0, 0x7f09017b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->g:Landroidx/appcompat/widget/AppCompatButton;

    .line 65
    const v0, 0x7f0901ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->h:Landroidx/appcompat/widget/AppCompatButton;

    .line 66
    const v0, 0x7f0900f2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ae:Landroidx/appcompat/widget/AppCompatButton;

    .line 67
    const v0, 0x7f090088

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 68
    const v0, 0x7f09018b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->af:Landroidx/appcompat/widget/AppCompatButton;

    .line 69
    const v0, 0x7f09004d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 70
    const v0, 0x7f090141

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    const v0, 0x7f0900ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 72
    const v0, 0x7f0901d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ag:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    const v0, 0x7f0900f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ah:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    return-object v1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0600cb

    const/16 v5, 0x14

    .line 81
    new-instance v0, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->d:Lcom/unknownphone/callblocker/d/b;

    .line 84
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ag:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ah:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f10020e

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->i:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->e:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "#004f4d"

    .line 89
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v4

    .line 88
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/c$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/a/c$1;-><init>(Lcom/unknownphone/callblocker/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/c$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/a/c$2;-><init>(Lcom/unknownphone/callblocker/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->f:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/c$3;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/a/c$3;-><init>(Lcom/unknownphone/callblocker/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->af:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/c$4;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/a/c$4;-><init>(Lcom/unknownphone/callblocker/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->g:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/c$5;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/a/c$5;-><init>(Lcom/unknownphone/callblocker/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ae:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/c$6;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/a/c$6;-><init>(Lcom/unknownphone/callblocker/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->h:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/c$7;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/a/c$7;-><init>(Lcom/unknownphone/callblocker/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    .line 93
    invoke-virtual {v1}, Lcom/unknownphone/callblocker/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->a(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/bumptech/glide/f/e;->a()Lcom/bumptech/glide/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 95
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c;->ai:Lcom/unknownphone/callblocker/a/a/a/a;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "#004f4d"

    .line 97
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v4

    .line 96
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f/a/i;->c(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
