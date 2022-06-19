.class public Lcom/callapp/contacts/activity/base/BaseListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/BaseListFunctions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/BaseListImpl$IAdapterReady;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListAdapter;

.field private b:Landroid/widget/ListView;

.field private c:Z

.field private d:Lcom/callapp/contacts/activity/base/BaseListImpl$IAdapterReady;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/BaseListImpl$IAdapterReady;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->c:Z

    .line 23
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseListImpl$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/base/BaseListImpl$1;-><init>(Lcom/callapp/contacts/activity/base/BaseListImpl;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->e:Ljava/lang/Runnable;

    .line 16
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->d:Lcom/callapp/contacts/activity/base/BaseListImpl$IAdapterReady;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseListImpl;)Landroid/widget/ListView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->b:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x1020004

    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    .line 31
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->b:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 39
    :cond_0
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->c:Z

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->a:Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseListImpl;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->c:Z

    return-void

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->a:Landroid/widget/ListAdapter;

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListImpl;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
