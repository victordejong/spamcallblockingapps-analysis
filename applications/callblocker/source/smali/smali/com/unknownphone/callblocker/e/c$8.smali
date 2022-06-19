.class Lcom/unknownphone/callblocker/e/c$8;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/e/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/a;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;Lcom/google/android/material/bottomsheet/a;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$8;->c:Lcom/unknownphone/callblocker/e/c;

    iput-object p2, p0, Lcom/unknownphone/callblocker/e/c$8;->a:Lcom/google/android/material/bottomsheet/a;

    iput-object p3, p0, Lcom/unknownphone/callblocker/e/c$8;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$8;->a:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->dismiss()V

    .line 492
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$8;->c:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->i(Lcom/unknownphone/callblocker/e/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "review_condition_sync"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 493
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$8;->c:Lcom/unknownphone/callblocker/e/c;

    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c$8;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/e/c;->b(Lcom/unknownphone/callblocker/e/c;Ljava/util/List;)V

    .line 494
    return-void
.end method
