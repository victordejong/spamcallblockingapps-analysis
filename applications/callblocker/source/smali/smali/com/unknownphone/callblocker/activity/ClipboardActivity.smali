.class public Lcom/unknownphone/callblocker/activity/ClipboardActivity;
.super Landroidx/appcompat/app/c;
.source "ClipboardActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/ClipboardActivity;->setContentView(I)V

    .line 27
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/ClipboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 28
    const v1, 0x7f09017b

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/activity/ClipboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    .line 29
    const v2, 0x7f090057

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/ClipboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 30
    const v3, 0x7f0901c4

    invoke-virtual {p0, v3}, Lcom/unknownphone/callblocker/activity/ClipboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/ClipboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "number"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    const v5, 0x7f1000a7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {p0, v5, v6}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v3, Lcom/unknownphone/callblocker/activity/ClipboardActivity$1;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/activity/ClipboardActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/ClipboardActivity;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v0, Lcom/unknownphone/callblocker/activity/ClipboardActivity$2;

    invoke-direct {v0, p0, v4}, Lcom/unknownphone/callblocker/activity/ClipboardActivity$2;-><init>(Lcom/unknownphone/callblocker/activity/ClipboardActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v0, Lcom/unknownphone/callblocker/activity/ClipboardActivity$3;

    invoke-direct {v0, p0, v4}, Lcom/unknownphone/callblocker/activity/ClipboardActivity$3;-><init>(Lcom/unknownphone/callblocker/activity/ClipboardActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {v2, v7}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 67
    :cond_0
    return-void
.end method
