.class public Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/identify/IdentifyContactsData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/callapp/contacts/activity/interfaces/IdentifyContactsChangedListener;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$1;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->b:Lcom/callapp/contacts/activity/interfaces/IdentifyContactsChangedListener;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->h:Z

    return-void
.end method

.method private a()V
    .locals 5

    .line 166
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fn:Lcom/callapp/contacts/manager/preferences/prefs/LongSetPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongSetPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 167
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fo:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 168
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v1, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 170
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;JLjava/util/Set;)V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;Ljava/util/Set;)V
    .locals 5

    .line 2220
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactsWithPhoneNumber()Ljava/util/List;

    move-result-object v0

    .line 2221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a:Ljava/util/ArrayList;

    .line 2223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 2225
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2227
    new-instance v2, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    invoke-direct {v2}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;-><init>()V

    .line 2228
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getContactId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->setSuggestedContactId(J)V

    .line 2229
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->setSuggestedPhone(Lcom/callapp/framework/phone/Phone;)V

    .line 2230
    iget-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2235
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2236
    invoke-direct {p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->b()V

    return-void

    .line 2238
    :cond_2
    new-instance p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a:Ljava/util/ArrayList;

    invoke-direct {p1, v0, p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->g:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;

    .line 2239
    iget-object p0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->d:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->b()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 249
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fn:Lcom/callapp/contacts/manager/preferences/prefs/LongSetPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongSetPref;->set(Ljava/lang/Object;)V

    .line 250
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fo:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->h:Z

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->getSuggestedContactId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->getLoadedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->b(I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->b()V

    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->g:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0033

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 73
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/IdentifyContactsChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->b:Lcom/callapp/contacts/activity/interfaces/IdentifyContactsChangedListener;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Optimize contacts"

    const-string v1, "Identify contacts screen shown"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0600f3

    .line 1082
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    const v0, 0x7f0a077e

    .line 1083
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f0a0497

    .line 1127
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1129
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fp:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x7f0601cc

    const v2, 0x7f060088

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 1132
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1135
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#dff1f7"

    .line 1136
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f060089

    .line 1138
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const v0, 0x7f0a049c

    .line 1141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f120702

    .line 1142
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0496

    .line 1144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1145
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1146
    new-instance v3, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const p1, 0x7f0a0381

    .line 2114
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->f:Landroid/view/View;

    const p1, 0x7f0a0385

    .line 2116
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120701

    .line 2117
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2118
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0383

    .line 2119
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f12070b

    .line 2120
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2121
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a02d8

    .line 1088
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->e:Landroid/view/View;

    .line 1090
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    const v0, 0x7f0a0939

    .line 1092
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f120700

    .line 1093
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1094
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 1095
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1096
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0804c7

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1097
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    const p1, 0x7f0a0480

    .line 1099
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120710

    .line 1100
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0333

    .line 1102
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f06011a

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f0a073e

    .line 1104
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1105
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    const p1, 0x7f0a0594

    .line 1106
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->d:Landroid/widget/ProgressBar;

    .line 1108
    invoke-direct {p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 209
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/IdentifyContactsChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->b:Lcom/callapp/contacts/activity/interfaces/IdentifyContactsChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 210
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 198
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onResume()V

    .line 200
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->h:Z

    .line 202
    invoke-direct {p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a()V

    :cond_0
    return-void
.end method
