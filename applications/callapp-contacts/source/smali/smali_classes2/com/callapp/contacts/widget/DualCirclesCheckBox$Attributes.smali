.class Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/DualCirclesCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Attributes"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

.field private b:I

.field private c:I

.field private d:F


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/widget/DualCirclesCheckBox;)V
    .locals 2

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->a:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->b:I

    .line 44
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->c:I

    .line 45
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07024b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->d:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/widget/DualCirclesCheckBox;Lcom/callapp/contacts/widget/DualCirclesCheckBox$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;-><init>(Lcom/callapp/contacts/widget/DualCirclesCheckBox;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->d:F

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->b:I

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->b:I

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->c:I

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->c:I

    return p1
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->d:F

    return p0
.end method
