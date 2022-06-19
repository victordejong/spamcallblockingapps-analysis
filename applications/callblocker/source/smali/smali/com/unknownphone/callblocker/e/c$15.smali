.class Lcom/unknownphone/callblocker/e/c$15;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/e/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$15;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$15;->a:Lcom/unknownphone/callblocker/e/c;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/unknownphone/callblocker/e/c$15;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v2}, Lcom/unknownphone/callblocker/e/c;->r()Landroidx/fragment/app/d;

    move-result-object v2

    const-class v3, Lcom/unknownphone/callblocker/activity/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/e/c;->a(Landroid/content/Intent;)V

    .line 220
    return-void
.end method
