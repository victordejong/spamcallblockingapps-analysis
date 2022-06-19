.class public Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder;
.super Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;
.source "CSAdInfoRowViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder$AdInfoHolderCallbackInterface;
    }
.end annotation


# instance fields
.field public mWhyAdsHereTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder;->initWhyAdsHereText(Landroid/view/View;)V

    return-void
.end method

.method private initWhyAdsHereText(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0802c5

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder;->mWhyAdsHereTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder;->mWhyAdsHereTextView:Landroid/widget/TextView;

    sget-object v0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSAdInfoRowViewHolder$RQKajvMQ8RFzgAhUL0d3bq4oeoc;->INSTANCE:Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSAdInfoRowViewHolder$RQKajvMQ8RFzgAhUL0d3bq4oeoc;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$initWhyAdsHereText$0(Landroid/view/View;)V
    .locals 2

    .line 56
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 57
    sput-boolean p0, Lcom/telguarder/features/advertisements/AdInfoActivity;->adDebugInfoEnabled:Z

    .line 58
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object p0

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/advertisements/AdInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder$AdInfoHolderCallbackInterface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder;->mWhyAdsHereTextView:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder$AdInfoHolderCallbackInterface;->onDataBinding(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public onAttachToWindow()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onAttachToWindow()V

    return-void
.end method

.method public onDetachFromWindow()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onDetachFromWindow()V

    return-void
.end method
