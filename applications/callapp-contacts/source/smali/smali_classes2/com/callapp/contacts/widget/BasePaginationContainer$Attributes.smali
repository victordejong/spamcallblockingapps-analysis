.class Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/BasePaginationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Attributes"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/BasePaginationContainer;

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/widget/BasePaginationContainer;)V
    .locals 2

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->a:Lcom/callapp/contacts/widget/BasePaginationContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/BasePaginationContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->b:I

    .line 44
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/BasePaginationContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->c:I

    .line 45
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/BasePaginationContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->d:F

    .line 46
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/BasePaginationContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->e:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 47
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->f:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/widget/BasePaginationContainer;Lcom/callapp/contacts/widget/BasePaginationContainer$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;-><init>(Lcom/callapp/contacts/widget/BasePaginationContainer;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->d:F

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->b:I

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->b:I

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->e:F

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->c:I

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->c:I

    return p1
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->d:F

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->f:F

    return p1
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->e:F

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->f:F

    return p0
.end method
