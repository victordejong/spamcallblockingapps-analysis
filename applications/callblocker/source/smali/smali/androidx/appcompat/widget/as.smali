.class Landroidx/appcompat/widget/as;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static j:Landroidx/appcompat/widget/as;

.field private static k:Landroidx/appcompat/widget/as;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/lang/CharSequence;

.field private final c:I

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;

.field private f:I

.field private g:I

.field private h:Landroidx/appcompat/widget/at;

.field private i:Z


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroidx/appcompat/widget/as$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/as$1;-><init>(Landroidx/appcompat/widget/as;)V

    iput-object v0, p0, Landroidx/appcompat/widget/as;->d:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Landroidx/appcompat/widget/as$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/as$2;-><init>(Landroidx/appcompat/widget/as;)V

    iput-object v0, p0, Landroidx/appcompat/widget/as;->e:Ljava/lang/Runnable;

    .line 109
    iput-object p1, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    .line 110
    iput-object p2, p0, Landroidx/appcompat/widget/as;->b:Ljava/lang/CharSequence;

    .line 111
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroidx/core/h/v;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/as;->c:I

    .line 113
    invoke-direct {p0}, Landroidx/appcompat/widget/as;->d()V

    .line 115
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 117
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    sget-object v0, Landroidx/appcompat/widget/as;->j:Landroidx/appcompat/widget/as;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/widget/as;->j:Landroidx/appcompat/widget/as;

    iget-object v0, v0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    if-ne v0, p0, :cond_0

    .line 94
    invoke-static {v1}, Landroidx/appcompat/widget/as;->a(Landroidx/appcompat/widget/as;)V

    .line 96
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Landroidx/appcompat/widget/as;->k:Landroidx/appcompat/widget/as;

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/appcompat/widget/as;->k:Landroidx/appcompat/widget/as;

    iget-object v0, v0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 98
    sget-object v0, Landroidx/appcompat/widget/as;->k:Landroidx/appcompat/widget/as;

    invoke-virtual {v0}, Landroidx/appcompat/widget/as;->a()V

    .line 100
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 102
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/as;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/as;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static a(Landroidx/appcompat/widget/as;)V
    .locals 1

    .prologue
    .line 210
    sget-object v0, Landroidx/appcompat/widget/as;->j:Landroidx/appcompat/widget/as;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Landroidx/appcompat/widget/as;->j:Landroidx/appcompat/widget/as;

    invoke-direct {v0}, Landroidx/appcompat/widget/as;->c()V

    .line 213
    :cond_0
    sput-object p0, Landroidx/appcompat/widget/as;->j:Landroidx/appcompat/widget/as;

    .line 214
    sget-object v0, Landroidx/appcompat/widget/as;->j:Landroidx/appcompat/widget/as;

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Landroidx/appcompat/widget/as;->j:Landroidx/appcompat/widget/as;

    invoke-direct {v0}, Landroidx/appcompat/widget/as;->b()V

    .line 217
    :cond_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 237
    iget v2, p0, Landroidx/appcompat/widget/as;->f:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/as;->c:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Landroidx/appcompat/widget/as;->g:I

    sub-int v2, v1, v2

    .line 238
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/as;->c:I

    if-gt v2, v3, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    .line 241
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/as;->f:I

    .line 242
    iput v1, p0, Landroidx/appcompat/widget/as;->g:I

    .line 243
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/as;->d:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/as;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 250
    iput v0, p0, Landroidx/appcompat/widget/as;->f:I

    .line 251
    iput v0, p0, Landroidx/appcompat/widget/as;->g:I

    .line 252
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    sget-object v0, Landroidx/appcompat/widget/as;->k:Landroidx/appcompat/widget/as;

    if-ne v0, p0, :cond_0

    .line 193
    sput-object v2, Landroidx/appcompat/widget/as;->k:Landroidx/appcompat/widget/as;

    .line 194
    iget-object v0, p0, Landroidx/appcompat/widget/as;->h:Landroidx/appcompat/widget/at;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Landroidx/appcompat/widget/as;->h:Landroidx/appcompat/widget/at;

    invoke-virtual {v0}, Landroidx/appcompat/widget/at;->a()V

    .line 196
    iput-object v2, p0, Landroidx/appcompat/widget/as;->h:Landroidx/appcompat/widget/at;

    .line 197
    invoke-direct {p0}, Landroidx/appcompat/widget/as;->d()V

    .line 198
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 203
    :cond_0
    :goto_0
    sget-object v0, Landroidx/appcompat/widget/as;->j:Landroidx/appcompat/widget/as;

    if-ne v0, p0, :cond_1

    .line 204
    invoke-static {v2}, Landroidx/appcompat/widget/as;->a(Landroidx/appcompat/widget/as;)V

    .line 206
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    return-void

    .line 200
    :cond_2
    const-string/jumbo v0, "TooltipCompatHandler"

    const-string/jumbo v1, "sActiveHandler.mPopup == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method a(Z)V
    .locals 6

    .prologue
    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/appcompat/widget/as;->a(Landroidx/appcompat/widget/as;)V

    .line 167
    sget-object v0, Landroidx/appcompat/widget/as;->k:Landroidx/appcompat/widget/as;

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Landroidx/appcompat/widget/as;->k:Landroidx/appcompat/widget/as;

    invoke-virtual {v0}, Landroidx/appcompat/widget/as;->a()V

    .line 170
    :cond_1
    sput-object p0, Landroidx/appcompat/widget/as;->k:Landroidx/appcompat/widget/as;

    .line 172
    iput-boolean p1, p0, Landroidx/appcompat/widget/as;->i:Z

    .line 173
    new-instance v0, Landroidx/appcompat/widget/at;

    iget-object v1, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/at;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/as;->h:Landroidx/appcompat/widget/at;

    .line 174
    iget-object v0, p0, Landroidx/appcompat/widget/as;->h:Landroidx/appcompat/widget/at;

    iget-object v1, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    iget v2, p0, Landroidx/appcompat/widget/as;->f:I

    iget v3, p0, Landroidx/appcompat/widget/as;->g:I

    iget-boolean v4, p0, Landroidx/appcompat/widget/as;->i:Z

    iget-object v5, p0, Landroidx/appcompat/widget/as;->b:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/at;->a(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 179
    iget-boolean v0, p0, Landroidx/appcompat/widget/as;->i:Z

    if-eqz v0, :cond_2

    .line 180
    const-wide/16 v0, 0x9c4

    .line 187
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    iget-object v3, p0, Landroidx/appcompat/widget/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 188
    iget-object v2, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    iget-object v3, p0, Landroidx/appcompat/widget/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->p(Landroid/view/View;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 183
    const-wide/16 v0, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_1

    .line 185
    :cond_3
    const-wide/16 v0, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_1
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Landroidx/appcompat/widget/as;->h:Landroidx/appcompat/widget/at;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/widget/as;->i:Z

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v2

    .line 132
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 134
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/as;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/as;->h:Landroidx/appcompat/widget/at;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/as;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0}, Landroidx/appcompat/widget/as;->a(Landroidx/appcompat/widget/as;)V

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-direct {p0}, Landroidx/appcompat/widget/as;->d()V

    .line 145
    invoke-virtual {p0}, Landroidx/appcompat/widget/as;->a()V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/as;->f:I

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/as;->g:I

    .line 123
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/as;->a(Z)V

    .line 124
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Landroidx/appcompat/widget/as;->a()V

    .line 160
    return-void
.end method
