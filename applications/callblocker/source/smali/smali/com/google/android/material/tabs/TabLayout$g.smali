.class public Lcom/google/android/material/tabs/TabLayout$g;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/material/tabs/TabLayout;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 1

    .prologue
    .line 3160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3161
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$g;->a:Ljava/lang/ref/WeakReference;

    .line 3162
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 3205
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$g;->c:I

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$g;->b:I

    .line 3206
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 3191
    if-eqz v0, :cond_1

    .line 3192
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 3193
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 3196
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$g;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$g;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$g;->b:I

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 3200
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    .line 3202
    :cond_1
    return-void

    .line 3196
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(IFI)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3173
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 3174
    if-eqz v0, :cond_3

    .line 3177
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$g;->c:I

    if-ne v1, v5, :cond_0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$g;->b:I

    if-ne v1, v3, :cond_4

    :cond_0
    move v1, v3

    .line 3182
    :goto_0
    iget v4, p0, Lcom/google/android/material/tabs/TabLayout$g;->c:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/google/android/material/tabs/TabLayout$g;->b:I

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    .line 3184
    :cond_2
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->a(IFZZ)V

    .line 3186
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 3177
    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 3166
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$g;->c:I

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$g;->b:I

    .line 3167
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$g;->c:I

    .line 3168
    return-void
.end method
