.class public Lcom/unknownphone/callblocker/activity/AboutActivity;
.super Landroidx/appcompat/app/c;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/AboutActivity;->setContentView(I)V

    .line 19
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 20
    new-instance v1, Lcom/unknownphone/callblocker/activity/AboutActivity$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/AboutActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
