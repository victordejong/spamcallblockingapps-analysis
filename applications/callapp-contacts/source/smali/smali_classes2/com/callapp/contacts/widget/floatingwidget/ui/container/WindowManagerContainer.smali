.class public Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCaptureView;,
        Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCapturingTouchListener;
    }
.end annotation


# instance fields
.field private c:Landroid/view/View;

.field private d:Landroid/view/WindowManager;

.field private e:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

.field private f:Z

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    const/16 v4, 0x20

    goto :goto_0

    :cond_0
    const/16 p0, 0x18

    const/16 v4, 0x18

    .line 134
    :goto_0
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1

    const/16 v0, 0x7f6

    const/16 v3, 0x7f6

    goto :goto_1

    :cond_1
    const/16 v0, 0x7d2

    const/16 v3, 0x7d2

    :goto_1
    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 141
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v0, 0x800033

    .line 142
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object p0
.end method

.method static e(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 94
    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->a(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 211
    invoke-super {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->a()V

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->b:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->d:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getFrameLayout()Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 219
    iput-boolean v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->b:Z

    .line 222
    :cond_1
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->f:Z

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->d:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 224
    iput-boolean v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->f:Z

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->g:Landroid/content/BroadcastReceiver;

    :cond_3
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 2

    .line 155
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->a(Landroid/view/View;I)V

    .line 156
    instance-of v0, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-eqz v0, :cond_1

    .line 157
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->isHero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    instance-of v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    .line 1101
    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1102
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1103
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1104
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 2084
    invoke-static {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2085
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2086
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2087
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 199
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->f:Z

    if-nez p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->a(Landroid/view/View;Z)V

    .line 202
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x0

    .line 203
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 204
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iput-boolean p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->f:Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 1

    .line 148
    invoke-static {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->a(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;)V
    .locals 2

    .line 179
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    .line 180
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 181
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 182
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 183
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 184
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 185
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->f:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 187
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->f:Z

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getFrameLayout()Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 193
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->d:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getFrameLayout()Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V

    .line 48
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCaptureView;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCaptureView;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    .line 50
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCapturingTouchListener;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCapturingTouchListener;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;)V

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1056
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->g:Landroid/content/BroadcastReceiver;

    .line 1065
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 2

    .line 167
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->b(Landroid/view/View;I)V

    .line 168
    instance-of v0, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    instance-of v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    if-eqz v0, :cond_1

    .line 169
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->isHero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    .line 2115
    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2116
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2117
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2118
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 3076
    invoke-static {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3077
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3078
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3079
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->d:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->d:Landroid/view/WindowManager;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->d:Landroid/view/WindowManager;

    return-object v0
.end method
