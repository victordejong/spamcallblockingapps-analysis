.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/LayoutInflater;

.field public b:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;->b:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;->a:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;->b:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    const v2, 0x7f110284

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801d7

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x65

    invoke-direct {v1, v2, v3, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;->b:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    const v2, 0x7f110283

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801d6

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x66

    invoke-direct {v1, v2, v3, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;->b:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    const v2, 0x7f110281

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0801d5

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 v3, 0x67

    invoke-direct {v1, v2, p1, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;->b:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;->a:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00ab

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a05dd

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;->b:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a030a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;->b:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
