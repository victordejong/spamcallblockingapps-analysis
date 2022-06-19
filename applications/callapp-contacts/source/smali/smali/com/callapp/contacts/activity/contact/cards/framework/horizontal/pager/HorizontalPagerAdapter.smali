.class public Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/q;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 20
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TData;>;)Z"
        }
    .end annotation

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->a:Ljava/util/List;

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->c()V

    const/4 p1, 0x1

    .line 43
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 45
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCount()I
    .locals 1

    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 27
    monitor-exit p0

    return v0

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDataAt(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TData;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 55
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    :catch_0
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    const-string v2, "fail to get index at: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v1
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    const/4 v0, 0x0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->getDataAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->setData(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 82
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 85
    :goto_1
    const-class v1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    move-object v1, v0

    :cond_0
    :goto_2
    return-object v1
.end method

.method public final getItemPosition$5d527804()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setCancelAnimationOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->c:Landroid/view/View$OnTouchListener;

    return-void
.end method
