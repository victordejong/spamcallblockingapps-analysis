.class public final Lcom/google/android/gms/internal/ads/ade;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/act;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;

.field private final b:Lcom/google/android/gms/internal/ads/zw;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/act;)V
    .locals 2

    .prologue
    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zw;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->q()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/internal/ads/zw;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/act;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->b:Lcom/google/android/gms/internal/ads/zw;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ade;->N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ade;->addView(Landroid/view/View;)V

    .line 8
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ade;)Lcom/google/android/gms/internal/ads/act;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    return-object v0
.end method

.method static final synthetic b(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/nv;->b(Lcom/google/android/gms/dynamic/a;)V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v0

    return v0
.end method

.method public final B()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->B()Z

    move-result v0

    return v0
.end method

.method public final C()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->b:Lcom/google/android/gms/internal/ads/zw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zw;->c()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->C()V

    .line 16
    return-void
.end method

.method public final D()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->D()Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->E()Z

    move-result v0

    return v0
.end method

.method public final F()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->F()V

    .line 82
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->G()V

    .line 97
    return-void
.end method

.method public final H()Lcom/google/android/gms/internal/ads/bj;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->H()Lcom/google/android/gms/internal/ads/bj;

    move-result-object v0

    return-object v0
.end method

.method public final I()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/ade;->setBackgroundColor(I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/act;->setBackgroundColor(I)V

    .line 19
    return-void
.end method

.method public final J()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 126
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->d()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    sget v2, Lcom/google/android/gms/ads/d/a$a;->s7:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 133
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    invoke-virtual {v1, v5, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 136
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 137
    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 138
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 139
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x31

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ade;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/ade;->bringChildToFront(Landroid/view/View;)V

    .line 142
    return-void

    .line 130
    :cond_0
    const-string/jumbo v0, "Test Ad"

    goto :goto_0
.end method

.method public final K()Lcom/google/android/gms/internal/ads/dva;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->K()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v0

    return-object v0
.end method

.method public final L()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final M()Lcom/google/android/gms/internal/ads/dvk;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->M()Lcom/google/android/gms/internal/ads/dvk;

    move-result-object v0

    return-object v0
.end method

.method public final N()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->N()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/abt;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/abt;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->a()V

    .line 68
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(I)V

    .line 38
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/act;->a(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/ads/internal/overlay/c;)V

    .line 74
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/ads/internal/overlay/d;)V

    .line 165
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 76
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/adn;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/adn;)V

    .line 156
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aei;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/aei;)V

    .line 78
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/bi;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/bi;)V

    .line 146
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/bj;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/bj;)V

    .line 153
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dtt;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/dtt;)V

    .line 151
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dva;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/dva;)V

    .line 148
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/util/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/n",
            "<",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/common/util/n;)V

    .line 34
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/abt;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/abt;)V

    .line 94
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 30
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 48
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Z)V

    .line 161
    return-void
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/act;->a(ZILjava/lang/String;)V

    .line 169
    return-void
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/act;->a(ZILjava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public final a(ZJ)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/act;->a(ZJ)V

    .line 44
    return-void
.end method

.method public final a(ZI)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ade;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    :goto_0
    return v0

    .line 174
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ai:Lcom/google/android/gms/internal/ads/ect;

    .line 175
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 177
    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/act;->a(ZI)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->b()V

    .line 66
    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->b(Lcom/google/android/gms/ads/internal/overlay/c;)V

    .line 90
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/act;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 32
    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/act;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 28
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->b(Z)V

    .line 80
    return-void
.end method

.method public final b(ZI)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/act;->b(ZI)V

    .line 167
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zw;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->b:Lcom/google/android/gms/internal/ads/zw;

    return-object v0
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->c(Z)V

    .line 86
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/adn;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->d(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->d(Z)V

    .line 92
    return-void
.end method

.method public final destroy()V
    .locals 6

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ade;->z()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    sget-object v1, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v2, Lcom/google/android/gms/internal/ads/adg;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/adg;-><init>(Lcom/google/android/gms/dynamic/a;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 101
    sget-object v1, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v2, Lcom/google/android/gms/internal/ads/adf;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/adf;-><init>(Lcom/google/android/gms/internal/ads/ade;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->co:Lcom/google/android/gms/internal/ads/ect;

    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 105
    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/cnz;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->destroy()V

    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/m;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->e()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    return-object v0
.end method

.method public final e(Z)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->e(Z)V

    .line 159
    return-void
.end method

.method public final f()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->f()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final f(Z)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->f(Z)V

    .line 144
    return-void
.end method

.method public final g()Lcom/google/android/gms/ads/internal/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->g()Lcom/google/android/gms/ads/internal/a;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 10
    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->h()V

    .line 163
    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/ads/p;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->i()Lcom/google/android/gms/internal/ads/p;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/yd;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ade;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ade;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/act;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/act;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->loadUrl(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->m()V

    .line 23
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->n()V

    .line 36
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->o()V

    .line 40
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->b:Lcom/google/android/gms/internal/ads/zw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zw;->b()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->onPause()V

    .line 13
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->onResume()V

    .line 125
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->p()V

    .line 42
    return-void
.end method

.method public final q()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->q()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/ads/internal/overlay/c;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/ads/internal/overlay/c;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->s()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    return-object v0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->setRequestedOrientation(I)V

    .line 88
    return-void
.end method

.method public final setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 123
    return-void
.end method

.method public final t()Lcom/google/android/gms/internal/ads/aei;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/internal/ads/aef;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    return-object v0
.end method

.method public final w()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->w()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->x()Z

    move-result v0

    return v0
.end method

.method public final y()Lcom/google/android/gms/internal/ads/ctl;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->y()Lcom/google/android/gms/internal/ads/ctl;

    move-result-object v0

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ade;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->z()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method
