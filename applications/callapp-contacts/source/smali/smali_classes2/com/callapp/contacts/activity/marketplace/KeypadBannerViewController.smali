.class public Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/viewcontroller/ViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;
    }
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field public b:Landroid/view/View;

.field c:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->b:Landroid/view/View;

    .line 32
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a0552

    .line 33
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0a0551

    .line 34
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1203f3

    .line 35
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f1203f4

    .line 36
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a054b

    .line 37
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->a:Landroid/widget/TextView;

    const p2, 0x7f0a054d

    .line 38
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1201e3

    .line 39
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f120354

    .line 40
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$1;-><init>(Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$2;-><init>(Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->b:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 58
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->b:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public static a()Z
    .locals 12

    .line 101
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 106
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gi:Lcom/callapp/contacts/manager/preferences/prefs/LongArray;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongArray;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gi:Lcom/callapp/contacts/manager/preferences/prefs/LongArray;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongArray;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Long;

    .line 111
    :goto_0
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_6

    .line 113
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->ai:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->isNotNull()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->ai:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    :goto_1
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 114
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 116
    invoke-static {v3, v2}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v4

    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x1

    const/4 v10, 0x1

    cmp-long v11, v4, v6

    if-nez v11, :cond_3

    aget-object v4, v0, v1

    if-nez v4, :cond_3

    .line 117
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 118
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gi:Lcom/callapp/contacts/manager/preferences/prefs/LongArray;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongArray;->set(Ljava/lang/Object;)V

    return v10

    .line 121
    :cond_3
    invoke-static {v3, v2}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v11, v4, v6

    if-nez v11, :cond_4

    aget-object v4, v0, v10

    if-nez v4, :cond_4

    .line 122
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v10

    .line 123
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gi:Lcom/callapp/contacts/manager/preferences/prefs/LongArray;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongArray;->set(Ljava/lang/Object;)V

    return v10

    .line 126
    :cond_4
    invoke-static {v3, v2}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v4

    const-wide/16 v6, 0xe

    cmp-long v11, v4, v6

    if-nez v11, :cond_5

    const/4 v4, 0x2

    aget-object v5, v0, v4

    if-nez v5, :cond_5

    .line 127
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    .line 128
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gi:Lcom/callapp/contacts/manager/preferences/prefs/LongArray;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongArray;->set(Ljava/lang/Object;)V

    return v10

    .line 131
    :cond_5
    invoke-static {v3, v2}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-lez v0, :cond_6

    .line 132
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_6
    return v1
.end method


# virtual methods
.method public synthetic a(I)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$a(Lcom/callapp/contacts/activity/viewcontroller/ViewController;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$b(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)V

    return-void
.end method

.method public synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getContext(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->c:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;

    return-object v0
.end method

.method public synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getResources(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->b:Landroid/view/View;

    return-object v0
.end method

.method public synthetic isViewShown()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$isViewShown(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->c:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;

    return-void
.end method
