.class public Lcom/google/android/material/tabs/TabLayout$i;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private final a:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .prologue
    .line 3216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3217
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$i;->a:Landroidx/viewpager/widget/ViewPager;

    .line 3218
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$i;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 3223
    return-void
.end method

.method public b(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    .prologue
    .line 3228
    return-void
.end method

.method public c(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    .prologue
    .line 3233
    return-void
.end method
