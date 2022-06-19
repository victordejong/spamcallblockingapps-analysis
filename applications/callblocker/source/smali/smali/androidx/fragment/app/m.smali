.class public abstract Landroidx/fragment/app/m;
.super Landroidx/viewpager/widget/a;
.source "FragmentPagerAdapter.java"


# instance fields
.field private final a:Landroidx/fragment/app/i;

.field private final b:I

.field private c:Landroidx/fragment/app/o;

.field private d:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/i;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    .line 101
    iput-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    .line 102
    iput-object v0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/Fragment;

    .line 135
    iput-object p1, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/i;

    .line 136
    iput p2, p0, Landroidx/fragment/app/m;->b:I

    .line 137
    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(I)Landroidx/fragment/app/Fragment;
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 157
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    .line 161
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/m;->b(I)J

    move-result-wide v2

    .line 164
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, v2, v3}, Landroidx/fragment/app/m;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/i;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/i;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->e(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 175
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/Fragment;

    if-eq v0, v1, :cond_1

    .line 176
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->d(Z)V

    .line 177
    iget v1, p0, Landroidx/fragment/app/m;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 178
    iget-object v1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    sget-object v2, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/o;

    .line 184
    :cond_1
    :goto_1
    return-object v0

    .line 170
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/fragment/app/m;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 172
    iget-object v1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    .line 173
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-static {v5, v2, v3}, Landroidx/fragment/app/m;->a(IJ)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v4, v0, v2}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/o;

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->e(Z)V

    goto :goto_1
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 189
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 191
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    .line 196
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    invoke-virtual {v0, p3}, Landroidx/fragment/app/o;->d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 197
    iget-object v0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/Fragment;

    if-ne p3, v0, :cond_1

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/Fragment;

    .line 200
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 242
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->G()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 265
    int-to-long v0, p1

    return-wide v0
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroidx/fragment/app/o;->e()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    .line 238
    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 205
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 206
    iget-object v0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/Fragment;

    if-eq p3, v0, :cond_3

    .line 207
    iget-object v0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->d(Z)V

    .line 209
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    if-ne v0, v3, :cond_4

    .line 210
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    .line 213
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    iget-object v1, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/Fragment;

    sget-object v2, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/o;

    .line 218
    :cond_1
    :goto_0
    invoke-virtual {p3, v3}, Landroidx/fragment/app/Fragment;->d(Z)V

    .line 219
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    if-ne v0, v3, :cond_5

    .line 220
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    .line 223
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/o;

    sget-object v1, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, p3, v1}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/o;

    .line 228
    :goto_1
    iput-object p3, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/Fragment;

    .line 230
    :cond_3
    return-void

    .line 215
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->e(Z)V

    goto :goto_0

    .line 225
    :cond_5
    invoke-virtual {p3, v3}, Landroidx/fragment/app/Fragment;->e(Z)V

    goto :goto_1
.end method
