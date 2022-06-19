.class Lcom/unknownphone/callblocker/activity/ReportActivity$1;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/ReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/ReportActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/ReportActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->a(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->b(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800ac

    invoke-static {v1, v2}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v3, v3, v1, v3}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->b(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    const v1, 0x7f1001d2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 122
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->a(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->c(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lcom/unknownphone/callblocker/activity/ReportActivity$1$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/ReportActivity$1$1;-><init>(Lcom/unknownphone/callblocker/activity/ReportActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->b(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800f5

    invoke-static {v1, v2}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v3, v3, v1, v3}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->b(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    const v1, 0x7f1001d1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->a(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->c(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lcom/unknownphone/callblocker/activity/ReportActivity$1$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/ReportActivity$1$2;-><init>(Lcom/unknownphone/callblocker/activity/ReportActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
