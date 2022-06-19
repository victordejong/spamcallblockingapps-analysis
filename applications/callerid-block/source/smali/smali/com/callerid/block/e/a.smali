.class public Lcom/callerid/block/e/a;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/e/a$a;
    }
.end annotation


# instance fields
.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/graphics/Typeface;

.field private d:Lcom/google/android/gms/ads/nativead/a;

.field public e:Lcom/callerid/block/e/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/ads/nativead/a;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/callerid/block/e/a;->b:Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/e/a;->c:Landroid/graphics/Typeface;

    iput-object p3, p0, Lcom/callerid/block/e/a;->d:Lcom/google/android/gms/ads/nativead/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/callerid/block/e/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/e/a;->e:Lcom/callerid/block/e/a$a;

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/callerid/block/e/a;->e:Lcom/callerid/block/e/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/callerid/block/e/a$a;->a()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "wjjj"

    const-string v0, "zoule"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0c0077

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f0900bb

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/LImageButton;

    const v0, 0x7f090146

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/callerid/block/e/a;->d:Lcom/google/android/gms/ads/nativead/a;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c003d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAdView;

    new-instance v2, Lcom/callerid/block/util/v0/c;

    invoke-direct {v2}, Lcom/callerid/block/util/v0/c;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/e/a;->d:Lcom/google/android/gms/ads/nativead/a;

    invoke-virtual {v2, v3, v1}, Lcom/callerid/block/util/v0/c;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const v0, 0x7f090385

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/e/a;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090384

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/e/a;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/e/a;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
