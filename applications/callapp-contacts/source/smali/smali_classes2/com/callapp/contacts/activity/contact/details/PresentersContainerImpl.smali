.class public abstract Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# instance fields
.field private final contactListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultPhotoColorFilterColor:Ljava/lang/Integer;

.field private final eventBus:Lcom/callapp/contacts/event/bus/EventBus;

.field private isDestroyed:Z

.field private final mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private positionChangedListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->contactListeners:Ljava/util/Map;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->isDestroyed:Z

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    .line 41
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$-CC;->$default$a(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    return p1
.end method

.method public addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    .line 74
    sget-object v1, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->contactListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addContactDetailsParallaxPositionChanged(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->positionChangedListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    return-void
.end method

.method public addDestroyListener(Lcom/callapp/contacts/event/listener/DestroyListener;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    .line 121
    sget-object v1, Lcom/callapp/contacts/event/listener/DestroyListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addPauseListener(Lcom/callapp/contacts/event/listener/PauseListener;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    .line 107
    sget-object v1, Lcom/callapp/contacts/event/listener/PauseListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addResumeListener(Lcom/callapp/contacts/event/listener/ResumeListener;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    .line 114
    sget-object v1, Lcom/callapp/contacts/event/listener/ResumeListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addThemeChangeListener(Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    .line 81
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic findFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$-CC;->$default$findFragment(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method public getDefaultContactDrawableTintColor()Ljava/lang/Integer;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->defaultPhotoColorFilterColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060244

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->defaultPhotoColorFilterColor:Ljava/lang/Integer;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->defaultPhotoColorFilterColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDefaultContactResource()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f08058f

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultContactResourceUri()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getDefaultContactResource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$-CC;->$default$getFragmentManager(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->positionChangedListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    return-object v0
.end method

.method public synthetic hasIntentExtra(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$-CC;->$default$hasIntentExtra(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isClickValid(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isDefaultContactResource(Ljava/lang/String;)Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getDefaultContactResource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->isDestroyed:Z

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->contactListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {p2, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 137
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;Ljava/util/Map$Entry;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->c()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->isDestroyed:Z

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/callapp/contacts/event/bus/EventBus;->a()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->contactListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public synthetic openNotificationAccsess()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$-CC;->$default$openNotificationAccsess(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-void
.end method

.method public removeCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    .line 100
    sget-object v1, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->contactListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeThemeChangeListener(Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    .line 88
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public safeRunOnUIThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 127
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic scrollToPosition(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$-CC;->$default$scrollToPosition(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    return-void
.end method
