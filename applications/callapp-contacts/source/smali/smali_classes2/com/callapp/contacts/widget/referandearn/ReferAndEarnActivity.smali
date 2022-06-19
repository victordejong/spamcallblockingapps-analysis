.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;
.super Lcom/callapp/contacts/activity/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014J\u0008\u0010\r\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;",
        "Lcom/callapp/contacts/activity/base/BaseActivity;",
        "()V",
        "binding",
        "Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;",
        "getLayoutResourceId",
        "",
        "getViewBinder",
        "Landroidx/viewbinding/ViewBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$Companion;


# instance fields
.field private b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLayoutResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getViewBinder()Landroidx/m/a;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroidx/m/a;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 31
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->a(Landroid/view/LayoutInflater;)Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    move-result-object v0

    const-string v1, "ReferAndEarnLayoutBinding.inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    .line 32
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;

    sget-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;->EXPENDED:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;->a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a074c

    const/4 v2, 0x0

    .line 1293
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a052e

    .line 2293
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    .line 37
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f1205aa

    .line 38
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    const v0, 0x7f0804c7

    .line 39
    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    .line 41
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    const-string v0, "binding"

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0601c1

    .line 45
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0601c0

    .line 47
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    .line 44
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 50
    sget-object p1, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;

    .line 51
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    iget-object v1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->a:Landroid/widget/TextView;

    const p1, 0x7f060236

    .line 52
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v2, 0x7f060244

    .line 53
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 54
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 p1, 0x2

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 56
    new-instance v7, Landroid/text/SpannableString;

    const p1, 0x7f1205b2

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {v7, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const p1, 0x7f08058d

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 50
    invoke-static/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;->a(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;)V

    const p1, 0x7f1205bf

    .line 61
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f1205c0

    .line 62
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Prefs.isPremium.get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Prefs.hasFreeStoreSku.get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const p1, 0x7f1205ab

    .line 66
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f1205ac

    .line 67
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    if-nez v2, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v2, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    iget-object v2, v2, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->g:Landroid/widget/TextView;

    const-string v3, "binding.referAndEarnActi\u2026erAndEarnStoreUnlockTitle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->g:Landroid/widget/TextView;

    const v2, 0x7f0601ec

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->f:Landroid/widget/TextView;

    const-string v3, "binding.referAndEarnActi\u2026ndEarnStoreUnlockSubTitle"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->f:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    if-nez p1, :cond_9

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->d:Landroid/widget/ImageView;

    const-string v1, "binding.referAndEarnActivityLayout.info"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f0601cc

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 78
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_ENTRY_POINT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_a
    const-string p1, "ref"

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    if-nez v1, :cond_b

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_b
    iget-object v1, v1, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    iget-object v1, v1, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$onCreate$2;

    invoke-direct {v2, p0, p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$onCreate$2;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->b:Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    if-nez v1, :cond_c

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_c
    iget-object v0, v1, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    iget-object v0, v0, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$onCreate$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$onCreate$3;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Invite screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 101
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Invite screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->onDestroy()V

    return-void
.end method
