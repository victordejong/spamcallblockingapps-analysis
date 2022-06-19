.class public abstract Landroidx/fragment/app/n;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/FragmentManager;

.field private final b:I

.field private c:Landroidx/fragment/app/s;

.field private d:Landroidx/fragment/app/Fragment;

.field private e:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    .line 105
    iput-object v0, p0, Landroidx/fragment/app/n;->d:Landroidx/fragment/app/Fragment;

    .line 139
    iput-object p1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/FragmentManager;

    .line 140
    iput p2, p0, Landroidx/fragment/app/n;->b:I

    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 161
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    .line 165
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/n;->getItemId(I)J

    move-result-wide v0

    .line 168
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Landroidx/fragment/app/n;->a(IJ)Ljava/lang/String;

    move-result-object v2

    .line 169
    iget-object v3, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 172
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/s;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/n;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 176
    iget-object p2, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    .line 177
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Landroidx/fragment/app/n;->a(IJ)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p2, v3, v2, p1}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 179
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/n;->d:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_3

    const/4 p1, 0x0

    .line 180
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 181
    iget p2, p0, Landroidx/fragment/app/n;->b:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 182
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    sget-object p2, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {p1, v2, p2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/s;

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3
    :goto_1
    return-object v2
.end method

.method public final a()V
    .locals 3

    .line 240
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    if-eqz v0, :cond_1

    .line 246
    iget-boolean v1, p0, Landroidx/fragment/app/n;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/n;->e:Z

    .line 249
    invoke-virtual {v0}, Landroidx/fragment/app/s;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iput-boolean v2, p0, Landroidx/fragment/app/n;->e:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/n;->e:Z

    .line 252
    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewPager with adapter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 197
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    .line 202
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/s;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    .line 203
    iget-object p1, p0, Landroidx/fragment/app/n;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Landroidx/fragment/app/n;->d:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 260
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getItem(I)Landroidx/fragment/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final setPrimaryItem$30510aeb(Ljava/lang/Object;)V
    .locals 4

    .line 211
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 212
    iget-object v0, p0, Landroidx/fragment/app/n;->d:Landroidx/fragment/app/Fragment;

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 215
    iget v0, p0, Landroidx/fragment/app/n;->b:I

    if-ne v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    .line 219
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    iget-object v2, p0, Landroidx/fragment/app/n;->d:Landroidx/fragment/app/Fragment;

    sget-object v3, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/s;

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/n;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 224
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 225
    iget v0, p0, Landroidx/fragment/app/n;->b:I

    if-ne v0, v1, :cond_4

    .line 226
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    if-nez v0, :cond_3

    .line 227
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    .line 229
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/s;

    sget-object v1, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/s;

    goto :goto_1

    .line 231
    :cond_4
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 234
    :goto_1
    iput-object p1, p0, Landroidx/fragment/app/n;->d:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method
