.class public Lcom/allinone/callerid/dialog/n;
.super Landroid/app/Dialog;
.source "ShareDialog.java"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/widget/GridView;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/ShareAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/dialog/n;->d:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/allinone/callerid/dialog/n;->g:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/allinone/callerid/dialog/n;->h:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/allinone/callerid/dialog/n;->i:Ljava/lang/String;

    .line 6
    iput p6, p0, Lcom/allinone/callerid/dialog/n;->j:I

    .line 7
    iput-object p7, p0, Lcom/allinone/callerid/dialog/n;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/dialog/n;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/dialog/n;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/allinone/callerid/dialog/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/dialog/n;->j:I

    return p0
.end method

.method static synthetic c(Lcom/allinone/callerid/dialog/n;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/dialog/n;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/allinone/callerid/dialog/n;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/dialog/n;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/allinone/callerid/dialog/n;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/dialog/n;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/allinone/callerid/dialog/n;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/dialog/n;->i:Ljava/lang/String;

    return-object p0
.end method

.method private g()V
    .locals 12

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/dialog/n;->f:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/dialog/n;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/dialog/n;->d:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/allinone/callerid/dialog/n;->h(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 5
    new-instance v3, Lcom/allinone/callerid/bean/ShareAppInfo;

    invoke-direct {v3}, Lcom/allinone/callerid/bean/ShareAppInfo;-><init>()V

    .line 6
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.allinone.callerid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/bean/ShareAppInfo;->setAppPkgName(Ljava/lang/String;)V

    .line 8
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/bean/ShareAppInfo;->setAppLauncherClassName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 10
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v3, v4}, Lcom/allinone/callerid/bean/ShareAppInfo;->setAppName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/bean/ShareAppInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 13
    sget-boolean v4, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v4, :cond_2

    const-string v4, "tony"

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "com.facebook.orca"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "com.facebook.katana"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_2
    const-string v5, "com.twitter.android"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "com.android.mms"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_4
    const-string v5, "com.google.android.apps.messaging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "com.whatsapp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    :cond_3
    :goto_1
    if-eqz v4, :cond_9

    if-eq v4, v10, :cond_8

    if-eq v4, v9, :cond_7

    if-eq v4, v8, :cond_6

    if-eq v4, v7, :cond_5

    if-eq v4, v6, :cond_4

    .line 16
    iget-object v2, p0, Lcom/allinone/callerid/dialog/n;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/allinone/callerid/dialog/n;->f:Ljava/util/List;

    invoke-interface {v2, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 18
    :cond_5
    iget-object v2, p0, Lcom/allinone/callerid/dialog/n;->f:Ljava/util/List;

    invoke-interface {v2, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 19
    :cond_6
    iget-object v2, p0, Lcom/allinone/callerid/dialog/n;->f:Ljava/util/List;

    invoke-interface {v2, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 20
    :cond_7
    iget-object v2, p0, Lcom/allinone/callerid/dialog/n;->f:Ljava/util/List;

    invoke-interface {v2, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 21
    :cond_8
    iget-object v2, p0, Lcom/allinone/callerid/dialog/n;->f:Ljava/util/List;

    invoke-interface {v2, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 22
    :cond_9
    iget-object v2, p0, Lcom/allinone/callerid/dialog/n;->f:Ljava/util/List;

    invoke-interface {v2, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 23
    :cond_a
    :goto_2
    new-instance v0, Lcom/allinone/callerid/b/u;

    iget-object v1, p0, Lcom/allinone/callerid/dialog/n;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/allinone/callerid/dialog/n;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/allinone/callerid/b/u;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 24
    iget-object v1, p0, Lcom/allinone/callerid/dialog/n;->e:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c4004a1 -> :sswitch_5
        -0x553d8071 -> :sswitch_4
        -0x29760a19 -> :sswitch_3
        0xa20b87 -> :sswitch_2
        0x2a9664f1 -> :sswitch_1
        0x36211dfc -> :sswitch_0
    .end sparse-switch
.end method

.method private h(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget v1, p0, Lcom/allinone/callerid/dialog/n;->j:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "audio/*"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "image/*"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v1, "text/plain"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0137

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f0903d4

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/allinone/callerid/dialog/n;->e:Landroid/widget/GridView;

    const p1, 0x7f09075b

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/dialog/n;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/dialog/n;->e:Landroid/widget/GridView;

    new-instance v0, Lcom/allinone/callerid/dialog/n$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/dialog/n$a;-><init>(Lcom/allinone/callerid/dialog/n;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/dialog/n;->g()V

    return-void
.end method
