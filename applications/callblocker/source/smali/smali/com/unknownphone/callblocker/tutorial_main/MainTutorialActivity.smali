.class public Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;
.super Landroidx/fragment/app/d;
.source "MainTutorialActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;
    }
.end annotation


# instance fields
.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/SharedPreferences;

.field private n:Landroidx/viewpager/widget/ViewPager;

.field private o:Lcom/unknownphone/callblocker/custom/a;

.field private p:Lcom/unknownphone/callblocker/custom/a;

.field private q:Lcom/unknownphone/callblocker/custom/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    .line 48
    new-instance v0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$1;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$1;-><init>(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->o:Lcom/unknownphone/callblocker/custom/a;

    .line 58
    new-instance v0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$2;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$2;-><init>(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->p:Lcom/unknownphone/callblocker/custom/a;

    .line 68
    new-instance v0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$3;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$3;-><init>(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->q:Lcom/unknownphone/callblocker/custom/a;

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->n:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method static synthetic d(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->i()V

    return-void
.end method

.method static synthetic e(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method private f()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 149
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    if-nez v0, :cond_0

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "asked_for_read_contacts_permission"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    new-array v0, v2, [Ljava/lang/String;

    .line 155
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v4, 0x14c

    .line 154
    invoke-static {p0, v0, v4}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 158
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 146
    goto :goto_0

    :cond_3
    move v1, v2

    .line 158
    goto :goto_1
.end method

.method static synthetic g(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Lcom/unknownphone/callblocker/custom/a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->o:Lcom/unknownphone/callblocker/custom/a;

    return-object v0
.end method

.method static synthetic h(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Lcom/unknownphone/callblocker/custom/a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->p:Lcom/unknownphone/callblocker/custom/a;

    return-object v0
.end method

.method private h()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-array v0, v1, [Ljava/lang/String;

    .line 168
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v3, 0xee

    .line 167
    invoke-static {p0, v0, v3}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 170
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic i(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Lcom/unknownphone/callblocker/custom/a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->q:Lcom/unknownphone/callblocker/custom/a;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v1, "package"

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 118
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v2, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->k:Ljava/util/List;

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-static {p0, v3}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-direct {p0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->f()Z

    goto :goto_0

    :cond_0
    move v0, v1

    .line 120
    goto :goto_1

    .line 124
    :pswitch_1
    iget-object v2, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->l:Ljava/util/List;

    const-string/jumbo v3, "android.permission.CALL_PHONE"

    invoke-static {p0, v3}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "android.permission.READ_CALL_LOG"

    .line 125
    invoke-static {p0, v3}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    .line 126
    invoke-static {p0, v3}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_1

    const-string/jumbo v3, "android.permission.ANSWER_PHONE_CALLS"

    .line 128
    invoke-static {p0, v3}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    :goto_2
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-direct {p0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->h()Z

    .line 131
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "seen_tutorial"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 128
    goto :goto_2

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->setContentView(I)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->k:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->l:Ljava/util/List;

    .line 85
    const v0, 0x7f0901ea

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->n:Landroidx/viewpager/widget/ViewPager;

    .line 86
    const v0, 0x7f0901b1

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 87
    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->n:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 88
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->n:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->m()Landroidx/fragment/app/i;

    move-result-object v2

    iget-object v3, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->n:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, p0, v2, v3}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;-><init>(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;Landroidx/fragment/app/i;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 89
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->n:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 91
    const-string/jumbo v0, "com.unknownphone.callblocker.PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->m:Landroid/content/SharedPreferences;

    .line 92
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    const/16 v3, 0xb

    const/16 v2, 0xa

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 96
    .line 97
    array-length v6, p3

    move v4, v5

    move v0, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget v5, p3, v4

    if-eqz v5, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    :cond_1
    const/16 v4, 0x14c

    if-ne p1, v4, :cond_5

    .line 99
    iget-object v4, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->k:Ljava/util/List;

    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    invoke-static {p0, v5}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->k:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->n:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    .line 114
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v3

    .line 99
    goto :goto_1

    .line 102
    :cond_5
    const/16 v4, 0xee

    if-ne p1, v4, :cond_8

    .line 103
    iget-object v4, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->l:Ljava/util/List;

    const-string/jumbo v5, "android.permission.CALL_PHONE"

    invoke-static {p0, v5}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "android.permission.READ_CALL_LOG"

    .line 104
    invoke-static {p0, v5}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    .line 105
    invoke-static {p0, v5}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_7

    const-string/jumbo v5, "android.permission.ANSWER_PHONE_CALLS"

    .line 107
    invoke-static {p0, v5}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 103
    :goto_3
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->l:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->n:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    goto :goto_2

    :cond_7
    move v2, v3

    .line 107
    goto :goto_3

    .line 112
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_2
.end method
