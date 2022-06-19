.class Lcom/unknownphone/callblocker/a/a/a/c$4;
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
    .line 130
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/c$4;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/unknownphone/callblocker/a/a/a/c$4;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-static {v6}, Lcom/unknownphone/callblocker/a/a/a/c;->b(Lcom/unknownphone/callblocker/a/a/a/c;)Lcom/unknownphone/callblocker/a/a/a/a;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/unknownphone/callblocker/a/a/a/c$4;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-static {v6}, Lcom/unknownphone/callblocker/a/a/a/c;->b(Lcom/unknownphone/callblocker/a/a/a/c;)Lcom/unknownphone/callblocker/a/a/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unknownphone/callblocker/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c$4;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/a/a/a/c;->a(Landroid/content/Intent;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c$4;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    const v1, 0x7f1000a5

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a/a/c;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    goto :goto_0
.end method
