.class Lcom/unknownphone/callblocker/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/MainActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Dialog;

.field final synthetic d:Lcom/unknownphone/callblocker/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->d:Lcom/unknownphone/callblocker/activity/MainActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 704
    new-instance v1, Lcom/unknownphone/callblocker/a/c;

    invoke-direct {v1}, Lcom/unknownphone/callblocker/a/c;-><init>()V

    .line 705
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/a/c;->a(S)V

    .line 706
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->d:Lcom/unknownphone/callblocker/activity/MainActivity;

    const v2, 0x7f10020a

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/a/c;->a(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/a/c;->b(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->d:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->j(Lcom/unknownphone/callblocker/activity/MainActivity;)Lcom/unknownphone/callblocker/d/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/d/b;->a(Lcom/unknownphone/callblocker/a/c;)V

    .line 709
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->d:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->k(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "review_condition_deep_link"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 710
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->d:Lcom/unknownphone/callblocker/activity/MainActivity;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->e(I)V

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->d:Lcom/unknownphone/callblocker/activity/MainActivity;

    const v1, 0x7f090110

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->d:Lcom/unknownphone/callblocker/activity/MainActivity;

    .line 713
    invoke-static {v2}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/b;

    move-result-object v2

    const/4 v3, 0x1

    .line 712
    invoke-virtual {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 717
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$6;->a:Ljava/lang/String;

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    goto :goto_1
.end method
