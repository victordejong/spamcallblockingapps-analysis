.class public Lcom/allinone/callerid/dialog/d;
.super Landroid/app/Dialog;
.source "DialogLiwuhe.java"


# instance fields
.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/dialog/d;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/dialog/d;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/dialog/d;->d:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00dd

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f0900e5

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0901f1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/dialog/d;->d:Landroid/widget/FrameLayout;

    const v0, 0x7f0905df

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    new-instance v0, Lcom/allinone/callerid/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/dialog/d$a;-><init>(Lcom/allinone/callerid/dialog/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/gg/f;->a()Lcom/allinone/callerid/util/gg/f;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/gg/f;->b:Lcom/google/android/gms/ads/nativead/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/gg/f;->a()Lcom/allinone/callerid/util/gg/f;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/util/gg/f;->b:Lcom/google/android/gms/ads/nativead/a;

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/gg/d;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/dialog/d;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/dialog/d;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/dialog/d;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/d$a;

    iget-object v1, p0, Lcom/allinone/callerid/dialog/d;->e:Landroid/content/Context;

    const-string v2, "ca-app-pub-5825926894918682/4484122459"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    new-instance v1, Lcom/allinone/callerid/dialog/d$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/dialog/d$b;-><init>(Lcom/allinone/callerid/dialog/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    .line 10
    new-instance v1, Lcom/google/android/gms/ads/t$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/t$a;-><init>()V

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/t$a;->b(Z)Lcom/google/android/gms/ads/t$a;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/ads/t$a;->a()Lcom/google/android/gms/ads/t;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/google/android/gms/ads/formats/c$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/formats/c$a;-><init>()V

    .line 14
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/formats/c$a;->h(Lcom/google/android/gms/ads/t;)Lcom/google/android/gms/ads/formats/c$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/c$a;->a()Lcom/google/android/gms/ads/formats/c;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->f(Lcom/google/android/gms/ads/formats/c;)Lcom/google/android/gms/ads/d$a;

    .line 17
    new-instance v1, Lcom/allinone/callerid/dialog/d$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/dialog/d$c;-><init>(Lcom/allinone/callerid/dialog/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    const-class v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/e$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/e$a;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d;->b(Lcom/google/android/gms/ads/e;)V

    :goto_0
    return-void
.end method
