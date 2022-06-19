.class public final Lcom/explorestack/iab/utils/j;
.super Lcom/explorestack/iab/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/iab/utils/i<",
        "Lcom/explorestack/iab/utils/CircularProgressBar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/i;-><init>(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;
    .locals 0

    .line 26
    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defLoadingStyle:Lcom/explorestack/iab/utils/h;

    return-object p1
.end method

.method final synthetic b(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Landroid/view/View;
    .locals 0

    .line 1019
    new-instance p2, Lcom/explorestack/iab/utils/CircularProgressBar;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/utils/CircularProgressBar;-><init>(Landroid/content/Context;)V

    return-object p2
.end method
