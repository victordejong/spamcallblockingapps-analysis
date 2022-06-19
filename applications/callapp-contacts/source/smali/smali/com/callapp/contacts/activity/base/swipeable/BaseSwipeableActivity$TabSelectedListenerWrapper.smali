.class Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;
.super Lcom/google/android/material/tabs/TabLayout$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabSelectedListenerWrapper"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/material/tabs/TabLayout$c;


# direct methods
.method private constructor <init>(Landroidx/viewpager/widget/ViewPager;Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$c;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$h;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    .line 138
    iput-object p2, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;->a:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;->b:Lcom/google/android/material/tabs/TabLayout$c;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/viewpager/widget/ViewPager;Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$c;Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$1;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;-><init>(Landroidx/viewpager/widget/ViewPager;Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$c;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 4

    .line 144
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tab selected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3087
    iget v3, p1, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;->b:Lcom/google/android/material/tabs/TabLayout$c;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$c;->a(Lcom/google/android/material/tabs/TabLayout$f;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;->b:Lcom/google/android/material/tabs/TabLayout$c;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$c;->b(Lcom/google/android/material/tabs/TabLayout$f;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;->b:Lcom/google/android/material/tabs/TabLayout$c;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$c;->c(Lcom/google/android/material/tabs/TabLayout$f;)V

    :cond_0
    return-void
.end method
