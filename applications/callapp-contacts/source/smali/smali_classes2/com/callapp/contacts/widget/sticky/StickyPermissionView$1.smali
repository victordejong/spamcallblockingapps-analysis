.class Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->a(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

.field final synthetic b:Lcom/callapp/contacts/widget/sticky/StickyPermissionView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/sticky/StickyPermissionView;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->b:Lcom/callapp/contacts/widget/sticky/StickyPermissionView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->a:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 3

    .line 108
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 1091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 109
    iget-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->b:Lcom/callapp/contacts/widget/sticky/StickyPermissionView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->setVisibility(I)V

    return-void
.end method

.method private synthetic b(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 3

    .line 104
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/manager/permission/PermissionAllowedEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 2091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 105
    iget-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->b:Lcom/callapp/contacts/widget/sticky/StickyPermissionView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$0gMX5sLzBPfuNt3FwC5y0lavUOk(Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->b(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method

.method public static synthetic lambda$1_nu28uq9sKfjbZzrMsKCGpaD78(Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->a(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 102
    iget-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->b:Lcom/callapp/contacts/widget/sticky/StickyPermissionView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->a(Lcom/callapp/contacts/widget/sticky/StickyPermissionView;)Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->b:Lcom/callapp/contacts/widget/sticky/StickyPermissionView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->a:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    new-instance v2, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyPermissionView$1$0gMX5sLzBPfuNt3FwC5y0lavUOk;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyPermissionView$1$0gMX5sLzBPfuNt3FwC5y0lavUOk;-><init>(Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->a:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    new-instance v3, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyPermissionView$1$1_nu28uq9sKfjbZzrMsKCGpaD78;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyPermissionView$1$1_nu28uq9sKfjbZzrMsKCGpaD78;-><init>(Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    iget-object v4, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;->a:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method
