.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BringToFrontLifecycleObserver"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 505
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$1;)V
    .locals 0

    .line 504
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    return-void
.end method


# virtual methods
.method start()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;->a:Z

    return-void
.end method

.method stop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;->a:Z

    return-void
.end method
