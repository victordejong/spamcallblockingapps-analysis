.class public Lcom/callapp/contacts/activity/settings/SpeedDialActivity;
.super Lcom/callapp/contacts/activity/base/BaseListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;,
        Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;,
        Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseListActivity;-><init>()V

    const v0, 0x7f0601cc

    .line 52
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->b:I

    const v0, 0x7f0600f3

    .line 53
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->c:I

    const v0, 0x7f0601ec

    .line 54
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a:Ljava/util/List;

    return-object p1
.end method

.method public static a([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x62

    if-nez p0, :cond_0

    .line 1133
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x63

    if-gt v0, v1, :cond_3

    .line 1136
    new-instance v1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    const-string v2, ""

    invoke-direct {v1, v0, v2, v2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v4, v3, 0x2

    .line 89
    aget-object v5, p0, v4

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    :try_start_0
    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 92
    new-instance v5, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    add-int/lit8 v6, v3, 0x1

    aget-object v6, p0, v6

    aget-object v3, p0, v3

    invoke-direct {v5, v4, v6, v3}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object p0, v1

    :cond_3
    return-object p0
.end method

.method public static a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x126

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x62

    if-ge v1, v2, :cond_1

    .line 110
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    mul-int/lit8 v3, v1, 0x3

    .line 111
    invoke-static {v2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v4, v3, 0x1

    .line 112
    invoke-static {v2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->b(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x2

    .line 113
    invoke-static {v2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->c(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->aE:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->c:I

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->d:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->b:I

    return p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 348
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseListActivity;->finish()V

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, v0, v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0045

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120680

    .line 65
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    .line 67
    new-instance p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;-><init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)V

    .line 79
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 121
    new-instance v0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$2;-><init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)V

    .line 127
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 129
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseListActivity;->onPause()V

    return-void
.end method
