.class public final Lcom/google/android/gms/internal/ads/azv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/uw;

.field private final b:Lcom/google/android/gms/internal/ads/chh;

.field private final c:Lcom/google/android/gms/internal/ads/azd;

.field private final d:Lcom/google/android/gms/internal/ads/ayx;

.field private final e:Lcom/google/android/gms/internal/ads/bae;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/bl;

.field private final i:Lcom/google/android/gms/internal/ads/ays;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/azd;Lcom/google/android/gms/internal/ads/ayx;Lcom/google/android/gms/internal/ads/bae;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ays;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azv;->a:Lcom/google/android/gms/internal/ads/uw;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azv;->b:Lcom/google/android/gms/internal/ads/chh;

    .line 4
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/chh;->i:Lcom/google/android/gms/internal/ads/bl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->h:Lcom/google/android/gms/internal/ads/bl;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/azv;->c:Lcom/google/android/gms/internal/ads/azd;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/azv;->e:Lcom/google/android/gms/internal/ads/bae;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/azv;->f:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/azv;->g:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/azv;->i:Lcom/google/android/gms/internal/ads/ays;

    .line 11
    return-void
.end method

.method private static a(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xb

    const/16 v1, 0xa

    const/16 v0, 0x9

    .line 14
    packed-switch p1, :pswitch_data_0

    .line 24
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    :goto_0
    return-void

    .line 15
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 18
    :pswitch_2
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 21
    :pswitch_3
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 22
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/azv;Lcom/google/android/gms/internal/ads/bam;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 181
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/azv;->a(Lcom/google/android/gms/internal/ads/bam;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/bam;[Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/bam;->f()Ljava/util/Map;

    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    array-length v3, p1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, p1, v1

    .line 41
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 42
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/bam;)V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/azu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/azu;-><init>(Lcom/google/android/gms/internal/ads/azv;Lcom/google/android/gms/internal/ads/bam;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)Z
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->m()Landroid/view/View;

    move-result-object v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bA:Lcom/google/android/gms/internal/ads/ect;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 56
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_1
.end method

.method final synthetic b(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 58
    if-eqz p1, :cond_2

    move v0, v1

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ayx;->m()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 60
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azv;->a:Lcom/google/android/gms/internal/ads/uw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azv;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/uw;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    :cond_1
    :goto_1
    return-void

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_3
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azv;->a:Lcom/google/android/gms/internal/ads/uw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azv;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    const-string/jumbo v3, "2"

    .line 68
    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/uw;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azv;->a:Lcom/google/android/gms/internal/ads/uw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azv;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    const-string/jumbo v3, "1"

    .line 71
    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/uw;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/bam;)V
    .locals 2

    .prologue
    .line 27
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->e:Lcom/google/android/gms/internal/ads/bae;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bam;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->c:Lcom/google/android/gms/internal/ads/azd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bam;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azv;->e:Lcom/google/android/gms/internal/ads/bae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bae;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbew; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string/jumbo v1, "web view can not be obtained"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/bam;)V
    .locals 11

    .prologue
    const/4 v10, -0x2

    const/4 v3, 0x1

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 73
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->c:Lcom/google/android/gms/internal/ads/azd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azd;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->c:Lcom/google/android/gms/internal/ads/azd;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azd;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v3

    .line 78
    :goto_0
    if-eqz v0, :cond_17

    .line 80
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "1098"

    aput-object v0, v5, v4

    const-string/jumbo v0, "3011"

    aput-object v0, v5, v3

    move v2, v4

    .line 81
    :goto_1
    const/4 v0, 0x2

    if-ge v2, v0, :cond_7

    aget-object v0, v5, v2

    .line 82
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/bam;->a_(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_6

    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_6

    .line 84
    check-cast v0, Landroid/view/ViewGroup;

    :goto_2
    move-object v6, v0

    .line 88
    :goto_3
    if-eqz v6, :cond_8

    move v2, v3

    .line 90
    :goto_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bam;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 91
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->d()Landroid/view/View;

    move-result-object v0

    .line 94
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/azv;->h:Lcom/google/android/gms/internal/ads/bl;

    if-nez v5, :cond_9

    move-object v5, v0

    .line 111
    :goto_5
    if-eqz v5, :cond_3

    .line 112
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    :cond_1
    if-eqz v2, :cond_e

    .line 115
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 116
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    :cond_2
    :goto_6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bam;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v5, v3}, Lcom/google/android/gms/internal/ads/bam;->a(Ljava/lang/String;Landroid/view/View;Z)V

    .line 126
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/azt;->a:[Ljava/lang/String;

    array-length v3, v2

    :goto_7
    if-ge v4, v3, :cond_10

    aget-object v0, v2, v4

    .line 127
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/bam;->a_(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 128
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_f

    .line 129
    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 133
    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->g:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/azx;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/azx;-><init>(Lcom/google/android/gms/internal/ads/azv;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    if-eqz v2, :cond_4

    .line 135
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/azv;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    .line 136
    if-eqz v0, :cond_11

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->v()Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->v()Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/azw;

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/azw;-><init>(Lcom/google/android/gms/internal/ads/azv;Lcom/google/android/gms/internal/ads/bam;Landroid/view/ViewGroup;)V

    .line 140
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/bj;)V

    .line 180
    :cond_4
    :goto_9
    return-void

    :cond_5
    move v0, v4

    .line 77
    goto/16 :goto_0

    .line 85
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    .line 86
    goto/16 :goto_2

    :cond_8
    move v2, v4

    .line 88
    goto/16 :goto_4

    .line 96
    :cond_9
    if-nez v2, :cond_a

    .line 97
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/azv;->h:Lcom/google/android/gms/internal/ads/bl;

    iget v5, v5, Lcom/google/android/gms/internal/ads/bl;->e:I

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/ads/azv;->a(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 98
    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    move-object v5, v0

    .line 99
    goto :goto_5

    .line 100
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->c()Lcom/google/android/gms/internal/ads/bn;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/bg;

    if-nez v0, :cond_c

    move-object v5, v1

    .line 101
    goto/16 :goto_5

    .line 102
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->c()Lcom/google/android/gms/internal/ads/bn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bg;

    .line 103
    if-nez v2, :cond_d

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bg;->h()I

    move-result v5

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/ads/azv;->a(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 105
    :cond_d
    new-instance v5, Lcom/google/android/gms/internal/ads/bf;

    invoke-direct {v5, v7, v0, v8}, Lcom/google/android/gms/internal/ads/bf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bg;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 106
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->by:Lcom/google/android/gms/internal/ads/ect;

    .line 107
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 117
    :cond_e
    new-instance v0, Lcom/google/android/gms/ads/b/a;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bam;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/b/a;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/b/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/b/a;->addView(Landroid/view/View;)V

    .line 120
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bam;->b()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 130
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_10
    move-object v2, v1

    .line 131
    goto/16 :goto_8

    .line 141
    :cond_11
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 142
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bam;->c()Landroid/view/View;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v3, v0

    .line 144
    :goto_a
    if-eqz v3, :cond_4

    .line 146
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bx:Lcom/google/android/gms/internal/ads/ect;

    .line 147
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->i:Lcom/google/android/gms/internal/ads/ays;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ays;->a()Lcom/google/android/gms/internal/ads/bt;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bt;->b()Lcom/google/android/gms/dynamic/a;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_b
    if-eqz v0, :cond_4

    .line 164
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 165
    if-eqz v0, :cond_4

    .line 166
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bam;->i()Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 170
    :cond_12
    if-eqz v1, :cond_13

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cZ:Lcom/google/android/gms/internal/ads/ect;

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    .line 174
    :cond_13
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 178
    :goto_c
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_14
    move-object v3, v1

    .line 143
    goto :goto_a

    .line 154
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not get main image drawable"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 156
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azv;->d:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->g()Lcom/google/android/gms/internal/ads/bu;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_4

    .line 158
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bu;->a()Lcom/google/android/gms/dynamic/a;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_b

    .line 161
    :catch_1
    move-exception v0

    const-string/jumbo v0, "Could not get drawable from image"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 176
    :cond_16
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    .line 177
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_c

    :cond_17
    move-object v6, v1

    goto/16 :goto_3
.end method
