.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;Landroid/view/View;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fD:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->a()V

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    invoke-static {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->b()V

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$2;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/skyfishjy/library/RippleBackground;->setVisibility(I)V

    return-void
.end method
