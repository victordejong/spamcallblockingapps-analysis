.class public Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;
.super Lcom/callapp/contacts/activity/base/BaseActivity;
.source "SourceFile"


# static fields
.field public static a:J = 0xfa0L

.field public static b:J = 0x7d0L


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lcom/bumptech/glide/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private C:Landroid/graphics/Bitmap;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field private H:Z

.field private c:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private f:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->C:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->D:Z

    .line 130
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->F:Z

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->G:Z

    .line 132
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->H:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->C:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(Lcom/android/billingclient/api/k;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/android/billingclient/api/k;Landroid/widget/TextView;Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/android/billingclient/api/k;Landroid/widget/TextView;Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;)Landroid/text/SpannableStringBuilder;
    .locals 22

    move-object/from16 v0, p2

    .line 607
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 608
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/k;->f()Ljava/lang/String;

    move-result-object v2

    .line 609
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v4

    .line 612
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/k;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    const-string v6, "#"

    .line 613
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x0

    if-ltz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 615
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/k;->c()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v10, v12

    .line 616
    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getPriceSize()F

    move-result v12

    invoke-virtual {v0, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v12, "yearly"

    .line 618
    invoke-static {v4, v12}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-wide/high16 v13, 0x4028000000000000L    # 12.0

    div-double v13, v10, v13

    move-wide/from16 v20, v10

    move-wide v10, v13

    move-wide/from16 v13, v20

    goto :goto_1

    :cond_1
    const-wide/16 v13, 0x0

    .line 623
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v9, :cond_2

    goto :goto_2

    .line 624
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    :goto_2
    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, " "

    if-eqz v9, :cond_5

    const-string v9, "#@"

    const-string v15, "@#"

    .line 627
    invoke-static {v2, v9, v15}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-wide/from16 v16, v13

    int-to-double v13, v2

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    sub-double v13, v18, v13

    div-double v13, v13, v18

    .line 629
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double/2addr v10, v13

    invoke-virtual {v3, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 630
    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->isStrike()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 631
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 633
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 634
    new-instance v11, Landroid/text/style/RelativeSizeSpan;

    const v13, 0x3f8ccccd    # 1.1f

    invoke-direct {v11, v13}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v14, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 635
    new-instance v11, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v11}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v15, 0x21

    invoke-virtual {v10, v11, v14, v13, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getPriceBeforeColor()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 637
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getPriceBeforeColor()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v11, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v10, v11, v14, v9, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 639
    :cond_3
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 640
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 643
    :cond_4
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v10, p0

    invoke-direct {v10, v2, v0, v9}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(ILandroid/widget/TextView;Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3

    :cond_5
    move-object/from16 v10, p0

    move-wide/from16 v16, v13

    .line 646
    :goto_3
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 647
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 648
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v9, 0x3f8ccccd    # 1.1f

    invoke-direct {v2, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v11, v9, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 649
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    invoke-direct {v2, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v2, v11, v9, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 650
    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getPriceColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 651
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getPriceColor()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v2, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x21

    invoke-virtual {v0, v2, v11, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 653
    :cond_6
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 658
    :cond_7
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 659
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 660
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f333333    # 0.7f

    invoke-direct {v2, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v9, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getPriceColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 662
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getPriceColor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v0, v2, v9, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 664
    :cond_8
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 667
    :cond_9
    invoke-static {v4, v12}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 668
    new-instance v0, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, v16

    invoke-virtual {v3, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 669
    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getPriceColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 670
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getPriceColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 671
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_a
    return-object v1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Lcom/bumptech/glide/e/c;)Lcom/bumptech/glide/e/c;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->B:Lcom/bumptech/glide/e/c;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;
    .locals 1

    const-string v0, "default"

    .line 736
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f12027a

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 738
    :goto_0
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$6;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$6;-><init>()V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/marketplace/planPage/JSONPlanPageItem;

    if-eqz p0, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/JSONPlanPageItem;->getJsonPlanPageConfig()Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p1
.end method

.method static synthetic a(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 8534
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8535
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/i;

    const-string v1, "subs"

    .line 8536
    invoke-static {v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "inapp"

    invoke-static {v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8537
    :cond_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 488
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->f:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method private a(ILandroid/widget/TextView;Landroid/widget/ImageView$ScaleType;)V
    .locals 7

    .line 679
    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 680
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 681
    move-object v6, p2

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 682
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getBadge()Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Ljava/lang/String;ILandroid/widget/ImageView$ScaleType;Landroid/widget/RelativeLayout;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/e/b/d;)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 11

    const v0, 0x7f0a094c

    .line 163
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05d0

    .line 164
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0838

    .line 165
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0104

    .line 166
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0a99

    .line 168
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0a04a3

    .line 169
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0a082b

    .line 171
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->k:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0832

    .line 172
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->l:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0836

    .line 173
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->m:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0829

    .line 175
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->n:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0830

    .line 176
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->o:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a082a

    .line 177
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->p:Landroid/widget/LinearLayout;

    const v6, 0x7f0a0831

    .line 178
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->q:Landroid/widget/LinearLayout;

    const v6, 0x7f0a082d

    .line 180
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->r:Landroid/widget/TextView;

    const v6, 0x7f0a0834

    .line 181
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->s:Landroid/widget/TextView;

    const v6, 0x7f0a0837

    .line 182
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->t:Landroid/widget/TextView;

    const v6, 0x7f0a082c

    .line 184
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->u:Landroid/widget/TextView;

    const v6, 0x7f0a0833

    .line 185
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->v:Landroid/widget/TextView;

    const v6, 0x7f0a0828

    .line 187
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->w:Landroid/widget/TextView;

    const v6, 0x7f0a082f

    .line 188
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->x:Landroid/widget/TextView;

    const v6, 0x7f0a0835

    .line 189
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->y:Landroid/widget/TextView;

    const v6, 0x7f0a0827

    .line 191
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->z:Landroid/widget/TextView;

    const v6, 0x7f0a082e

    .line 192
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->A:Landroid/widget/TextView;

    const v6, 0x7f0a07a2

    .line 193
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    .line 196
    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    if-eqz v6, :cond_11

    .line 197
    invoke-virtual {v6}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getShowTopBackground()Z

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    .line 198
    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getTopBackground()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    new-instance v6, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v10, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v10}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getTopBackground()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v0, v10, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 2376
    iput-boolean v8, v6, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 200
    invoke-virtual {v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getMiddleBackground()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getMiddleBackground()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 3376
    iput-boolean v8, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 206
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getBottomBackground()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getBottomBackground()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$7YAb3Wq4OeRYi1fgAA5A50khb5A;

    invoke-direct {v10, v2}, Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$7YAb3Wq4OeRYi1fgAA5A50khb5A;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-direct {v0, p0, v6, v2, v10}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;)V

    .line 4376
    iput-boolean v8, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 212
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getBottomBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getBottomBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 217
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getBottomBackgroundAlpha()I

    move-result v0

    int-to-float v0, v0

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_5

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 218
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getBottomBackgroundAlpha()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getContainerBackground()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getContainerBackground()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 5376
    iput-boolean v8, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 224
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    goto :goto_2

    .line 225
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getContainerBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 226
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getContainerBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2

    .line 229
    :cond_7
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    :goto_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getViewType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "VERTICAL"

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getViewType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 236
    :cond_8
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    :goto_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getSkuInformation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    .line 241
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuLocation()I

    move-result v4

    if-ne v4, v8, :cond_b

    .line 243
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getViewType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getViewType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 244
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getShape()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->k:Landroid/widget/RelativeLayout;

    invoke-static {v4, v5, v6}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_5

    .line 248
    :cond_a
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 249
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getShape()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->n:Landroid/widget/RelativeLayout;

    invoke-static {v4, v5, v6}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Ljava/lang/String;Landroid/view/View;)V

    .line 254
    :cond_b
    :goto_5
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuLocation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 255
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getViewType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getViewType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 256
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getShape()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->l:Landroid/widget/RelativeLayout;

    invoke-static {v4, v5, v6}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_6

    .line 261
    :cond_c
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getShape()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->o:Landroid/widget/RelativeLayout;

    invoke-static {v4, v5, v6}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Ljava/lang/String;Landroid/view/View;)V

    .line 267
    :cond_d
    :goto_6
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuLocation()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 268
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getViewType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getViewType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 269
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 270
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getShape()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->m:Landroid/widget/RelativeLayout;

    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_4

    .line 6302
    :cond_e
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6303
    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->isMarkWithStar()Z

    move-result v3

    .line 6304
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    const v3, 0x7f0804a2

    .line 6306
    invoke-virtual {v2, v3, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 6307
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_7

    :cond_10
    if-eqz v1, :cond_11

    .line 7284
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Landroid/widget/ScrollView;Landroid/widget/ImageView;)V

    sget-wide v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Lcom/android/billingclient/api/k;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->setButtonText(Lcom/android/billingclient/api/k;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->setPremiumWhenPurchaseSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Landroid/widget/TextView;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 8076
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->showDisclaimer:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 591
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getDisclaimer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getDisclaimerColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getDisclaimerColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getDisclaimerSize()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const-string v0, "ROUNDED"

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f08059a

    goto :goto_0

    :cond_0
    const p1, 0x7f080599

    .line 315
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getFillColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getFillColor()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "#FFFFFF"

    .line 316
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getOutlineColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getOutlineColor()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, "#1DA03F"

    .line 317
    :goto_2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x4

    invoke-static {p2, p1, v0, p0, v1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 318
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x17

    if-lt p0, p1, :cond_3

    .line 319
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const p1, 0x7f080099

    invoke-static {p0, p1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->D:Z

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p1
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->c:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->G:Z

    return v0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->F:Z

    return v0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Ljava/util/HashMap;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a()V

    return-void
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)V
    .locals 9

    .line 9475
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->F:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->G:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->H:Z

    if-eqz v0, :cond_0

    .line 9476
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f1207eb

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1207ec

    .line 9477
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1204ea

    .line 9478
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$3;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$3;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)V

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 9476
    invoke-virtual {v0, p0, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->H:Z

    return v0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->f:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method public static synthetic lambda$7YAb3Wq4OeRYi1fgAA5A50khb5A(Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/e/b/d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/e/b/d;)V

    return-void
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->f:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object v0
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/bumptech/glide/e/c;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->B:Lcom/bumptech/glide/e/c;

    return-object p0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->C:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private setButtonText(Lcom/android/billingclient/api/k;)V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 580
    :sswitch_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/android/billingclient/api/k;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->y:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Landroid/widget/TextView;)V

    goto :goto_0

    .line 566
    :sswitch_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/android/billingclient/api/k;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->x:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Landroid/widget/TextView;)V

    return-void

    .line 573
    :sswitch_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 574
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/android/billingclient/api/k;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->A:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Landroid/widget/TextView;)V

    return-void

    .line 554
    :sswitch_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 555
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/android/billingclient/api/k;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->w:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Landroid/widget/TextView;)V

    return-void

    .line 560
    :sswitch_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/android/billingclient/api/k;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->z:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;Landroid/widget/TextView;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a082c -> :sswitch_4
        0x7f0a082d -> :sswitch_3
        0x7f0a0833 -> :sswitch_2
        0x7f0a0834 -> :sswitch_1
        0x7f0a0837 -> :sswitch_0
    .end sparse-switch
.end method

.method private setPremiumWhenPurchaseSuccess(Ljava/lang/String;)V
    .locals 1

    .line 545
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 546
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 547
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->D:Z

    .line 159
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d003e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 136
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->showActionBar(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "PLAN_PAGE_SOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->E:Ljava/lang/String;

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->E:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PremiumConfig"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    if-nez p1, :cond_1

    const-string p1, "default"

    .line 143
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g:Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    .line 146
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->E:Ljava/lang/String;

    const-string v1, "Plan page"

    const-string v2, "Plan page entrance"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0a077a

    .line 147
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 149
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1326
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    .line 151
    new-instance p1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->c:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const v0, 0x7f120537

    .line 152
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->c:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->c:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    const/4 v0, 0x0

    .line 719
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->c:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 720
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->B:Lcom/bumptech/glide/e/c;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 728
    invoke-interface {v0, v1}, Lcom/bumptech/glide/e/c;->cancel(Z)Z

    .line 729
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->B:Lcom/bumptech/glide/e/c;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequests;->a(Lcom/bumptech/glide/e/a/j;)V

    .line 731
    :cond_2
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->onDestroy()V

    return-void
.end method
