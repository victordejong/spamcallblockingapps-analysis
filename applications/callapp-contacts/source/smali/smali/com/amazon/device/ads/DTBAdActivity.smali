.class public Lcom/amazon/device/ads/DTBAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Lcom/amazon/device/ads/DTBAdView;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 0

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdActivity;->b:Lcom/amazon/device/ads/DTBAdView;

    .line 3792
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 124
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->g()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    .line 29
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/amazon/device/ads/DTBAdActivity;->a:Landroid/widget/RelativeLayout;

    .line 33
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdActivity;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/DTBAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ad_state"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/device/ads/DTBAdActivity;->c:Ljava/lang/String;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/DTBAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cntrl_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/amazon/device/ads/DTBAdActivity;->d:I

    .line 37
    iget-object v1, v0, Lcom/amazon/device/ads/DTBAdActivity;->c:Ljava/lang/String;

    const-string v2, "expanded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x7

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    .line 1073
    new-instance v1, Lcom/amazon/device/ads/DTBAdView;

    new-instance v7, Lcom/amazon/device/ads/DTBAdActivity$1;

    invoke-direct {v7, v0}, Lcom/amazon/device/ads/DTBAdActivity$1;-><init>(Lcom/amazon/device/ads/DTBAdActivity;)V

    iget v8, v0, Lcom/amazon/device/ads/DTBAdActivity;->d:I

    invoke-direct {v1, v0, v7, v8}, Lcom/amazon/device/ads/DTBAdView;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;I)V

    iput-object v1, v0, Lcom/amazon/device/ads/DTBAdActivity;->b:Lcom/amazon/device/ads/DTBAdView;

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/DTBAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v7, "url"

    .line 1085
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "two_part_expand"

    .line 1086
    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1087
    iget-object v8, v0, Lcom/amazon/device/ads/DTBAdActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v9, v0, Lcom/amazon/device/ads/DTBAdActivity;->b:Lcom/amazon/device/ads/DTBAdView;

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 1088
    iget-object v11, v0, Lcom/amazon/device/ads/DTBAdActivity;->b:Lcom/amazon/device/ads/DTBAdView;

    .line 1631
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<script>"

    .line 1632
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    invoke-virtual {v11}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 1752
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1753
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 1754
    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1755
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->g()Ljava/lang/String;

    move-result-object v12

    .line 1756
    invoke-static {v12}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v12, "unknown"

    .line 1759
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object v13

    invoke-virtual {v13}, Lcom/amazon/device/ads/DtbSharedPreferences;->h()Ljava/lang/Boolean;

    move-result-object v13

    if-nez v13, :cond_1

    .line 1762
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1764
    :cond_1
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-array v15, v5, [Ljava/lang/Object;

    const-string v16, "3.0"

    aput-object v16, v15, v3

    .line 1767
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->a()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v6

    const-string v16, "8.4.3"

    aput-object v16, v15, v4

    const/16 v16, 0x3

    aput-object v10, v15, v16

    const/4 v10, 0x4

    aput-object v12, v15, v10

    const/4 v10, 0x5

    aput-object v13, v15, v10

    aput-object v14, v15, v2

    const-string v10, "window.MRAID_ENV={version:\'%s\',sdk:\'%s\',sdkVersion:\'%s\',appId:\'%s\',ifa:\'%s\',limitAdTracking:%b,coppa:%b,impFired:true};"

    invoke-static {v10, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1634
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "</script>"

    .line 1635
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "aps-mraid"

    .line 1636
    invoke-virtual {v11, v12, v8}, Lcom/amazon/device/ads/DTBAdView;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1637
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "window.location=\""

    .line 1638
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\";"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const-string v12, "https://c.amazon-adsystem.com/"

    const-string v14, "text/html"

    const-string v15, "UTF-8"

    invoke-virtual/range {v11 .. v16}, Lcom/amazon/device/ads/DTBAdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v7, v0, Lcom/amazon/device/ads/DTBAdActivity;->b:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v7, v6}, Lcom/amazon/device/ads/DTBAdView;->b(Z)V

    .line 1090
    iget-object v7, v0, Lcom/amazon/device/ads/DTBAdActivity;->b:Lcom/amazon/device/ads/DTBAdView;

    .line 1792
    iget-object v7, v7, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 1090
    check-cast v7, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;

    .line 2679
    iput-boolean v1, v7, Lcom/amazon/device/ads/DTBAdMRAIDController;->h:Z

    .line 1092
    invoke-virtual {v7}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->h()V

    .line 3045
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/DTBAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v7, "orientation"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3047
    check-cast v1, Ljava/util/Map;

    const-string v7, "allowOrientationChange"

    .line 3048
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "forceOrientation"

    .line 3049
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v8, "portrait"

    .line 3052
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3053
    invoke-virtual {v0, v6}, Lcom/amazon/device/ads/DTBAdActivity;->setRequestedOrientation(I)V

    return-void

    :cond_3
    const-string v6, "landscape"

    .line 3054
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3055
    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/DTBAdActivity;->setRequestedOrientation(I)V

    return-void

    :cond_4
    if-nez v7, :cond_6

    .line 3059
    invoke-static {}, Lcom/amazon/device/ads/DisplayUtils;->a()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 3061
    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/DTBAdActivity;->setRequestedOrientation(I)V

    return-void

    .line 3064
    :cond_5
    invoke-virtual {v0, v5}, Lcom/amazon/device/ads/DTBAdActivity;->setRequestedOrientation(I)V

    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3115
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdActivity;->c:Ljava/lang/String;

    const-string v1, "expanded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
