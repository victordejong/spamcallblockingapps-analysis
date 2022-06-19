.class public Lcom/unknownphone/callblocker/activity/HelpActivity;
.super Landroidx/appcompat/app/c;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 33
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/HelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 37
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/HelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 41
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unknownphone/callblocker/activity/CreditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/HelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :sswitch_3
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/HelpActivity;->finish()V

    goto :goto_0

    .line 30
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09004d -> :sswitch_3
        0x7f09009e -> :sswitch_2
        0x7f09010d -> :sswitch_1
        0x7f090149 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/HelpActivity;->setContentView(I)V

    .line 21
    const v0, 0x7f090149

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f09010d

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
