.class public final Lcom/google/android/material/tabs/TabLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Ljava/lang/CharSequence;

.field d:Ljava/lang/CharSequence;

.field public e:I

.field public f:Landroid/view/View;

.field g:I

.field public h:Lcom/google/android/material/tabs/TabLayout;

.field public i:Lcom/google/android/material/tabs/TabLayout$TabView;

.field j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1969
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    const/4 v1, 0x1

    .line 1971
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    .line 1977
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->j:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .line 2047
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Landroid/view/View;

    .line 2048
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->c()V

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .line 2149
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2155
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->c:Ljava/lang/CharSequence;

    .line 2156
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->c()V

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 2246
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->h:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    .line 2249
    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;)V

    return-void

    .line 2247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Z
    .locals 2

    .line 2254
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->h:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_1

    .line 2257
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2255
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final c()V
    .locals 1

    .line 2308
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v0, :cond_0

    .line 2309
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->a()V

    :cond_0
    return-void
.end method
