.class public Lcom/callapp/contacts/popup/ActionSelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/callapp/contacts/popup/ActionSelectAdapter;->a:Ljava/util/List;

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/popup/ActionSelectAdapter;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/popup/ActionSelectAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 54
    iget-object p2, p0, Lcom/callapp/contacts/popup/ActionSelectAdapter;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00aa

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance p3, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;-><init>(Lcom/callapp/contacts/popup/ActionSelectAdapter$1;)V

    const v0, 0x7f0a0554

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;->a(Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 58
    invoke-static {p3}, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;->a(Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a056b

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;->a(Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f080113

    .line 61
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/ActionSelectAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/widget/WidgetMetaData;

    .line 68
    iget-object v0, p1, Lcom/callapp/contacts/model/widget/WidgetMetaData;->label:Ljava/lang/String;

    .line 69
    invoke-static {p3}, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;->a(Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {p3}, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;->b(Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    iget p1, p1, Lcom/callapp/contacts/model/widget/WidgetMetaData;->menuResId:I

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x7f060087

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p3, p1, v0}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-object p2
.end method
