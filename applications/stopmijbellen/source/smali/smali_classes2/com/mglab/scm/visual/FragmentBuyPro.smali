.class public Lcom/mglab/scm/visual/FragmentBuyPro;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# instance fields
.field public a:Lbutterknife/Unbinder;

.field public b:I

.field public buttonContinuePurchase:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public c:Z

.field public cardView1_1:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public cardView2_1:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public cardView3_1:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public cardView4_1:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public d:I

.field public e:Ljava/util/Date;

.field public progressLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView1_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView1_2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView1_3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView1_4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView1_5:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView2_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView2_2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView2_3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView2_4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView2_5:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView3_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView3_2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView3_3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView3_4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView3_5:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView4_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView4_2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView4_3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textView4_4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/mglab/scm/visual/FragmentBuyPro;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->c:Z

    const/16 v0, 0x1e

    .line 4
    iput v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n",
            "DefaultLocale"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->progressLL:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06005b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 5
    iget-object v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView1_1:Landroidx/cardview/widget/CardView;

    iget v6, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    invoke-virtual {v5, v6}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 6
    iget-object v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView2_1:Landroidx/cardview/widget/CardView;

    iget v6, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    invoke-virtual {v5, v6}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 7
    iget-object v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView3_1:Landroidx/cardview/widget/CardView;

    iget v6, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    invoke-virtual {v5, v6}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 8
    iget-object v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView4_1:Landroidx/cardview/widget/CardView;

    iget v6, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    const/4 v10, 0x4

    if-ne v6, v10, :cond_3

    move v3, v1

    :cond_3
    invoke-virtual {v5, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 9
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_1:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v7, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_2:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v7, :cond_5

    move v5, v1

    goto :goto_4

    :cond_5
    move v5, v4

    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_3:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v7, :cond_6

    move v5, v1

    goto :goto_5

    :cond_6
    move v5, v4

    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_4:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v7, :cond_7

    move v5, v1

    goto :goto_6

    :cond_7
    move v5, v4

    :goto_6
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_5:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v7, :cond_8

    move v5, v1

    goto :goto_7

    :cond_8
    move v5, v4

    :goto_7
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_1:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v8, :cond_9

    move v5, v1

    goto :goto_8

    :cond_9
    move v5, v4

    :goto_8
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_2:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v8, :cond_a

    move v5, v1

    goto :goto_9

    :cond_a
    move v5, v4

    :goto_9
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_3:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v8, :cond_b

    move v5, v1

    goto :goto_a

    :cond_b
    move v5, v4

    :goto_a
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_4:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v8, :cond_c

    move v5, v1

    goto :goto_b

    :cond_c
    move v5, v4

    :goto_b
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_5:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v8, :cond_d

    move v5, v1

    goto :goto_c

    :cond_d
    move v5, v4

    :goto_c
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_1:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v9, :cond_e

    move v5, v1

    goto :goto_d

    :cond_e
    move v5, v4

    :goto_d
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_2:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v9, :cond_f

    move v5, v1

    goto :goto_e

    :cond_f
    move v5, v4

    :goto_e
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_3:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v9, :cond_10

    move v5, v1

    goto :goto_f

    :cond_10
    move v5, v4

    :goto_f
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_4:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v9, :cond_11

    move v5, v1

    goto :goto_10

    :cond_11
    move v5, v4

    :goto_10
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_5:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v9, :cond_12

    move v5, v1

    goto :goto_11

    :cond_12
    move v5, v4

    :goto_11
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_1:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v10, :cond_13

    move v5, v1

    goto :goto_12

    :cond_13
    move v5, v4

    :goto_12
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_2:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v10, :cond_14

    move v5, v1

    goto :goto_13

    :cond_14
    move v5, v4

    :goto_13
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_3:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v10, :cond_15

    move v5, v1

    goto :goto_14

    :cond_15
    move v5, v4

    :goto_14
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_4:Landroid/widget/TextView;

    iget v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-ne v5, v10, :cond_16

    goto :goto_15

    :cond_16
    move v1, v4

    :goto_15
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-wide/16 v3, 0x1

    .line 28
    sget-object v1, Lf8/a;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "1month"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const v6, 0x7f11005d

    const-string v9, "/"

    const-wide/16 v10, 0x0

    const-string v12, "PriceAmountMicros"

    const-string v13, "?"

    const-string v14, "Price"

    if-eqz v1, :cond_17

    .line 29
    sget-object v1, Lf8/a;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 30
    invoke-virtual {v1, v12, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 31
    iget-object v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_5:Landroid/widget/TextView;

    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_3:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_17
    sget-object v1, Lf8/a;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "6months"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const-string v8, "[\\d.,]"

    const/high16 v16, 0x42c80000    # 100.0f

    const-string v15, "%.2f"

    const/16 v17, 0x0

    if-eqz v1, :cond_18

    .line 34
    sget-object v1, Lf8/a;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 35
    iget-object v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_5:Landroid/widget/TextView;

    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v1, v12, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    long-to-float v5, v5

    const v6, 0x4ab71b00    # 6000000.0f

    div-float v6, v5, v6

    .line 37
    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    iget-object v10, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_3:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v17

    invoke-static {v15, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f11005d

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v5, v1

    long-to-float v1, v3

    div-float/2addr v5, v1

    mul-float v5, v5, v16

    sub-float v1, v16, v5

    .line 39
    iget-object v2, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_4:Landroid/widget/TextView;

    new-array v5, v7, [Ljava/lang/Object;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v17

    invoke-static {v15, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v17

    const v1, 0x7f110061

    invoke-virtual {v0, v1, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_18
    move-object/from16 v18, v2

    .line 40
    :goto_16
    sget-object v1, Lf8/a;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "12months"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 41
    sget-object v1, Lf8/a;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 42
    iget-object v2, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_5:Landroid/widget/TextView;

    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v5, 0x0

    .line 43
    invoke-virtual {v1, v12, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    long-to-float v2, v10

    const v5, 0x4b371b00    # 1.2E7f

    div-float v5, v2, v5

    .line 44
    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v18

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    iget-object v10, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_3:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v6, v17

    invoke-static {v15, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f11005d

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v2, v1

    long-to-float v1, v3

    div-float/2addr v2, v1

    mul-float v2, v2, v16

    sub-float v1, v16, v2

    .line 46
    iget-object v2, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_4:Landroid/widget/TextView;

    new-array v3, v7, [Ljava/lang/Object;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v17

    const v1, 0x7f110061

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_19
    sget-object v1, Lf8/a;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "lifetime"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 48
    sget-object v1, Lf8/a;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 49
    iget-boolean v2, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->c:Z

    if-eqz v2, :cond_1a

    const-wide/16 v2, 0x0

    .line 50
    invoke-virtual {v1, v12, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v2, v3

    mul-float v2, v2, v16

    .line 51
    iget v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->d:I

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 52
    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v17

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    iget-object v3, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_2:Landroid/widget/TextView;

    const v4, 0x7f110060

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v17

    invoke-virtual {v0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 56
    iget-object v2, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_3:Landroid/widget/TextView;

    const v3, 0x7f11005f

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_4:Landroid/widget/TextView;

    const v2, 0x7f11005a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->d:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->e:Ljava/util/Date;

    invoke-static {v4, v5}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 58
    :cond_1a
    iget-object v2, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_3:Landroid/widget/TextView;

    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_17
    iget-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_2:Landroid/widget/TextView;

    iget-boolean v2, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->c:Z

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_18

    :cond_1b
    const/16 v2, 0x8

    :goto_18
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_4:Landroid/widget/TextView;

    iget-boolean v2, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->c:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_19

    :cond_1c
    const/16 v2, 0x8

    :goto_19
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1d
    return-void
.end method

.method public onButtonContinuePurchaseClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "onButtonBuyClick incorrect purchase type"

    invoke-static {v0, v1, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/a0;

    const-string v2, "lifetime"

    invoke-direct {v1, v2}, Lk8/a0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/a0;

    const-string v2, "12months"

    invoke-direct {v1, v2}, Lk8/a0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/a0;

    const-string v2, "6months"

    invoke-direct {v1, v2}, Lk8/a0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/a0;

    const-string v2, "1month"

    invoke-direct {v1, v2}, Lk8/a0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onClick1()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBuyPro;->a()V

    return-void
.end method

.method public onClick2()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBuyPro;->a()V

    return-void
.end method

.method public onClick3()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBuyPro;->a()V

    return-void
.end method

.method public onClick4()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBuyPro;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0058

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->a:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f09003f

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09003e

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    const p2, 0x7f110063

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    check-cast p1, Lf/j;

    invoke-virtual {p1}, Lf/j;->s()Lf/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Lf/a;->p(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "disexpdate"

    const-string v0, "0"

    .line 6
    invoke-static {p1, p2, v0}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "yyyy-MM-dd"

    .line 7
    invoke-static {p1, p2}, Lf8/g;->P(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->e:Ljava/util/Date;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->e:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->c:Z

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 9
    :goto_1
    iput v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->b:I

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "dispercent"

    invoke-static {p1, v0, p2}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 12
    iput p1, p0, Lcom/mglab/scm/visual/FragmentBuyPro;->d:I

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBuyPro;->a()V

    return-void
.end method
