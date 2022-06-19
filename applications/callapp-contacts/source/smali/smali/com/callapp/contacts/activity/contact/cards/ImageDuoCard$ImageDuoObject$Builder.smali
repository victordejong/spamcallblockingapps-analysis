.class Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

.field private b:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    .line 330
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;->b:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;->b:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    return-object p0
.end method


# virtual methods
.method public getLeftItemBuilder()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    return-object v0
.end method

.method public getRightItemBuilder()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;->b:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    return-object v0
.end method
