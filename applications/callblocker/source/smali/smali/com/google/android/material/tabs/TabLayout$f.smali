.class public Lcom/google/android/material/tabs/TabLayout$f;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/google/android/material/tabs/TabLayout;

.field public b:Lcom/google/android/material/tabs/TabLayout$h;

.field private c:Ljava/lang/Object;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:Landroid/view/View;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    .line 1824
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->i:I

    .line 1834
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$f;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/material/tabs/TabLayout$f;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/material/tabs/TabLayout$f;)I
    .locals 1

    .prologue
    .line 1806
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->i:I

    return v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->h:Landroid/view/View;

    return-object v0
.end method

.method public a(I)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 3

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1898
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$f;->a(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1943
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    .line 1944
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->o:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1945
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Z)V

    .line 1947
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->h()V

    .line 1948
    sget-boolean v0, Lcom/google/android/material/b/b;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    .line 1949
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$h;->a(Lcom/google/android/material/tabs/TabLayout$h;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    .line 1950
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$h;->b(Lcom/google/android/material/tabs/TabLayout$h;)Lcom/google/android/material/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1952
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->invalidate()V

    .line 1954
    :cond_2
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->h:Landroid/view/View;

    .line 1879
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->h()V

    .line 1880
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1986
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Ljava/lang/CharSequence;

    .line 1987
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->h()V

    .line 1988
    return-object p0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Ljava/lang/CharSequence;

    .line 2120
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->h()V

    .line 2121
    return-object p0
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 1922
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    .line 1923
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1918
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    return v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 2072
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->i:I

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    if-nez v0, :cond_0

    .line 2078
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->c(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 2081
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    if-nez v0, :cond_0

    .line 2086
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2088
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->b()V

    .line 2142
    :cond_0
    return-void
.end method

.method i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2145
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 2146
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    .line 2147
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->c:Ljava/lang/Object;

    .line 2148
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    .line 2149
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Ljava/lang/CharSequence;

    .line 2150
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Ljava/lang/CharSequence;

    .line 2151
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    .line 2152
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->h:Landroid/view/View;

    .line 2153
    return-void
.end method
