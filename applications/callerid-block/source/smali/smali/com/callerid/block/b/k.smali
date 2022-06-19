.class public Lcom/callerid/block/b/k;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/k$e;
    }
.end annotation


# instance fields
.field private b:Landroid/graphics/Typeface;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Typeface;

.field private f:Lcom/google/android/gms/ads/d;

.field private g:Landroid/app/Activity;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/FrameLayout;

.field private j:Z

.field private k:Landroid/widget/ListView;

.field private l:Landroid/view/LayoutInflater;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/callerid/block/b/k;->c:Landroid/view/LayoutInflater;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/callerid/block/b/k;->e:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/util/r0;->a()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/callerid/block/b/k;->b:Landroid/graphics/Typeface;

    iput-object p3, p0, Lcom/callerid/block/b/k;->k:Landroid/widget/ListView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/k;->l:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/callerid/block/b/k;->m()V

    invoke-direct {p0}, Lcom/callerid/block/b/k;->l()V

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/b/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/b/k;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/callerid/block/b/k;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/k;->e:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic c(Lcom/callerid/block/b/k;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/k;->l:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic d(Lcom/callerid/block/b/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/b/k;->k()V

    return-void
.end method

.method static synthetic e(Lcom/callerid/block/b/k;Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/b/k;->h(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    return-void
.end method

.method static synthetic f(Lcom/callerid/block/b/k;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/k;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/callerid/block/b/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/b/k;->n()V

    return-void
.end method

.method private h(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/b/k;->h:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/callerid/block/b/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v2, 0x7f090146

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/b/k;->i:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lcom/callerid/block/util/v0/a;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    iget-object p1, p0, Lcom/callerid/block/b/k;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/callerid/block/b/k;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/callerid/block/b/k;->h:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private k()V
    .locals 0

    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    const v1, 0x7f04007e

    const v2, 0x7f080097

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/k;->m:I

    iget-object v0, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    const v1, 0x7f04007f

    const v2, 0x7f080099

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/k;->n:I

    iget-object v0, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    const v1, 0x7f04047f

    const v2, 0x7f06013b

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/k;->o:I

    iget-object v0, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    const v1, 0x7f040111

    const v2, 0x7f060070

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/k;->p:I

    iget-object v0, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    const v1, 0x7f040110

    const v2, 0x7f06006b

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    iget-object v0, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    const v1, 0x7f040525

    const v2, 0x7f0801ab

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/k;->q:I

    iget-object v0, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    const v1, 0x7f040526

    const v2, 0x7f0801ad

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/k;->r:I

    return-void
.end method

.method private m()V
    .locals 1

    new-instance v0, Lcom/callerid/block/b/k$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/b/k$a;-><init>(Lcom/callerid/block/b/k;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    return-void
.end method

.method private n()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/d$a;

    iget-object v1, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    const-string v2, "ca-app-pub-5825926894918682/3603565872"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/callerid/block/b/k$c;

    invoke-direct {v1, p0}, Lcom/callerid/block/b/k$c;-><init>(Lcom/callerid/block/b/k;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    new-instance v1, Lcom/google/android/gms/ads/s$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/s$a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/s$a;->b(Z)Lcom/google/android/gms/ads/s$a;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/s$a;->a()Lcom/google/android/gms/ads/s;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/nativead/b$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/nativead/b$a;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nativead/b$a;->g(Lcom/google/android/gms/ads/s;)Lcom/google/android/gms/ads/nativead/b$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/b$a;->a()Lcom/google/android/gms/ads/nativead/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->g(Lcom/google/android/gms/ads/nativead/b;)Lcom/google/android/gms/ads/d$a;

    new-instance v1, Lcom/callerid/block/b/k$d;

    invoke-direct {v1, p0}, Lcom/callerid/block/b/k$d;-><init>(Lcom/callerid/block/b/k;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/b/k;->f:Lcom/google/android/gms/ads/d;

    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d;->a(Lcom/google/android/gms/ads/e;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "sms_ad"

    iget-object v2, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/callerid/block/b/k;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/callerid/block/b/k$e;

    invoke-direct {p2, p0, v2}, Lcom/callerid/block/b/k$e;-><init>(Lcom/callerid/block/b/k;Landroid/view/View;)V

    iget-object v3, p0, Lcom/callerid/block/b/k;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f0c00c0

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object v2, p0, Lcom/callerid/block/b/k;->h:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/callerid/block/b/k;->n()V

    :cond_1
    move-object v6, v2

    move-object v2, p2

    move-object p2, v6

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/callerid/block/b/k;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f0c004a

    invoke-virtual {p2, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/callerid/block/b/k$e;

    invoke-direct {v2, p0, p2}, Lcom/callerid/block/b/k$e;-><init>(Lcom/callerid/block/b/k;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/b/k$e;

    :goto_0
    if-ne p3, v0, :cond_5

    goto/16 :goto_b

    :cond_5
    :try_start_0
    iget-object p3, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/SMSBean;

    if-eqz v2, :cond_11

    if-eqz p1, :cond_11

    const-string p3, "sms_ad"

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_11

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getName()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p3, :cond_6

    :try_start_1
    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getSearch_name()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getSearch_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getSearch_name()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    iget-object p3, v2, Lcom/callerid/block/b/k$e;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    const-string p3, "0"

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getRead()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_8

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/callerid/block/b/k;->b:Landroid/graphics/Typeface;

    :goto_3
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4

    :cond_8
    iget-object p3, v2, Lcom/callerid/block/b/k$e;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/callerid/block/b/k;->e:Landroid/graphics/Typeface;

    goto :goto_3

    :goto_4
    const-string p3, "1"

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getMsg_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getMsg_count()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object p3, v2, Lcom/callerid/block/b/k$e;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getType_label_show()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getType_label_show()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/b/k;->m:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/b/k;->o:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getType_label_show()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->f:Landroid/widget/ImageView;

    iget v1, p0, Lcom/callerid/block/b/k;->r:I

    :goto_6
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    :cond_a
    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getSearch_name()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getSearch_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/b/k;->n:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/b/k;->p:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1000eb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, v2, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_b
    iget-object p3, v2, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    iget-object p3, v2, Lcom/callerid/block/b/k$e;->f:Landroid/widget/ImageView;

    iget v1, p0, Lcom/callerid/block/b/k;->q:I

    goto :goto_6

    :goto_8
    iget-object p3, v2, Lcom/callerid/block/b/k$e;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getShow_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getMsg_snippet()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->isHas_attachment()Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p3, :cond_c

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v2, Lcom/callerid/block/b/k$e;->d:Landroid/widget/TextView;

    :goto_9
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_c
    iget-object p3, v2, Lcom/callerid/block/b/k$e;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10014b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_d
    if-eqz p3, :cond_e

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v2, Lcom/callerid/block/b/k$e;->d:Landroid/widget/TextView;

    goto :goto_9

    :cond_e
    :goto_a
    iget p3, p0, Lcom/callerid/block/b/k;->q:I

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->isIs_contacts()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getRaw_contact_id()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAvatar()Ljava/lang/String;

    move-result-object p1

    iget-object v2, v2, Lcom/callerid/block/b/k$e;->f:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1, p3, v2}, Lcom/callerid/block/util/p;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_b

    :cond_f
    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getType_label()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getType_label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getReport_count()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getReport_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget p3, p0, Lcom/callerid/block/b/k;->r:I

    iget-object v1, v2, Lcom/callerid/block/b/k$e;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/callerid/block/b/k;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAvatar()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v2, Lcom/callerid/block/b/k$e;->f:Landroid/widget/ImageView;

    invoke-static {v0, p1, p3, v1}, Lcom/callerid/block/util/p;->a(Landroid/app/Activity;Ljava/lang/Object;ILandroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_b
    iget-object p1, p0, Lcom/callerid/block/b/k;->k:Landroid/widget/ListView;

    new-instance p3, Lcom/callerid/block/b/k$b;

    invoke-direct {p3, p0}, Lcom/callerid/block/b/k$b;-><init>(Lcom/callerid/block/b/k;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public i(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean p1, p0, Lcom/callerid/block/b/k;->j:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sms_ad"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/callerid/block/bean/SMSBean;

    invoke-direct {p1}, Lcom/callerid/block/bean/SMSBean;-><init>()V

    invoke-virtual {p1, v1}, Lcom/callerid/block/bean/SMSBean;->setAddress(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v0}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sms_ad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/b/k;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/b/k;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/callerid/block/b/k;->h:Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/b/k;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/callerid/block/b/k;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/b/k;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/callerid/block/b/k;->h:Landroid/view/View;

    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
