.class public Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private autoRefresh:Z

.field public final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Lg40;Lg40;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p2, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->autoRefresh:Z

    invoke-virtual {p2, p3, p1}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Lg40;Z)V

    :cond_0
    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->autoRefresh:Z

    return-void
.end method
