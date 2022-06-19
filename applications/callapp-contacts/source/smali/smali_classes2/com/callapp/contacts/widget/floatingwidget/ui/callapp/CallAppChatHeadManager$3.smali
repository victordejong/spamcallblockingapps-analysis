.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

.field private c:I

.field private d:Z

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;Landroid/widget/ImageView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->c:I

    const p1, 0x7f080333

    .line 121
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->e:I

    const p1, 0x7f080334

    .line 122
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->f:I

    const p1, 0x7f080335

    .line 123
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->g:I

    .line 124
    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->h:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 128
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_0

    .line 129
    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->c:I

    const v3, 0x7f080333

    if-eq v2, v3, :cond_0

    .line 130
    iput v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->c:I

    .line 131
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->d:Z

    goto :goto_0

    :cond_0
    const v2, 0x3f28f5c3    # 0.66f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_1

    .line 132
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->c:I

    const v3, 0x7f080334

    if-eq v0, v3, :cond_1

    .line 133
    iput v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->c:I

    .line 134
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->d:Z

    goto :goto_0

    :cond_1
    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    .line 135
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->c:I

    const v0, 0x7f080335

    if-eq p1, v0, :cond_2

    .line 136
    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->c:I

    .line 137
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->d:Z

    .line 140
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->d:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->d:Z

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->h:Landroid/widget/ImageView;

    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$3;->c:I

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    :cond_3
    return-void
.end method
