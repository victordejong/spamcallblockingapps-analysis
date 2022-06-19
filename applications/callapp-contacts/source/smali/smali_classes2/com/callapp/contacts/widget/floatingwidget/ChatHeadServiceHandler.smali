.class public Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallDetailsListener;
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/manager/phone/CallDetailsListener;",
        "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;",
        "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private e:Landroid/widget/ImageView;

.field private f:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->b:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->c:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    invoke-direct {v1, p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;-><init>(Landroid/content/Context;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;)V

    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    .line 64
    invoke-virtual {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->setOnItemSelectedListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;)V

    .line 65
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$q2W4basluXUUDllb0aBLaiuf69A;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$q2W4basluXUUDllb0aBLaiuf69A;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->setViewAdapter(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;)V

    .line 66
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    const-class v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    const/4 v1, 0x0

    .line 1382
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 67
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->setListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;)V

    .line 68
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addDetailsListener(Lcom/callapp/contacts/manager/phone/CallDetailsListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0288

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->e:Landroid/widget/ImageView;

    const v1, 0x7f0a04f2

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 135
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->d()V

    .line 136
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->f:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method private synthetic a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2371
    iput-boolean p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    const p1, 0x7f060244

    .line 181
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;)V

    .line 2496
    iput-object v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    .line 191
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method

.method private synthetic a([Z)V
    .locals 4

    .line 151
    sget-object v0, Lcom/callapp/contacts/model/Constants;->CALL_BEFORE_MERGE:[Z

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    check-cast v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getFloatingMenuViewController()Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    move-result-object v0

    const v1, 0x7f0a0421

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    check-cast v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;->getFloatingMenuViewController()Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    move-result-object v0

    const v3, 0x7f0a041f

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-static {}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->get()Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->isRegisteredActivity()Z

    move-result p1

    if-nez p1, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->d()V

    :cond_2
    return-void
.end method

.method private e()V
    .locals 2

    .line 201
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$kAonPthFTD7rG9WCSPC2N6hXIJM;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$kAonPthFTD7rG9WCSPC2N6hXIJM;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic f()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->f:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f080337

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public static synthetic lambda$SM7XtB-ALt53mbMtEEAw7hOfxz8(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;[Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a([Z)V

    return-void
.end method

.method public static synthetic lambda$g-qyj4ugg7jpuMIGGNjEJT5nayM(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public static synthetic lambda$kAonPthFTD7rG9WCSPC2N6hXIJM(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->f()V

    return-void
.end method

.method public static synthetic lambda$q2W4basluXUUDllb0aBLaiuf69A(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->c()V

    return-void

    .line 2125
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.callapp.contacts.ACTION_END_CALL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2126
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->c:Landroid/content/Context;

    const-class v2, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2127
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public final bridge synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->e()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 142
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeDetailsListener(Lcom/callapp/contacts/manager/phone/CallDetailsListener;)V

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->e()V

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a()V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->f:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->e()V

    .line 167
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldConferenceScreenAppear()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingOrConnectingOrConnectedCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$g-qyj4ugg7jpuMIGGNjEJT5nayM;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$g-qyj4ugg7jpuMIGGNjEJT5nayM;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onCallDetailsChanged([I)V
    .locals 2

    .line 149
    invoke-static {p1}, Lcom/callapp/contacts/util/ArrayUtils;->a([I)[Z

    move-result-object p1

    .line 150
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$SM7XtB-ALt53mbMtEEAw7hOfxz8;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$ChatHeadServiceHandler$SM7XtB-ALt53mbMtEEAw7hOfxz8;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;[Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s_()V
    .locals 0

    return-void
.end method
