.class public abstract Lcom/telguarder/helpers/backend/BackendCallbackListener;
.super Ljava/lang/Object;
.source "BackendCallbackListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mIsCancelled:Z

.field private mIsExecutingWithoutUserInterface:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsExecutingWithoutUserInterface:Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/telguarder/helpers/backend/BackendCallbackListener;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> Check UI visibility if you constructing a callback listener object from UI thread!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsExecutingWithoutUserInterface:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsExecutingWithoutUserInterface:Z

    .line 34
    iput-object p1, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsExecutingWithoutUserInterface:Z

    .line 30
    iput-object p1, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsExecutingWithoutUserInterface:Z

    .line 39
    iput-object p1, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private isActivityInForeGround()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isContextMode()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFragmentInForeGround()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScreenInForeGround()Z
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->isContextMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->isActivityInForeGround()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->isFragmentInForeGround()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsCancelled:Z

    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public triggerError(Ljava/lang/Exception;)V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->isScreenInForeGround()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsExecutingWithoutUserInterface:Z

    if-eqz v0, :cond_2

    .line 99
    :cond_1
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onError(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public triggerStart()V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->isScreenInForeGround()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsExecutingWithoutUserInterface:Z

    if-eqz v0, :cond_2

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onStart()V

    :cond_2
    return-void
.end method

.method public triggerSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->isScreenInForeGround()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/telguarder/helpers/backend/BackendCallbackListener;->mIsExecutingWithoutUserInterface:Z

    if-eqz v0, :cond_2

    .line 86
    :cond_1
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
