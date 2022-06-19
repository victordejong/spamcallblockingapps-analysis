.class Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LastNotificationSent"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

.field private d:F


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->a:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;-><init>(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1039
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 1042
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->b:Ljava/lang/ref/WeakReference;

    .line 1044
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->c:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    .line 1045
    iput p3, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->d:F

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;)Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->c:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->d:F

    return p0
.end method
