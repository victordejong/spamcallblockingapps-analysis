.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$1;
.super Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    invoke-direct {p0}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 68
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object p1

    invoke-virtual {p1}, Lcom/skyfishjy/library/RippleBackground;->b()V

    .line 69
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fD:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method
