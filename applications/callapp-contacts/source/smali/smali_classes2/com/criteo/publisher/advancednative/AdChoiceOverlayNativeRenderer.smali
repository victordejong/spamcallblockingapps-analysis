.class Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# instance fields
.field private final adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

.field private final delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->s()Lcom/criteo/publisher/advancednative/b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/b;)V

    return-void
.end method

.method constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/b;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 57
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

    return-void
.end method


# virtual methods
.method public createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-interface {v1, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1079
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 1081
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1082
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1084
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1086
    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1090
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1093
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, 0x5

    .line 1094
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1095
    iget-object p2, v0, Lcom/criteo/publisher/advancednative/b;->b:Lcom/criteo/publisher/m0/c;

    const/16 v3, 0x13

    invoke-virtual {p2, v3}, Lcom/criteo/publisher/m0/c;->a(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1096
    iget-object p2, v0, Lcom/criteo/publisher/advancednative/b;->b:Lcom/criteo/publisher/m0/c;

    const/16 v3, 0xf

    invoke-virtual {p2, v3}, Lcom/criteo/publisher/m0/c;->a(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1097
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 1098
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 1100
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    .line 1106
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setElevation(F)V

    const/4 p1, 0x0

    .line 1107
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1110
    :cond_1
    iget-object p1, v0, Lcom/criteo/publisher/advancednative/b;->a:Ljava/util/Map;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

    .line 1142
    invoke-virtual {v0, p2}, Lcom/criteo/publisher/advancednative/b;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1146
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1147
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 77
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    :cond_1
    return-void
.end method
