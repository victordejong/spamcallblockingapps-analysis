.class public Landroidx/appcompat/app/c;
.super Landroidx/fragment/app/d;
.source "AppCompatActivity.java"

# interfaces
.implements Landroidx/appcompat/app/d;
.implements Landroidx/core/app/m$a;


# instance fields
.field private k:Landroidx/appcompat/app/e;

.field private l:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    .line 78
    return-void
.end method

.method private a(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 575
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 581
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 582
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const/4 v0, 0x1

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 623
    return-void
.end method

.method public a(Landroidx/appcompat/view/b;)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public a(Landroidx/core/app/m;)V
    .locals 0

    .prologue
    .line 371
    invoke-virtual {p1, p0}, Landroidx/core/app/m;->a(Landroid/app/Activity;)Landroidx/core/app/m;

    .line 372
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 471
    invoke-static {p0, p1}, Landroidx/core/app/f;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/e;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->attachBaseContext(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 487
    invoke-static {p0, p1}, Landroidx/core/app/f;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 488
    return-void
.end method

.method public b(Landroidx/appcompat/view/b;)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public b(Landroidx/core/app/m;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    .prologue
    .line 609
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->f()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 610
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/d;->closeOptionsMenu()V

    .line 614
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 552
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 553
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->f()Landroidx/appcompat/app/a;

    move-result-object v1

    .line 554
    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Landroidx/appcompat/app/a;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->f()V

    .line 264
    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Landroidx/appcompat/app/c;->l:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/au;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Landroidx/appcompat/widget/au;

    invoke-super {p0}, Landroidx/fragment/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/au;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/app/c;->l:Landroid/content/res/Resources;

    .line 566
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/c;->l:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/fragment/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/c;->l:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->i()Landroid/content/Intent;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-static {p0}, Landroidx/core/app/m;->a(Landroid/content/Context;)Landroidx/core/app/m;

    move-result-object v0

    .line 421
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->a(Landroidx/core/app/m;)V

    .line 422
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->b(Landroidx/core/app/m;)V

    .line 423
    invoke-virtual {v0}, Landroidx/core/app/m;->a()V

    .line 426
    :try_start_0
    invoke-static {p0}, Landroidx/core/app/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    const/4 v0, 0x1

    .line 439
    :goto_1
    return v0

    .line 427
    :catch_0
    move-exception v0

    .line 430
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->finish()V

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public i()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 454
    invoke-static {p0}, Landroidx/core/app/f;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->f()V

    .line 269
    return-void
.end method

.method public j()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    return-void
.end method

.method public k()Landroidx/appcompat/app/e;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Landroidx/appcompat/app/c;->k:Landroidx/appcompat/app/e;

    if-nez v0, :cond_0

    .line 543
    invoke-static {p0, p0}, Landroidx/appcompat/app/e;->a(Landroid/app/Activity;Landroidx/appcompat/app/d;)Landroidx/appcompat/app/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/c;->k:Landroidx/appcompat/app/e;

    .line 545
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/c;->k:Landroidx/appcompat/app/e;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    iget-object v0, p0, Landroidx/appcompat/app/c;->l:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 187
    iget-object v1, p0, Landroidx/appcompat/app/c;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Landroid/content/res/Configuration;)V

    .line 191
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 493
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->j()V

    .line 494
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroidx/appcompat/app/e;->h()V

    .line 105
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Landroid/os/Bundle;)V

    .line 106
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 234
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->g()V

    .line 235
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/c;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->f()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 224
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->h()Z

    move-result v0

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 517
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 528
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onPanelClosed(ILandroid/view/Menu;)V

    .line 529
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onPostCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->b(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroidx/fragment/app/d;->onPostResume()V

    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->e()V

    .line 197
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 533
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 534
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->c(Landroid/os/Bundle;)V

    .line 535
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroidx/fragment/app/d;->onStart()V

    .line 202
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->c()V

    .line 203
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroidx/fragment/app/d;->onStop()V

    .line 208
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->d()V

    .line 209
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 240
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    .line 600
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->f()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 601
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/d;->openOptionsMenu()V

    .line 605
    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->c(I)V

    .line 162
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/e;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->setTheme(I)V

    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(I)V

    .line 113
    return-void
.end method
