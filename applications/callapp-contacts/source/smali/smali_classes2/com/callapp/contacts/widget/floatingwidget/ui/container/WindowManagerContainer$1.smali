.class Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getFrameLayout()Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->a()V

    :cond_0
    return-void
.end method
