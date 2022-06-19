.class Lcom/unknownphone/callblocker/activity/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/MainActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$8;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    .line 730
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$8;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->k(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "review_condition_deep_link"

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$8;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    .line 731
    invoke-static {v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->k(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "review_condition_deep_link"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    .line 730
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 731
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 732
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$8;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->l(Lcom/unknownphone/callblocker/activity/MainActivity;)V

    .line 733
    return-void
.end method
