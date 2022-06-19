.class public final Lcom/explorestack/iab/utils/f;
.super Lcom/explorestack/iab/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/iab/utils/i<",
        "Lcom/explorestack/iab/vast/view/IabTextView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/i;-><init>(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;
    .locals 0

    .line 30
    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defCtaStyle:Lcom/explorestack/iab/utils/h;

    return-object p1
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/h;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/explorestack/iab/vast/view/IabTextView;

    .line 1037
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/iab/utils/i;->a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/h;)V

    .line 1353
    iget-object p1, p3, Lcom/explorestack/iab/utils/h;->j:Ljava/lang/String;

    .line 1038
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2353
    iget-object p1, p3, Lcom/explorestack/iab/utils/h;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Learn more"

    .line 1038
    :goto_0
    invoke-virtual {p2, p1}, Lcom/explorestack/iab/vast/view/IabTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final synthetic b(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Landroid/view/View;
    .locals 0

    .line 3023
    new-instance p2, Lcom/explorestack/iab/vast/view/IabTextView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/vast/view/IabTextView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method
