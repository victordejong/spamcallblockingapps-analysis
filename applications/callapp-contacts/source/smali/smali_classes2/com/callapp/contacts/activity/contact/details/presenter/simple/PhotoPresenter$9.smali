.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoUrl(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;Z)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$9;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$9;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$9;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$9;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$9;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$9;->b:Z

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$9;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
