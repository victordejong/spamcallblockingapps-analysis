.class Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/view/View$OnClickListener;

.field private final c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)I
    .locals 0

    .line 249
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->d:I

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)I
    .locals 0

    .line 249
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->e:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)Ljava/lang/String;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->b:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)Z
    .locals 0

    .line 249
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->f:Z

    return p0
.end method


# virtual methods
.method public final a()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 276
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;I)I

    return-object p0
.end method

.method public final a(I)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 0

    .line 1307
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->d:I

    const/4 p1, -0x1

    .line 313
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->e:I

    return-object p0
.end method

.method public final a(II)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 282
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;I)I

    .line 283
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;I)I

    return-object p0
.end method

.method public final a(Landroid/widget/ImageView$ScaleType;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public final b(Landroid/widget/ImageView$ScaleType;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public final b()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setShouldShowItem(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->f:Z

    return-void
.end method
