.class final Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ThemesCircleColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

.field private e:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;Ljava/util/List;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;",
            "Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;",
            ")V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->d:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    .line 118
    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->c:Ljava/util/List;

    .line 119
    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->e:I

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;I)I
    .locals 0

    .line 111
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->e:I

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;Lcom/callapp/contacts/widget/DualCirclesCheckBox;)Lcom/callapp/contacts/widget/DualCirclesCheckBox;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->d:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;)Lcom/callapp/contacts/widget/DualCirclesCheckBox;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->d:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->b:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method final getCheckedPosition()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->e:I

    return v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 12

    .line 111
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;

    .line 1131
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    const v1, 0x7f0600f2

    .line 1132
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    if-eqz v0, :cond_9

    .line 1134
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1135
    :goto_0
    iget-object v5, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setTag(Ljava/lang/Object;)V

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    .line 1139
    iget-object v6, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-virtual {v6, v5}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->b(I)Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    .line 1140
    iget-object v6, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-virtual {v6, v1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a(I)Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    goto/16 :goto_3

    .line 1142
    :cond_1
    iget-object v6, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    .line 1196
    iget-object v7, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    iget-object v7, v7, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v7}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v7

    const-string v8, "light_"

    const-string v9, "dark_"

    if-nez v7, :cond_2

    .line 1197
    iget-object v7, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    iget-object v7, v7, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    goto :goto_1

    .line 1199
    :cond_2
    iget-object v7, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    iget-object v7, v7, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    .line 1202
    :goto_1
    iget v7, v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->b:I

    .line 1142
    invoke-virtual {v6, v7}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->b(I)Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    .line 1143
    iget-object v6, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    .line 1207
    iget-object v7, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    iget-object v7, v7, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v7}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1208
    iget-object v7, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    iget-object v7, v7, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    goto :goto_2

    .line 1210
    :cond_3
    iget-object v7, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    iget-object v7, v7, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;

    .line 1213
    :goto_2
    iget v7, v7, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;->c:I

    .line 1143
    invoke-virtual {v6, v7}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a(I)Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    .line 1146
    :goto_3
    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0803fc

    .line 1147
    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1149
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1151
    :cond_4
    iget-object v1, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_5
    const v0, 0x7f0805b3

    .line 1153
    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz v2, :cond_6

    .line 1156
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    .line 1158
    :cond_6
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1160
    :goto_4
    iget-object v1, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1164
    :cond_7
    :goto_5
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->e:I

    if-ne p2, v0, :cond_8

    .line 1165
    iget-object p2, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-virtual {p2, v3}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setChecked(Z)V

    .line 1166
    iget-object p2, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->d:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    goto :goto_6

    .line 1168
    :cond_8
    iget-object p2, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-virtual {p2, v4}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setChecked(Z)V

    .line 1171
    :goto_6
    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    new-instance p2, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;-><init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2124
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d010d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2125
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2126
    new-instance p2, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-direct {p2, v0, p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;-><init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;Landroid/view/View;)V

    return-object p2
.end method

.method public final setDefaultTheme(Ljava/lang/String;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->e:I

    return-void
.end method
