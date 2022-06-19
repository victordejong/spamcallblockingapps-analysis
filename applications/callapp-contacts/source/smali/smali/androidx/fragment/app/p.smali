.class final Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/fragment/app/Fragment;

.field b:I

.field private final c:Landroidx/fragment/app/j;

.field private final d:Landroidx/fragment/app/r;

.field private e:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/j;Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/p;->e:Z

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroidx/fragment/app/p;->b:I

    .line 63
    iput-object p1, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    .line 64
    iput-object p2, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    .line 65
    iput-object p3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/j;Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/p;->e:Z

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Landroidx/fragment/app/p;->b:I

    .line 127
    iput-object p1, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    .line 128
    iput-object p2, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    .line 129
    iput-object p3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 130
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 131
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 132
    iput v0, p3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 133
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 134
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 135
    iget-object p2, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    iget-object p2, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 136
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 137
    iget-object p1, p4, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p4, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    .line 143
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/j;Landroidx/fragment/app/r;Ljava/lang/ClassLoader;Landroidx/fragment/app/g;Landroidx/fragment/app/FragmentState;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/p;->e:Z

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroidx/fragment/app/p;->b:I

    .line 83
    iput-object p1, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    .line 84
    iput-object p2, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    .line 85
    iget-object p1, p5, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p4, p3, p1}, Landroidx/fragment/app/g;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 86
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 87
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 89
    :cond_0
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 91
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 p2, 0x1

    .line 92
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 93
    iget p2, p5, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 94
    iget p2, p5, Landroidx/fragment/app/FragmentState;->mContainerId:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 95
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 96
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 97
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 98
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->mDetached:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 99
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->mHidden:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 100
    invoke-static {}, Landroidx/lifecycle/j$b;->values()[Landroidx/lifecycle/j$b;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/j$b;

    .line 101
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 102
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_0

    .line 107
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :goto_0
    const/4 p2, 0x2

    .line 109
    invoke-static {p2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .line 615
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 618
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 620
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    return v1

    .line 623
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final a()I
    .locals 9

    .line 170
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    return v0

    .line 174
    :cond_0
    iget v0, p0, Landroidx/fragment/app/p;->b:I

    .line 177
    sget-object v1, Landroidx/fragment/app/p$2;->a:[I

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/j$b;

    invoke-virtual {v2}, Landroidx/lifecycle/j$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_1

    .line 191
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 188
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 185
    :cond_2
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 182
    :cond_3
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 195
    :cond_4
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_7

    .line 196
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v1, :cond_5

    .line 199
    iget v0, p0, Landroidx/fragment/app/p;->b:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 202
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_7

    .line 203
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 206
    :cond_5
    iget v1, p0, Landroidx/fragment/app/p;->b:I

    if-ge v1, v5, :cond_6

    .line 211
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 216
    :cond_6
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 221
    :cond_7
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_8

    .line 222
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_8
    const/4 v1, 0x0

    .line 225
    sget-boolean v8, Landroidx/fragment/app/FragmentManager;->a:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_9

    .line 226
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 227
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v8

    .line 226
    invoke-static {v1, v8}, Landroidx/fragment/app/z;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/z;

    move-result-object v1

    .line 228
    invoke-virtual {v1, p0}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/p;)Landroidx/fragment/app/z$b$a;

    move-result-object v1

    .line 230
    :cond_9
    sget-object v8, Landroidx/fragment/app/z$b$a;->ADDING:Landroidx/fragment/app/z$b$a;

    if-ne v1, v8, :cond_a

    const/4 v1, 0x6

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 233
    :cond_a
    sget-object v8, Landroidx/fragment/app/z$b$a;->REMOVING:Landroidx/fragment/app/z$b$a;

    if-ne v1, v8, :cond_b

    .line 235
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 236
    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_d

    .line 237
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 239
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 242
    :cond_c
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 247
    :cond_d
    :goto_2
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v3, :cond_e

    .line 248
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 250
    :cond_e
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "computeExpectedState() of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    return v0
.end method

.method final a(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 401
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 405
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 407
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 409
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 411
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 412
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 415
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 416
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 417
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_0

    .line 419
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 422
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez p1, :cond_3

    .line 423
    iget-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    :cond_3
    return-void
.end method

.method final b()V
    .locals 6

    .line 258
    iget-boolean v0, p0, Landroidx/fragment/app/p;->e:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 259
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3149
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 266
    :try_start_0
    iput-boolean v2, p0, Landroidx/fragment/app/p;->e:Z

    .line 269
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/p;->a()I

    move-result v3

    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v3, v4, :cond_7

    .line 270
    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->mState:I

    if-le v3, v4, :cond_3

    .line 272
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->mState:I

    add-int/2addr v3, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 306
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/p;->i()V

    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x6

    iput v4, v3, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_0

    .line 300
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/p;->h()V

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 289
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 291
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 290
    invoke-static {v3, v4}, Landroidx/fragment/app/z;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/z;

    move-result-object v3

    .line 292
    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 294
    invoke-static {v4}, Landroidx/fragment/app/z$b$b;->from(I)Landroidx/fragment/app/z$b$b;

    move-result-object v4

    .line 295
    invoke-virtual {v3, v4, p0}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/p;)V

    .line 297
    :cond_2
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x4

    iput v4, v3, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_0

    .line 285
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/p;->g()V

    goto :goto_0

    .line 281
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/p;->c()V

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/p;->f()V

    goto :goto_0

    .line 278
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/p;->e()V

    goto :goto_0

    .line 275
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d()V

    goto :goto_0

    .line 311
    :cond_3
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->mState:I

    sub-int/2addr v3, v2

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 314
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/p;->j()V

    goto :goto_0

    .line 317
    :pswitch_9
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x5

    iput v4, v3, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_0

    .line 320
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/p;->k()V

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x3

    .line 323
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    :cond_4
    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 329
    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v4, :cond_5

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/p;->n()V

    .line 333
    :cond_5
    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    .line 334
    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 336
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    .line 335
    invoke-static {v4, v5}, Landroidx/fragment/app/z;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/z;

    move-result-object v4

    .line 337
    invoke-virtual {v4, p0}, Landroidx/fragment/app/z;->d(Landroidx/fragment/app/p;)V

    .line 339
    :cond_6
    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput v3, v4, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_0

    .line 342
    :pswitch_c
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-boolean v0, v3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 343
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput v1, v3, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_0

    .line 346
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/p;->o()V

    .line 347
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput v2, v3, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_0

    .line 350
    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/p;->p()V

    goto/16 :goto_0

    .line 353
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/p;->q()V

    goto/16 :goto_0

    .line 358
    :cond_7
    sget-boolean v1, Landroidx/fragment/app/FragmentManager;->a:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_b

    .line 359
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 361
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 363
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 362
    invoke-static {v1, v2}, Landroidx/fragment/app/z;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/z;

    move-result-object v1

    .line 364
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_8

    .line 365
    invoke-virtual {v1, p0}, Landroidx/fragment/app/z;->c(Landroidx/fragment/app/p;)V

    goto :goto_1

    .line 367
    :cond_8
    invoke-virtual {v1, p0}, Landroidx/fragment/app/z;->b(Landroidx/fragment/app/p;)V

    .line 370
    :cond_9
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_a

    .line 371
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->q(Landroidx/fragment/app/Fragment;)V

    .line 373
    :cond_a
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 374
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :cond_b
    iput-boolean v0, p0, Landroidx/fragment/app/p;->e:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/fragment/app/p;->e:Z

    .line 378
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method final c()V
    .locals 5

    .line 382
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 383
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATE_VIEW: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 388
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 390
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    sget v2, Landroidx/fragment/a$b;->fragment_container_view_tag:I

    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 391
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    .line 393
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 395
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x2

    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    :cond_2
    return-void
.end method

.method final d()V
    .locals 6

    const/4 v0, 0x3

    .line 428
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto ATTACHED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const-string v1, " that does not belong to this FragmentManager!"

    const-string v2, " declared target fragment "

    const-string v3, "Fragment "

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    iget-object v5, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroidx/fragment/app/r;->c(Ljava/lang/String;)Landroidx/fragment/app/p;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 443
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v4, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    goto :goto_0

    .line 438
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 445
    iget-object v0, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    iget-object v4, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/r;->c(Ljava/lang/String;)Landroidx/fragment/app/p;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 448
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v4, :cond_6

    .line 456
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->a:Z

    if-nez v0, :cond_5

    .line 4149
    iget-object v0, v4, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 457
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    if-gtz v0, :cond_6

    .line 458
    :cond_5
    invoke-virtual {v4}, Landroidx/fragment/app/p;->b()V

    .line 461
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 4805
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 461
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/h;

    .line 462
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 4810
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    .line 462
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 463
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;)V

    .line 464
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performAttach()V

    .line 465
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method final e()V
    .locals 3

    const/4 v0, 0x3

    .line 469
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-nez v0, :cond_1

    .line 473
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 475
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 476
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 480
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    return-void
.end method

.method final f()V
    .locals 6

    .line 485
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 490
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATE_VIEW: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 493
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 496
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 497
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    goto/16 :goto_1

    .line 498
    :cond_2
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v2, :cond_5

    .line 499
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 503
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 4815
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/e;

    .line 504
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/e;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    .line 505
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mRestored:Z

    if-eqz v2, :cond_3

    goto :goto_1

    .line 508
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unknown"

    .line 512
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 513
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_5
    :goto_1
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v1, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 518
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 519
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v2, 0x2

    if-eqz v0, :cond_c

    .line 520
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 521
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    sget v4, Landroidx/fragment/a$b;->fragment_container_view_tag:I

    iget-object v5, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v1, :cond_6

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/p;->r()V

    .line 525
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_7

    .line 526
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 530
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->r(Landroid/view/View;)V

    goto :goto_2

    .line 532
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 533
    new-instance v1, Landroidx/fragment/app/p$1;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/p$1;-><init>(Landroidx/fragment/app/p;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 546
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    .line 547
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v5, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v4, v5, v3}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 549
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 550
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 551
    sget-boolean v4, Landroidx/fragment/app/FragmentManager;->a:Z

    if-eqz v4, :cond_a

    .line 552
    iget-object v3, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->setPostOnViewCreatedAlpha(F)V

    .line 553
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    if-nez v0, :cond_c

    .line 555
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 557
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 558
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "requestFocus: Saved focused view "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Fragment "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 569
    :cond_a
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_b

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    const/4 v3, 0x1

    :cond_b
    iput-boolean v3, v1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 573
    :cond_c
    :goto_3
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput v2, v0, Landroidx/fragment/app/Fragment;->mState:I

    return-void
.end method

.method final g()V
    .locals 3

    const/4 v0, 0x3

    .line 577
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 580
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 581
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method final h()V
    .locals 2

    const/4 v0, 0x3

    .line 586
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 589
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 590
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method final i()V
    .locals 4

    const/4 v0, 0x3

    .line 594
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFocusedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 598
    invoke-direct {p0, v0}, Landroidx/fragment/app/p;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 599
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    const/4 v2, 0x2

    .line 600
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestFocus: Restoring focused view "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v0, "succeeded"

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    .line 602
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 603
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 607
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 608
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/Fragment;)V

    .line 609
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 610
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 611
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    return-void
.end method

