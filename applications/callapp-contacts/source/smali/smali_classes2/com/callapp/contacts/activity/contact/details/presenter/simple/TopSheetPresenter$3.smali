.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$3;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$3;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a()V

    .line 97
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$3;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
