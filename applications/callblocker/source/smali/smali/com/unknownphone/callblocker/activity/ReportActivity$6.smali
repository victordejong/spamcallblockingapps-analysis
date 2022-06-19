.class Lcom/unknownphone/callblocker/activity/ReportActivity$6;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Lcom/unknownphone/callblocker/d/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/ReportActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/unknownphone/callblocker/activity/ReportActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/ReportActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$6;->b:Lcom/unknownphone/callblocker/activity/ReportActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 259
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$6;->b:Lcom/unknownphone/callblocker/activity/ReportActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/activity/ReportActivity;->a(Lcom/unknownphone/callblocker/activity/ReportActivity;Z)Z

    .line 261
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$6;->b:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->h(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const v1, 0x7f1001cf

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$6;->b:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->i(Lcom/unknownphone/callblocker/activity/ReportActivity;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 270
    :goto_0
    return-void

    .line 263
    :cond_0
    const/16 v0, 0xca

    if-ne p1, v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$6;->b:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->h(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const v1, 0x7f1001d0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 265
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$6;->b:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->i(Lcom/unknownphone/callblocker/activity/ReportActivity;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$6;->a:Landroid/view/View;

    const v1, 0x7f10002d

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    .line 268
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$6;->b:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->i(Lcom/unknownphone/callblocker/activity/ReportActivity;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    goto :goto_0
.end method
