.class public Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;
.super Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;,
        Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;
    }
.end annotation


# instance fields
.field private e:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->e:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f060088

    aput v2, v0, v1

    .line 1102
    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Z[I)Landroid/util/SparseIntArray;

    move-result-object p2

    .line 1103
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1104
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->f:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1105
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1107
    :cond_0
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->f:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 42
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default_1"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v1

    .line 45
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Landroid/app/Activity;Ljava/lang/String;ZI)V

    .line 46
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 48
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0740

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 51
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$1;-><init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)V

    .line 64
    new-instance v3, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getThemes()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;-><init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;Ljava/util/List;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)V

    iput-object v3, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->e:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    .line 65
    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->setDefaultTheme(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->e:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;-><init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0342

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->f:Landroid/widget/TextView;

    const v1, 0x7f1202c3

    .line 86
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$3;-><init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d010c

    return v0
.end method
