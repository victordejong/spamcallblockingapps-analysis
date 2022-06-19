.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;
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

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->a(Z)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;I)V

    return-void
.end method
