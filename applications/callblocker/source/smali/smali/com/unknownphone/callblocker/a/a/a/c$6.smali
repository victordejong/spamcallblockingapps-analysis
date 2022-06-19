.class Lcom/unknownphone/callblocker/a/a/a/c$6;
.super Ljava/lang/Object;
.source "ContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/a/c;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/c$6;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/a/c$6;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    const v3, 0x7f10009e

    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/a/a/a/c;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c$6;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/a/a/a/c;->a(Landroid/content/Intent;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c$6;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    const v1, 0x7f10009d

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a/a/c;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    goto :goto_0
.end method
