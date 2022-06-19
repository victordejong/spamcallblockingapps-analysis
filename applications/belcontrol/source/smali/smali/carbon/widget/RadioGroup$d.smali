.class public Lcarbon/widget/RadioGroup$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public final synthetic b:Lcarbon/widget/RadioGroup;


# direct methods
.method public constructor <init>(Lcarbon/widget/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/RadioGroup$d;->b:Lcarbon/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcarbon/widget/RadioGroup;Lcarbon/widget/RadioGroup$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/RadioGroup$d;-><init>(Lcarbon/widget/RadioGroup;)V

    return-void
.end method

.method public static synthetic a(Lcarbon/widget/RadioGroup$d;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    iput-object p1, p0, Lcarbon/widget/RadioGroup$d;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/RadioGroup$d;->b:Lcarbon/widget/RadioGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Lcarbon/widget/RadioButton;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v0, p2

    check-cast v0, Lcarbon/widget/RadioButton;

    iget-object v1, p0, Lcarbon/widget/RadioGroup$d;->b:Lcarbon/widget/RadioGroup;

    invoke-static {v1}, Lcarbon/widget/RadioGroup;->x(Lcarbon/widget/RadioGroup;)Lcarbon/widget/RadioButton$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/widget/RadioButton;->setOnCheckedChangeWidgetListener(Lcarbon/widget/RadioButton$b;)V

    :cond_1
    iget-object v0, p0, Lcarbon/widget/RadioGroup$d;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/RadioGroup$d;->b:Lcarbon/widget/RadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcarbon/widget/RadioButton;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcarbon/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcarbon/widget/RadioButton;->setOnCheckedChangeWidgetListener(Lcarbon/widget/RadioButton$b;)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/RadioGroup$d;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method
