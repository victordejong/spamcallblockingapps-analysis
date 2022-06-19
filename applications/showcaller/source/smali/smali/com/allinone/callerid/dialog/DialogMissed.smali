.class public Lcom/allinone/callerid/dialog/DialogMissed;
.super Lcom/allinone/callerid/main/BaseThemeActivity;
.source "DialogMissed.java"


# instance fields
.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseThemeActivity;-><init>()V

    const-string v0, "DialogMissed"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/dialog/DialogMissed;->u:Ljava/lang/String;

    return-void
.end method

.method private W()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/gg/a;->a()Lcom/allinone/callerid/util/gg/a;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/gg/a;->b:Lcom/google/android/gms/ads/nativead/a;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->I1(J)V

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/gg/a;->a()Lcom/allinone/callerid/util/gg/a;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/util/gg/a;->b:Lcom/google/android/gms/ads/nativead/a;

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/gg/d;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/dialog/DialogMissed;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/dialog/DialogMissed;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/dialog/DialogMissed;->v:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/gg/a;->a()Lcom/allinone/callerid/util/gg/a;

    move-result-object v0

    iput-object v2, v0, Lcom/allinone/callerid/util/gg/a;->b:Lcom/google/android/gms/ads/nativead/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseThemeActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c008b

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0905df

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0900e5

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0901f1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/dialog/DialogMissed;->v:Landroid/widget/FrameLayout;

    .line 6
    new-instance v0, Lcom/allinone/callerid/dialog/DialogMissed$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/dialog/DialogMissed$a;-><init>(Lcom/allinone/callerid/dialog/DialogMissed;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/dialog/DialogMissed;->W()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/dialog/DialogMissed;->W()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseThemeActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseThemeActivity;->onResume()V

    return-void
.end method
