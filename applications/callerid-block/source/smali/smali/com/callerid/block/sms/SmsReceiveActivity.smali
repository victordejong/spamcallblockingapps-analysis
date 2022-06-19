.class public Lcom/callerid/block/sms/SmsReceiveActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/callerid/block/customview/LImageButton;

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/widget/FrameLayout;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:J

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/sms/SmsReceiveActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/sms/SmsReceiveActivity;->R()V

    return-void
.end method

.method private R()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private S()V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->z:Landroid/graphics/Typeface;

    const v0, 0x7f090485

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f090482

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f090424

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f09046b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f0903c7

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0903fe

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f090415

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f09021c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/LImageButton;

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->A:Lcom/callerid/block/customview/LImageButton;

    const v0, 0x7f090142

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->B:Landroid/widget/FrameLayout;

    const v0, 0x7f09014d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->C:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->A:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->z:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->z:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->z:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->z:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->z:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->z:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->z:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private T()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->D:Ljava/lang/String;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->E:Ljava/lang/String;

    const-string v1, "type_lable"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->F:Ljava/lang/String;

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->H:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->I:Ljava/lang/String;

    const-string v1, "searchName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->J:Ljava/lang/String;

    const-string v1, "date"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->G:J

    iget-object v2, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->t:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/callerid/block/util/e;->j(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->I:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->u:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->I:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->J:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->u:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->J:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->u:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->D:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->E:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10014b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->F:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->v:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7f090142

    const-string v1, "sms_dialog_ignore"

    if-eq p1, v0, :cond_2

    const v0, 0x7f09014d

    if-eq p1, v0, :cond_1

    const v0, 0x7f09021c

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/callerid/block/sms/SmsReceiveActivity;->R()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "sms_dialog_view"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance p1, Lcom/callerid/block/bean/SMSBean;

    invoke-direct {p1}, Lcom/callerid/block/bean/SMSBean;-><init>()V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/SMSBean;->setAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/SMSBean;->setType_label(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/SMSBean;->setThread_id(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/SMSBean;->setRead(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-class p1, Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0037

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    invoke-direct {p0}, Lcom/callerid/block/sms/SmsReceiveActivity;->S()V

    invoke-direct {p0}, Lcom/callerid/block/sms/SmsReceiveActivity;->T()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/callerid/block/sms/SmsReceiveActivity;->R()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/callerid/block/sms/SmsReceiveActivity$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/sms/SmsReceiveActivity$a;-><init>(Lcom/callerid/block/sms/SmsReceiveActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
