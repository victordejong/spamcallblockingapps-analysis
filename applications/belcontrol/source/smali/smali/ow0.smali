.class public Low0;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Low0$b;
    }
.end annotation


# instance fields
.field public a:Low0$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Low0$b;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Low0;->a:Low0$b;

    invoke-virtual {p0, p3, p4}, Low0;->a(Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View$OnClickListener;Low0;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View$OnClickListener;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00a5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f1200f9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const v2, 0x7f0a0233

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0231

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a022d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a022f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a022c

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a022b

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a0232

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a022e

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0a0230

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v11, Lfw0;

    move-object/from16 v12, p2

    invoke-direct {v11, v12, v0}, Lfw0;-><init>(Landroid/view/View$OnClickListener;Low0;)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lew0;

    invoke-direct {v11, v0}, Lew0;-><init>(Low0;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    sget-object v7, Low0$a;->a:[I

    iget-object v11, v0, Low0;->a:Low0$b;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v7, v7, v11

    const v11, 0x7f11025d

    const v12, 0x7f110256

    const v13, 0x7f110269

    const v15, 0x7f08008c

    const v14, 0x7f08008b

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v7

    invoke-virtual {v7}, Lq71$a;->d()Lq71$a;

    move-result-object v7

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    sget-object v2, Lq71$a;->g:Lq71$a;

    if-ne v7, v2, :cond_0

    const v14, 0x7f11026a

    goto :goto_0

    :cond_0
    const v14, 0x7f11026c

    :goto_0
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(I)V

    if-ne v7, v2, :cond_1

    const v2, 0x7f11025e

    goto :goto_1

    :cond_1
    const v2, 0x7f11025f

    :goto_1
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f110257

    goto :goto_2

    :pswitch_1
    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v7, 0x7f11026c

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    const v14, 0x7f110262

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f110259

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    :pswitch_2
    const v1, 0x7f110259

    const v7, 0x7f11026c

    const v14, 0x7f110262

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f110556

    goto/16 :goto_4

    :pswitch_3
    const v1, 0x7f110268

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f110255

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f11025c

    goto :goto_3

    :pswitch_4
    const v1, 0x7f11026b

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f110258

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f08008d

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f110261

    goto :goto_3

    :pswitch_5
    const v1, 0x7f08008d

    const v4, 0x7f110268

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f110260

    goto :goto_3

    :pswitch_6
    const v1, 0x7f110270

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f110266

    goto :goto_3

    :pswitch_7
    const v1, 0x7f110270

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f110267

    goto :goto_3

    :pswitch_8
    const v1, 0x7f11026f

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f110265

    :goto_3
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :pswitch_9
    const v1, 0x7f11026e

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f11025b

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f110264

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f1105d8

    goto :goto_4

    :pswitch_a
    const v1, 0x7f1105d8

    const v4, 0x7f11026d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f11025a

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v2, 0x7f110263

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Low0;->c(Landroid/view/View;)V

    return-void
.end method
