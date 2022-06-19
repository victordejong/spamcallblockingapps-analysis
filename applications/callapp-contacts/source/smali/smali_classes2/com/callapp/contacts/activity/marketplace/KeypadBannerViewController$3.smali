.class public Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$3;->a:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a011c

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a054d

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a054b

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a04d6

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a02d9

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a0552

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a0551

    if-eq p1, p2, :cond_0

    .line 66
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$3;->a:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    .line 1092
    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->callOnClick()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
