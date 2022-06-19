.class Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->changeWidgetState(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

.field final synthetic val$backgroundColor:I

.field final synthetic val$closeBtnResId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$detail:Landroid/text/Spanned;

.field final synthetic val$logoResId:I

.field final synthetic val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$numberTextCountry:Ljava/lang/String;

.field final synthetic val$textColor:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;ILandroid/text/Spanned;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iput-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iput-object p3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$numberTextCountry:Ljava/lang/String;

    iput-object p4, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$number:Ljava/lang/String;

    iput p6, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$backgroundColor:I

    iput p7, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$logoResId:I

    iput p8, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$closeBtnResId:I

    iput-object p9, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$title:Ljava/lang/String;

    iput p10, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$textColor:I

    iput-object p11, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$detail:Landroid/text/Spanned;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 430
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1500(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1600(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1700(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1800(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1900(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    const-string v3, " ("

    const-string v4, ""

    if-eqz v0, :cond_1

    .line 441
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$10;->$SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupResult$DisplayType:[I

    iget-object v5, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getDisplayType()Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    move-object v0, v4

    move-object v3, v0

    goto/16 :goto_3

    .line 462
    :pswitch_0
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v5, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$number:Ljava/lang/String;

    invoke-static {v0, v5, v6, v3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 459
    :pswitch_1
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    .line 460
    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$numberTextCountry:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$numberTextCountry:Ljava/lang/String;

    goto :goto_0

    .line 454
    :pswitch_2
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    .line 455
    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    iget-object v3, v3, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    .line 456
    iget-object v5, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$numberTextCountry:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v4, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$numberTextCountry:Ljava/lang/String;

    goto :goto_1

    .line 450
    :pswitch_3
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    .line 451
    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$numberTextCountry:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$numberTextCountry:Ljava/lang/String;

    :goto_0
    move-object v7, v4

    move-object v4, v0

    move-object v0, v3

    move-object v3, v7

    goto :goto_3

    .line 446
    :pswitch_4
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    .line 447
    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    iget-object v3, v3, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    goto :goto_3

    .line 443
    :pswitch_5
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$lookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    goto :goto_2

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v5, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$number:Ljava/lang/String;

    invoke-static {v0, v5, v6, v3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    move-object v3, v4

    move-object v4, v0

    move-object v0, v3

    .line 468
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "<var>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 469
    iget-object v5, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v5}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2200(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_4

    .line 471
    :cond_3
    iget-object v5, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v5}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2200(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 473
    :goto_4
    iget-object v5, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v5}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2200(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v4}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 476
    iget-object v4, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v4}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2300(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2300(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 479
    :cond_4
    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2300(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 482
    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 485
    :cond_5
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    :goto_6
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1800(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$backgroundColor:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 488
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2500(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/ImageView;

    move-result-object v0

    iget v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$logoResId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 489
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/ImageView;

    move-result-object v0

    iget v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$closeBtnResId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 490
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 491
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2600(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2700(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 494
    :cond_6
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2600(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2600(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2600(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2700(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    :goto_7
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2800(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2800(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$detail:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1800(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 502
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$2900(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
