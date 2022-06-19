.class public Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleImageObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Z


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;

    move-result-object v0

    .line 1375
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder;)V

    .line 241
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;

    .line 242
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->b:I

    .line 243
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->c:I

    .line 244
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->d:Ljava/lang/String;

    .line 245
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->e:Landroid/view/View$OnClickListener;

    .line 246
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->f(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)I
    .locals 0

    .line 232
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->b:I

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)I
    .locals 0

    .line 232
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->c:I

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Ljava/lang/String;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->e:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;)Z
    .locals 0

    .line 232
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject;->f:Z

    return p0
.end method
