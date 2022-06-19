.class Lcom/rey/material/app/SimpleDialog$b;
.super Landroid/widget/BaseAdapter;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/app/SimpleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private b:[Ljava/lang/CharSequence;

.field private c:[Z

.field private d:I

.field final synthetic e:Lcom/rey/material/app/SimpleDialog;


# direct methods
.method private constructor <init>(Lcom/rey/material/app/SimpleDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/app/SimpleDialog;Lcom/rey/material/app/SimpleDialog$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rey/material/app/SimpleDialog$b;-><init>(Lcom/rey/material/app/SimpleDialog;)V

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-array v1, v2, [I

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_3

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public varargs b([Ljava/lang/CharSequence;[I)V
    .locals 4

    iput-object p1, p0, Lcom/rey/material/app/SimpleDialog$b;->b:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    if-eqz v0, :cond_0

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    :cond_0
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aput-boolean p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    array-length v0, p2

    :goto_1
    if-ge p1, v0, :cond_4

    aget v1, p2, p1

    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_3

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    iput v1, p0, Lcom/rey/material/app/SimpleDialog$b;->d:I

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->b:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->b:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    check-cast p2, Lcom/rey/material/widget/CompoundButton;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {p2}, Lcom/rey/material/app/SimpleDialog;->z0(Lcom/rey/material/app/SimpleDialog;)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    new-instance p2, Lcom/rey/material/widget/CheckBox;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {v4}, Lcom/rey/material/app/SimpleDialog;->A0(Lcom/rey/material/app/SimpleDialog;)I

    move-result v4

    invoke-direct {p2, v3, v0, v2, v4}, Lcom/rey/material/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/rey/material/widget/RadioButton;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {v4}, Lcom/rey/material/app/SimpleDialog;->B0(Lcom/rey/material/app/SimpleDialog;)I

    move-result v4

    invoke-direct {p2, v3, v0, v2, v4}, Lcom/rey/material/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    :goto_0
    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {v0}, Lcom/rey/material/app/SimpleDialog;->y0(Lcom/rey/material/app/SimpleDialog;)I

    move-result v0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {v0}, Lcom/rey/material/app/SimpleDialog;->y0(Lcom/rey/material/app/SimpleDialog;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setMinHeight(I)V

    :cond_1
    const v0, 0x800013

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setGravity(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    check-cast p3, Lcom/rey/material/app/SimpleDialog$c;

    invoke-virtual {p3}, Lcom/rey/material/app/SimpleDialog$c;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v1, 0x4

    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setTextDirection(I)V

    :cond_3
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {v0}, Lcom/rey/material/app/SimpleDialog;->C0(Lcom/rey/material/app/SimpleDialog;)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/CompoundButton;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p3, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    iget p3, p3, Lcom/rey/material/app/Dialog;->m:I

    invoke-static {p2, p3, v2, v2, v2}, Ld/h/m/t;->C0(Landroid/view/View;IIII)V

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/rey/material/app/SimpleDialog$b;->b:[Ljava/lang/CharSequence;

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    instance-of p3, p2, Lcom/rey/material/widget/CheckBox;

    if-eqz p3, :cond_5

    move-object p3, p2

    check-cast p3, Lcom/rey/material/widget/CheckBox;

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    aget-boolean p1, v0, p1

    invoke-virtual {p3, p1}, Lcom/rey/material/widget/CheckBox;->setCheckedImmediately(Z)V

    goto :goto_1

    :cond_5
    move-object p3, p2

    check-cast p3, Lcom/rey/material/widget/RadioButton;

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    aget-boolean p1, v0, p1

    invoke-virtual {p3, p1}, Lcom/rey/material/widget/RadioButton;->setCheckedImmediately(Z)V

    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    aget-boolean v1, v0, p1

    if-eq v1, p2, :cond_0

    aput-boolean p2, v0, p1

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {v0}, Lcom/rey/material/app/SimpleDialog;->D0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/app/SimpleDialog$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {v0}, Lcom/rey/material/app/SimpleDialog;->D0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/app/SimpleDialog$e;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    aget-boolean v1, v1, p1

    invoke-interface {v0, p1, v1}, Lcom/rey/material/app/SimpleDialog$e;->e(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {v0}, Lcom/rey/material/app/SimpleDialog;->z0(Lcom/rey/material/app/SimpleDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/rey/material/app/SimpleDialog$b;->d:I

    if-eq p2, p1, :cond_3

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$b;->c:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p2

    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {p2}, Lcom/rey/material/app/SimpleDialog;->D0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/app/SimpleDialog$e;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {p2}, Lcom/rey/material/app/SimpleDialog;->D0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/app/SimpleDialog$e;

    move-result-object p2

    iget v0, p0, Lcom/rey/material/app/SimpleDialog$b;->d:I

    invoke-interface {p2, v0, v1}, Lcom/rey/material/app/SimpleDialog$e;->e(IZ)V

    :cond_1
    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {p2}, Lcom/rey/material/app/SimpleDialog;->E0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/app/SimpleDialog$c;

    move-result-object p2

    iget v0, p0, Lcom/rey/material/app/SimpleDialog$b;->d:I

    iget-object v2, p0, Lcom/rey/material/app/SimpleDialog$b;->e:Lcom/rey/material/app/SimpleDialog;

    invoke-static {v2}, Lcom/rey/material/app/SimpleDialog;->E0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/app/SimpleDialog$c;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/rey/material/widget/CompoundButton;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    iput p1, p0, Lcom/rey/material/app/SimpleDialog$b;->d:I

    :cond_3
    return-void
.end method
