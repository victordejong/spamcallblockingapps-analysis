.class public Lcom/explorestack/iab/mraid/MraidActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/MraidActivity$MraidType;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/explorestack/iab/mraid/MraidInterstitial;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Integer;

.field private c:Lcom/explorestack/iab/mraid/MraidInterstitial;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/explorestack/iab/mraid/MraidActivity;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->d:Z

    return-void
.end method

.method private static a(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 29
    sget-object v0, Lcom/explorestack/iab/mraid/MraidActivity;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidInterstitial;Lcom/explorestack/iab/mraid/MraidActivity$MraidType;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "Mraid interstitial object not provided for display"

    .line 47
    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Context not provided for display mraid interstitial"

    .line 51
    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string p0, "Mraid type not provided for display"

    .line 56
    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b()V

    return-void

    .line 61
    :cond_2
    :try_start_0
    sget-object v0, Lcom/explorestack/iab/mraid/MraidActivity;->a:Landroid/util/SparseArray;

    iget v1, p1, Lcom/explorestack/iab/mraid/MraidInterstitial;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iget v0, p1, Lcom/explorestack/iab/mraid/MraidInterstitial;->id:I

    .line 1035
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/explorestack/iab/mraid/MraidActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "InterstitialId"

    .line 1036
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "InterstitialType"

    .line 1037
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 1038
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x800000

    .line 1039
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b()V

    .line 67
    iget p0, p1, Lcom/explorestack/iab/mraid/MraidInterstitial;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->a(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->d:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->dispatchClose()V

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->finish()V

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0, v0}, Lcom/explorestack/iab/mraid/MraidActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0, v0}, Lcom/explorestack/iab/mraid/MraidActivity;->overridePendingTransition(II)V

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "InterstitialId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Mraid display cache id not provided"

    .line 84
    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->finish()V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Ljava/lang/Integer;

    .line 89
    sget-object v1, Lcom/explorestack/iab/mraid/MraidActivity;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/iab/mraid/MraidInterstitial;

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-nez p1, :cond_1

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Mraid interstitial not found in display cache, id="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->finish()V

    .line 94
    invoke-virtual {p0, v0, v0}, Lcom/explorestack/iab/mraid/MraidActivity;->overridePendingTransition(II)V

    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "InterstitialType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    if-nez p1, :cond_2

    const-string p1, "Mraid type not provided"

    .line 100
    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->finish()V

    .line 102
    invoke-virtual {p0, v0, v0}, Lcom/explorestack/iab/mraid/MraidActivity;->overridePendingTransition(II)V

    .line 103
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b()V

    return-void

    .line 109
    :cond_2
    invoke-static {p0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/app/Activity;)V

    .line 111
    sget-object v1, Lcom/explorestack/iab/mraid/MraidActivity$1;->a:[I

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    goto :goto_0

    .line 121
    :cond_3
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->d:Z

    goto :goto_0

    .line 117
    :cond_4
    iput-boolean v1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->d:Z

    goto :goto_0

    .line 113
    :cond_5
    iput-boolean v1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->d:Z

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Lcom/explorestack/iab/mraid/MraidInterstitial;

    const v2, 0x1020002

    .line 1113
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0, v2, v1, v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->a(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->a()V

    .line 148
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    .line 149
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidActivity;->a(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method
