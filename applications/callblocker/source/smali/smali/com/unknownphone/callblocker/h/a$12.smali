.class Lcom/unknownphone/callblocker/h/a$12;
.super Ljava/lang/Object;
.source "ProtectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/h/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/h/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/h/a;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->b(Lcom/unknownphone/callblocker/h/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "subscription_ends_at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->c(Lcom/unknownphone/callblocker/h/a;)V

    .line 223
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->b(Lcom/unknownphone/callblocker/h/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "credits"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    .line 208
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->d(Lcom/unknownphone/callblocker/h/a;)Lcom/google/android/gms/ads/reward/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->b(Lcom/unknownphone/callblocker/h/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "credits"

    iget-object v2, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    .line 210
    invoke-static {v2}, Lcom/unknownphone/callblocker/h/a;->b(Lcom/unknownphone/callblocker/h/a;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "credits"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    .line 209
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/h/a;->a(Lcom/unknownphone/callblocker/h/a;Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->d(Lcom/unknownphone/callblocker/h/a;)Lcom/google/android/gms/ads/reward/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/c;->b()V

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/h/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    const v1, 0x7f10025c

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/h/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    goto :goto_0

    .line 220
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/h/a;->r()Landroidx/fragment/app/d;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    iget-object v1, p0, Lcom/unknownphone/callblocker/h/a$12;->a:Lcom/unknownphone/callblocker/h/a;

    const/16 v2, 0xae

    invoke-virtual {v1, v0, v2}, Lcom/unknownphone/callblocker/h/a;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
