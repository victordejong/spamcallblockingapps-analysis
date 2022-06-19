.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;ZLjava/lang/String;)V

    return-void
.end method
