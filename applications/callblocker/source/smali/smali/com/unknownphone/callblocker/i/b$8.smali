.class Lcom/unknownphone/callblocker/i/b$8;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/i/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/i/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/i/b;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/unknownphone/callblocker/i/b$8;->a:Lcom/unknownphone/callblocker/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$8;->a:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->e(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const v0, 0x7f1001fe

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b$8;->a:Lcom/unknownphone/callblocker/i/b;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/i/b;->r()Landroidx/fragment/app/d;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b$8;->a:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v2}, Lcom/unknownphone/callblocker/i/b;->e(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b$8;->a:Lcom/unknownphone/callblocker/i/b;

    const/16 v2, 0x105

    invoke-virtual {v1, v0, v2}, Lcom/unknownphone/callblocker/i/b;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
