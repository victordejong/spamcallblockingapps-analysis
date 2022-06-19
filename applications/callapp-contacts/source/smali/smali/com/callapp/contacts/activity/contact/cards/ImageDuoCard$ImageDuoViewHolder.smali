.class public Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageDuoViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Landroid/view/View;)V
    .locals 3

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0577

    .line 94
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->b:Landroid/view/View;

    const v0, 0x7f0a0537

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->c:Landroid/widget/ImageView;

    const v1, 0x7f0a0536

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->d:Landroid/widget/ImageView;

    const v2, 0x7f0a053a

    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->e:Landroid/widget/TextView;

    const p1, 0x7f0a076c

    .line 99
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->f:Landroid/view/View;

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->g:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->h:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->i:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Landroid/view/View;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Landroid/view/View;)V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;ILjava/lang/Integer;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_2

    .line 166
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 167
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void

    .line 169
    :cond_1
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;Z)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 131
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 136
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 137
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;)I

    move-result v0

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;->c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 140
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;->d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;)I

    move-result v0

    .line 143
    :goto_0
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;->e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 144
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;->f(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;)Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p2, :cond_2

    .line 147
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 149
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)V
    .locals 5

    .line 1120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->c:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;

    move-result-object v1

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->a(Landroid/widget/ImageView;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;Z)V

    .line 1121
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)I

    move-result v0

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1155
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v4, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->a(Landroid/widget/ImageView;ILjava/lang/Integer;)V

    .line 1109
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->e:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1110
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 1190
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2125
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->g:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;

    move-result-object v1

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->f(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->a(Landroid/widget/ImageView;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;Z)V

    .line 2126
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->f:Landroid/view/View;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)I

    move-result v0

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2159
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->h:Landroid/widget/ImageView;

    invoke-static {v2, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->a(Landroid/widget/ImageView;ILjava/lang/Integer;)V

    .line 1115
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Ljava/lang/String;

    move-result-object v0

    .line 2179
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->i:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1116
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Landroid/view/View$OnClickListener;

    move-result-object p1

    .line 2194
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
