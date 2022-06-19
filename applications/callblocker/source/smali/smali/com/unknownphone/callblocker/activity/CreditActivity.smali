.class public Lcom/unknownphone/callblocker/activity/CreditActivity;
.super Landroid/app/Activity;
.source "CreditActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/CreditActivity;->setContentView(I)V

    .line 16
    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/CreditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/unknownphone/callblocker/activity/CreditActivity$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/CreditActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/CreditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f090080

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/CreditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/unknownphone/callblocker/activity/CreditActivity$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/CreditActivity$2;-><init>(Lcom/unknownphone/callblocker/activity/CreditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/CreditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/unknownphone/callblocker/activity/CreditActivity$3;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/CreditActivity$3;-><init>(Lcom/unknownphone/callblocker/activity/CreditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
