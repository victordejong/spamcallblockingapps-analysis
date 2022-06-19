.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V
    .locals 1

    .line 196
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$302(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Z)Z

    .line 199
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
