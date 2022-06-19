.class public Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog$FirstTimeExperienceListener;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog$FirstTimeExperienceListener;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->b:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    return-void
.end method

.method public static c()Z
    .locals 2

    .line 93
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ev:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static d()Z
    .locals 1

    .line 97
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->es:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()V
    .locals 2

    .line 63
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->es:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog$FirstTimeExperienceListener;

    .line 67
    invoke-interface {v1}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog$FirstTimeExperienceListener;->a()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->a()V

    return-void
.end method

.method public static get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;
    .locals 1

    .line 75
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getFirstTimeExperienceCallLog()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->b:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 13

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->b:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    if-eqz v0, :cond_5

    .line 1072
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1076
    iget-object v1, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1077
    iget-object v1, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1078
    iget-object v1, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->m:Landroid/widget/TextView;

    const v3, 0x7f12033c

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v1, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->n:Landroid/widget/TextView;

    const v3, 0x7f1203a0

    new-array v4, v2, [Ljava/lang/Object;

    const v5, 0x7f12046f

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getScreenOrientation()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getScreenHeight(I)I

    move-result v1

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/view/View;

    .line 1084
    iget-object v5, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->b:Landroid/view/View;

    aput-object v5, v4, v6

    .line 1085
    iget-object v5, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->c:Landroid/view/View;

    aput-object v5, v4, v2

    .line 1086
    iget-object v5, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->d:Landroid/view/View;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 1090
    aget-object v8, v4, v5

    sget-object v9, Landroid/view/View;->Y:Landroid/util/Property;

    aget-object v10, v4, v5

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v1

    aget-object v11, v4, v5

    .line 1091
    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v11

    float-to-int v11, v11

    mul-int/lit16 v12, v5, 0x1f4

    add-int/lit16 v12, v12, 0x3e8

    .line 1090
    invoke-static {v8, v9, v10, v11, v12}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;Landroid/util/Property;III)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1091
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 1147
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->setContactProfilePicture(I)V

    .line 1148
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->setContactRowData(I)V

    .line 1149
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->ey:[Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->setCallTypeIcon(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    new-array v4, v1, [Landroid/view/View;

    .line 1098
    iget-object v5, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->e:Landroid/view/View;

    aput-object v5, v4, v6

    .line 1099
    iget-object v5, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->h:Landroid/view/View;

    aput-object v5, v4, v2

    .line 1100
    iget-object v2, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->f:Landroid/view/View;

    aput-object v2, v4, v7

    .line 1101
    iget-object v2, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->i:Landroid/view/View;

    aput-object v2, v4, v3

    const/4 v2, 0x4

    .line 1102
    iget-object v3, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->g:Landroid/view/View;

    aput-object v3, v4, v2

    const/4 v2, 0x5

    .line 1103
    iget-object v3, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->j:Landroid/view/View;

    aput-object v3, v4, v2

    :goto_2
    if-ge v6, v1, :cond_4

    add-int/lit8 v2, v6, 0x1

    .line 1107
    div-int/lit8 v3, v2, 0x2

    mul-int/lit16 v3, v3, 0x258

    .line 1108
    aget-object v5, v4, v6

    add-int/lit16 v3, v3, 0xed8

    const/16 v7, 0x7d0

    invoke-static {v5, v7, v3}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->c(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1110
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 1113
    :cond_2
    aget-object v2, v4, v2

    invoke-static {v2, v7, v3}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1115
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 1119
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$1;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$1;-><init>(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)V

    const-wide/16 v3, 0x16a8

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_5
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->b:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a()V

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->f()V

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    .line 101
    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->eu:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Ljava/lang/String;[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)V

    .line 102
    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->ev:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Ljava/lang/String;[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)V

    .line 103
    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ez:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Ljava/lang/String;[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)V

    const/4 v0, 0x3

    new-array v1, v0, [J

    .line 104
    fill-array-data v1, :array_0

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->ew:[Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([J[Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    new-array v1, v0, [J

    .line 105
    fill-array-data v1, :array_1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->ex:[Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([J[Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    new-array v0, v0, [I

    .line 106
    fill-array-data v0, :array_2

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ey:[Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([I[Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;)V

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->b:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a()V

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->f()V

    return-void

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public getFirstTimeExperienceCallLogRootContainer()Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->b:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->getFirstTimeExperienceContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
