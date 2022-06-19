.class Lcom/unknownphone/callblocker/c/a$9;
.super Ljava/lang/Object;
.source "GlobalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/c/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/unknownphone/callblocker/c/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/c/a;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/unknownphone/callblocker/c/a$9;->b:Lcom/unknownphone/callblocker/c/a;

    iput-object p2, p0, Lcom/unknownphone/callblocker/c/a$9;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 386
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$9;->b:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$9;->b:Lcom/unknownphone/callblocker/c/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a$9;->b:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v1}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a;Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 388
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$9;->b:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->i(Lcom/unknownphone/callblocker/c/a;)V

    .line 389
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$9;->b:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_all_calls"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    const-string/jumbo v0, "\"Block all incoming calls\" was activated by user."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$9;->b:Lcom/unknownphone/callblocker/c/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/c/a;->F()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 392
    const v0, 0x7f0901c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/unknownphone/callblocker/c/a$9;->b:Lcom/unknownphone/callblocker/c/a;

    const v3, 0x7f10025b

    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/c/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    new-instance v0, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    .line 395
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->show()V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$9;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 398
    return-void
.end method