.method final j()V
    .locals 2

    const/4 v0, 0x3

    .line 629
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 632
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 633
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method final k()V
    .locals 2

    const/4 v0, 0x3

    .line 637
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 641
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/j;->f(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method final l()Landroidx/fragment/app/FragmentState;
    .locals 4

    .line 646
    new-instance v0, Landroidx/fragment/app/FragmentState;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 648
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-ltz v1, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 649
    invoke-virtual {p0}, Landroidx/fragment/app/p;->m()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 651
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 652
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 653
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 655
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    const-string v3, "android:target_state"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    const-string v3, "android:target_req_state"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 666
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_2
    :goto_0
    return-object v0
.end method

.method final m()Landroid/os/Bundle;
    .locals 3

    .line 681
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 683
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 684
    iget-object v1, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 685
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 689
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 690
    invoke-virtual {p0}, Landroidx/fragment/app/p;->n()V

    .line 692
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 694
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 696
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 699
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    .line 701
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 703
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    const-string v2, "android:view_registry_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 705
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_7

    if-nez v0, :cond_6

    .line 707
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 710
    :cond_6
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    return-object v0
.end method

.method final n()V
    .locals 2

    .line 717
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 720
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 721
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 722
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 723
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 725
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 726
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/w;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/w;->a(Landroid/os/Bundle;)V

    .line 727
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    :cond_2
    return-void
.end method

.method final o()V
    .locals 3

    const/4 v0, 0x3

    .line 733
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom CREATE_VIEW: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 739
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 742
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 743
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 744
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 745
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 748
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/w;

    .line 749
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/t;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->b(Ljava/lang/Object;)V

    .line 750
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-boolean v2, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return-void
.end method

.method final p()V
    .locals 6

    const/4 v0, 0x3

    .line 754
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 757
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 758
    iget-object v4, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    .line 5047
    iget-object v4, v4, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/l;

    .line 759
    iget-object v5, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_d

    .line 761
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/h;

    .line 763
    instance-of v4, v2, Landroidx/lifecycle/ad;

    if-eqz v4, :cond_4

    .line 764
    iget-object v2, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    .line 6047
    iget-object v2, v2, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/l;

    .line 6108
    iget-boolean v3, v2, Landroidx/fragment/app/l;->d:Z

    goto :goto_3

    .line 6247
    :cond_4
    iget-object v4, v2, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    .line 765
    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_5

    .line 7247
    iget-object v2, v2, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    .line 766
    check-cast v2, Landroid/app/Activity;

    .line 767
    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    xor-int/2addr v3, v2

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    if-eqz v3, :cond_9

    .line 772
    :cond_6
    iget-object v1, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    .line 8047
    iget-object v1, v1, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/l;

    .line 772
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 8187
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Clearing non-config state for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8191
    :cond_7
    iget-object v0, v1, Landroidx/fragment/app/l;->a:Ljava/util/HashMap;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l;

    if-eqz v0, :cond_8

    .line 8193
    invoke-virtual {v0}, Landroidx/fragment/app/l;->a()V

    .line 8194
    iget-object v0, v1, Landroidx/fragment/app/l;->a:Ljava/util/HashMap;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8197
    :cond_8
    iget-object v0, v1, Landroidx/fragment/app/l;->b:Ljava/util/HashMap;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ac;

    if-eqz v0, :cond_9

    .line 8199
    invoke-virtual {v0}, Landroidx/lifecycle/ac;->b()V

    .line 8200
    iget-object v0, v1, Landroidx/fragment/app/l;->b:Ljava/util/HashMap;

    iget-object v1, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 775
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/j;->g(Landroidx/fragment/app/Fragment;)V

    .line 779
    iget-object v0, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/p;

    if-eqz v1, :cond_a

    .line 9149
    iget-object v1, v1, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 782
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 783
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    .line 784
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    goto :goto_4

    .line 788
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 791
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/r;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 793
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/r;->b(Landroidx/fragment/app/p;)V

    return-void

    .line 795
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 796
    iget-object v0, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 797
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v1, :cond_e

    .line 801
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 804
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput v2, v0, Landroidx/fragment/app/Fragment;->mState:I

    return-void
.end method

.method final q()V
    .locals 3

    const/4 v0, 0x3

    .line 809
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom ATTACHED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 812
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 813
    iget-object v1, p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/j;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/j;->h(Landroidx/fragment/app/Fragment;)V

    .line 815
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 816
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/h;

    .line 817
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 818
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 819
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 820
    iget-object v1, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    .line 10047
    iget-object v1, v1, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/l;

    .line 820
    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 821
    :cond_2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initState called for fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 824
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->initState()V

    :cond_4
    return-void
.end method

.method final r()V
    .locals 3

    .line 832
    iget-object v0, p0, Landroidx/fragment/app/p;->d:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->c(Landroidx/fragment/app/Fragment;)I

    move-result v0

    .line 833
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method
