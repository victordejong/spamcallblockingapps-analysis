.class Lcom/google/android/material/tabs/TabLayout$a;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/tabs/TabLayout;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    .prologue
    .line 3253
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$a;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/a;Landroidx/viewpager/widget/a;)V
    .locals 2

    .prologue
    .line 3260
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$a;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->v:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    .line 3261
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$a;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout$a;->b:Z

    invoke-virtual {v0, p3, v1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/a;Z)V

    .line 3263
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 3266
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout$a;->b:Z

    .line 3267
    return-void
.end method
