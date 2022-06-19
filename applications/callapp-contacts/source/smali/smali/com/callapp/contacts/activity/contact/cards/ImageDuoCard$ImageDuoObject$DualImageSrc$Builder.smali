.class Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private e:Landroid/widget/ImageView$ScaleType;

.field private f:Landroid/widget/ImageView$ScaleType;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->e:Landroid/widget/ImageView$ScaleType;

    .line 372
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->f:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;I)I
    .locals 0

    .line 366
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->c:I

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->e:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)I
    .locals 0

    .line 366
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->c:I

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;I)I
    .locals 0

    .line 366
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->d:I

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->f:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)I
    .locals 0

    .line 366
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->d:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->e:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;->f:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method
