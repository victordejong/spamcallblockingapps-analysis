.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->x()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->x()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->K(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d00e0

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->x()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    move-result-object p3

    aget-object p1, p3, p1

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;->a()I

    move-result p3

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;->n:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    if-ne p1, v0, :cond_3

    sget-object p3, Lr71$a;->M0:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lr71$a;->g:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const p3, 0x7f0801c0

    goto :goto_1

    :cond_2
    :goto_0
    const p3, 0x7f0801c1

    :cond_3
    :goto_1
    const v0, 0x7f0a0315

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const p3, 0x7f0a064c

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;->b()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method
