.class public Lcom/callapp/contacts/activity/contact/details/PresenterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a:Ljava/util/Collection;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c:Z

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->d:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->e:Ljava/lang/Object;

    .line 93
    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresenterManager$1;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 4131
    :pswitch_0
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    goto/16 :goto_0

    .line 3281
    :pswitch_1
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    goto/16 :goto_0

    .line 3275
    :pswitch_2
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 3276
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 3277
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    goto/16 :goto_0

    .line 114
    :pswitch_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b()V

    goto/16 :goto_0

    .line 3263
    :pswitch_4
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b()V

    goto/16 :goto_0

    .line 3259
    :pswitch_5
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b()V

    goto/16 :goto_0

    .line 3251
    :pswitch_6
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b()V

    .line 3252
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 3253
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 3254
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 3255
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    goto :goto_0

    .line 2290
    :pswitch_7
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    goto :goto_0

    .line 1295
    :pswitch_8
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 1296
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 1297
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 1298
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 1299
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 1302
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 1303
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 1304
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 1305
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    goto :goto_0

    .line 1285
    :pswitch_9
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 1286
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;-><init>()V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 127
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V
    .locals 2

    .line 352
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;->shouldAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 355
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 268
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;-><init>()V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 269
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;-><init>()V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 270
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;-><init>()V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    .line 271
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;-><init>()V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;

    .line 331
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    monitor-exit v0

    return-object v2

    .line 335
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 322
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 324
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 320
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final a(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c:Z

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 139
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    .line 343
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    monitor-exit v0

    return-object v2

    .line 347
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    monitor-exit v0

    return-void

    .line 148
    :cond_0
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresenterManager$1;->a:[I

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 241
    :pswitch_0
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 242
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07032a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 224
    :pswitch_1
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsMultiCardWrapper;

    const v3, 0x7f1201b7

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x28

    invoke-direct {v1, p1, v3, v4}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsMultiCardWrapper;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V

    .line 225
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v4, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-direct {v4, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v4, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;

    invoke-direct {v4, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v4, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;

    invoke-direct {v4, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    sget-object v4, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->DEFAULT_DIALER:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    invoke-direct {v3, p1, v4}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    sget-object v4, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->PREMIUM:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    invoke-direct {v3, p1, v4}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsLargeAdCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsLargeAdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsSmallAdCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsSmallAdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 215
    :pswitch_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    sget-object v4, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->PREMIUM:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    invoke-direct {v3, p1, v4}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 151
    :cond_2
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    const v4, 0x7f120236

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {v1, p1, v4, v5}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V

    .line 152
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;

    invoke-direct {v5, v1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;

    invoke-direct {v5, v1}, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;

    invoke-direct {v6, p1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    invoke-direct {v5, v1, v6}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    const-string v4, ""

    const/16 v5, 0x5d

    invoke-direct {v1, p1, v4, v5}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v6, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-direct {v6, v1, v3}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v6, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;

    invoke-direct {v6, v1, v3}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v5, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-direct {v5, v1, v3}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;

    const/16 v4, 0x5e

    invoke-direct {v3, p1, v4}, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 179
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;

    invoke-direct {v4, p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    const v4, 0x7f120212

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x55

    invoke-direct {v3, p1, v4, v5}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V

    .line 183
    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;

    invoke-direct {v4, v3}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    .line 184
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;

    invoke-direct {v5, v3}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;

    invoke-direct {v5, v3}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    const v4, 0x7f120670

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xbe

    invoke-direct {v3, p1, v4, v5}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V

    .line 189
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-direct {v5, v3, v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedEvents;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-direct {v4, v3}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/BirthdayCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 194
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_4

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/NoteCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 199
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b:Ljava/util/Collection;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_7
    :goto_1
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c:Z

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;

    .line 311
    invoke-virtual {v2, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;->setPresentersContainer(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 312
    invoke-virtual {v2, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    goto :goto_0

    .line 314
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
