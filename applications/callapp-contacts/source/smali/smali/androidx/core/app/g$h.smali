.class public final Landroidx/core/app/g$h;
.super Landroidx/core/app/g$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/g$h$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/g$h$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/core/app/k;

.field private c:Ljava/lang/CharSequence;

.field private h:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2296
    invoke-direct {p0}, Landroidx/core/app/g$i;-><init>()V

    .line 2290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/k;)V
    .locals 1

    .line 2318
    invoke-direct {p0}, Landroidx/core/app/g$i;-><init>()V

    .line 2290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    .line 4191
    iget-object v0, p1, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    .line 2319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2322
    iput-object p1, p0, Landroidx/core/app/g$h;->b:Landroidx/core/app/k;

    return-void

    .line 2320
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "User\'s name must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2306
    invoke-direct {p0}, Landroidx/core/app/g$i;-><init>()V

    .line 2290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    .line 2307
    new-instance v0, Landroidx/core/app/k$a;

    invoke-direct {v0}, Landroidx/core/app/k$a;-><init>()V

    .line 3270
    iput-object p1, v0, Landroidx/core/app/k$a;->a:Ljava/lang/CharSequence;

    .line 2307
    invoke-virtual {v0}, Landroidx/core/app/k$a;->a()Landroidx/core/app/k;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/g$h;->b:Landroidx/core/app/k;

    return-void
.end method

.method private static a(I)Landroid/text/style/TextAppearanceSpan;
    .locals 7

    .line 2654
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v6
.end method

.method private a()Landroidx/core/app/g$h$a;
    .locals 3

    .line 2603
    iget-object v0, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2604
    iget-object v1, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/g$h$a;

    .line 13829
    iget-object v2, v1, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    if-eqz v2, :cond_0

    .line 14829
    iget-object v2, v1, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    .line 15191
    iget-object v2, v2, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    .line 2607
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2611
    :cond_1
    iget-object v0, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2613
    iget-object v0, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/g$h$a;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Landroidx/core/app/g$h$a;)Ljava/lang/CharSequence;
    .locals 7

    .line 2629
    invoke-static {}, Landroidx/core/d/a;->a()Landroidx/core/d/a;

    move-result-object v0

    .line 2630
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2631
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/high16 v3, -0x1000000

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    .line 17829
    :goto_1
    iget-object v4, p1, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    const-string v5, ""

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_2

    .line 18829
    :cond_2
    iget-object v4, p1, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    .line 19191
    iget-object v4, v4, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    .line 2635
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2636
    iget-object v4, p0, Landroidx/core/app/g$h;->b:Landroidx/core/app/k;

    .line 20191
    iget-object v4, v4, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 2637
    iget-object v2, p0, Landroidx/core/app/g$h;->d:Landroidx/core/app/g$e;

    .line 20739
    iget v2, v2, Landroidx/core/app/g$e;->C:I

    if-eqz v2, :cond_3

    .line 2638
    iget-object v2, p0, Landroidx/core/app/g$h;->d:Landroidx/core/app/g$e;

    .line 21739
    iget v2, v2, Landroidx/core/app/g$e;->C:I

    move v3, v2

    .line 2641
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/core/d/a;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2642
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2643
    invoke-static {v3}, Landroidx/core/app/g$h;->a(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    .line 2644
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v4, v2

    .line 2645
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v6, 0x21

    .line 2643
    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 21801
    iget-object v2, p1, Landroidx/core/app/g$h$a;->a:Ljava/lang/CharSequence;

    if-nez v2, :cond_4

    goto :goto_3

    .line 22801
    :cond_4
    iget-object v5, p1, Landroidx/core/app/g$h$a;->a:Ljava/lang/CharSequence;

    :goto_3
    const-string p1, "  "

    .line 2648
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v5}, Landroidx/core/d/a;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v1
.end method

.method private b()Z
    .locals 4

    .line 2619
    iget-object v0, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2620
    iget-object v2, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/g$h$a;

    .line 15829
    iget-object v3, v2, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    if-eqz v3, :cond_0

    .line 16829
    iget-object v2, v2, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    .line 17191
    iget-object v2, v2, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Z)Landroidx/core/app/g$h;
    .locals 0

    .line 2436
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/g$h;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 9

    .line 2659
    invoke-super {p0, p1}, Landroidx/core/app/g$i;->a(Landroid/os/Bundle;)V

    .line 2660
    iget-object v0, p0, Landroidx/core/app/g$h;->b:Landroidx/core/app/k;

    .line 23191
    iget-object v0, v0, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    const-string v1, "android.selfDisplayName"

    .line 2660
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2661
    iget-object v0, p0, Landroidx/core/app/g$h;->b:Landroidx/core/app/k;

    invoke-virtual {v0}, Landroidx/core/app/k;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.messagingStyleUser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2663
    iget-object v0, p0, Landroidx/core/app/g$h;->c:Ljava/lang/CharSequence;

    const-string v1, "android.hiddenConversationTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2664
    iget-object v0, p0, Landroidx/core/app/g$h;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/g$h;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2665
    iget-object v0, p0, Landroidx/core/app/g$h;->c:Ljava/lang/CharSequence;

    const-string v1, "android.conversationTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2667
    :cond_0
    iget-object v0, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2668
    iget-object v0, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    .line 23879
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Bundle;

    .line 23880
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    .line 23882
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/g$h$a;

    .line 24848
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 24849
    iget-object v6, v4, Landroidx/core/app/g$h$a;->a:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 24850
    iget-object v6, v4, Landroidx/core/app/g$h$a;->a:Ljava/lang/CharSequence;

    const-string v7, "text"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24852
    :cond_1
    iget-wide v6, v4, Landroidx/core/app/g$h$a;->b:J

    const-string v8, "time"

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 24853
    iget-object v6, v4, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    if-eqz v6, :cond_3

    .line 24856
    iget-object v6, v4, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    .line 25191
    iget-object v6, v6, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    const-string v7, "sender"

    .line 24856
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24859
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_2

    .line 24860
    iget-object v6, v4, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    invoke-virtual {v6}, Landroidx/core/app/k;->b()Landroid/app/Person;

    move-result-object v6

    const-string v7, "sender_person"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 24862
    :cond_2
    iget-object v6, v4, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    invoke-virtual {v6}, Landroidx/core/app/k;->a()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "person"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24865
    :cond_3
    :goto_1
    iget-object v6, v4, Landroidx/core/app/g$h$a;->e:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 24866
    iget-object v6, v4, Landroidx/core/app/g$h$a;->e:Ljava/lang/String;

    const-string v7, "type"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24868
    :cond_4
    iget-object v6, v4, Landroidx/core/app/g$h$a;->f:Landroid/net/Uri;

    if-eqz v6, :cond_5

    .line 24869
    iget-object v6, v4, Landroidx/core/app/g$h$a;->f:Landroid/net/Uri;

    const-string v7, "uri"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24871
    :cond_5
    iget-object v6, v4, Landroidx/core/app/g$h$a;->d:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    .line 24872
    iget-object v4, v4, Landroidx/core/app/g$h$a;->d:Landroid/os/Bundle;

    const-string v6, "extras"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23882
    :cond_6
    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    const-string v0, "android.messages"

    .line 2668
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2671
    :cond_8
    iget-object v0, p0, Landroidx/core/app/g$h;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 2672
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "android.isGroupConversation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    return-void
.end method

.method public final a(Landroidx/core/app/f;)V
    .locals 10

    .line 4458
    iget-object v0, p0, Landroidx/core/app/g$h;->d:Landroidx/core/app/g$e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/g$h;->d:Landroidx/core/app/g$e;

    iget-object v0, v0, Landroidx/core/app/g$e;->a:Landroid/content/Context;

    .line 4459
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Landroidx/core/app/g$h;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 4462
    iget-object v0, p0, Landroidx/core/app/g$h;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 4466
    :cond_0
    iget-object v0, p0, Landroidx/core/app/g$h;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2507
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/core/app/g$h;->a(Z)Landroidx/core/app/g$h;

    .line 2509
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const/4 v5, 0x0

    if-lt v0, v4, :cond_b

    .line 2511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 2512
    new-instance v0, Landroid/app/Notification$MessagingStyle;

    iget-object v1, p0, Landroidx/core/app/g$h;->b:Landroidx/core/app/k;

    invoke-virtual {v1}, Landroidx/core/app/k;->b()Landroid/app/Person;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    goto :goto_1

    .line 2514
    :cond_2
    new-instance v0, Landroid/app/Notification$MessagingStyle;

    iget-object v1, p0, Landroidx/core/app/g$h;->b:Landroidx/core/app/k;

    .line 5191
    iget-object v1, v1, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    .line 2514
    invoke-direct {v0, v1}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    .line 2523
    :goto_1
    iget-object v1, p0, Landroidx/core/app/g$h;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4

    .line 2525
    :cond_3
    iget-object v1, p0, Landroidx/core/app/g$h;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 2530
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_5

    .line 2531
    iget-object v1, p0, Landroidx/core/app/g$h;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$MessagingStyle;->setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;

    .line 2534
    :cond_5
    iget-object v1, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/g$h$a;

    .line 2538
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_7

    .line 5829
    iget-object v4, v2, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    .line 2540
    new-instance v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 6801
    iget-object v7, v2, Landroidx/core/app/g$h$a;->a:Ljava/lang/CharSequence;

    .line 6806
    iget-wide v8, v2, Landroidx/core/app/g$h$a;->b:J

    if-nez v4, :cond_6

    move-object v4, v5

    goto :goto_3

    .line 2545
    :cond_6
    invoke-virtual {v4}, Landroidx/core/app/k;->b()Landroid/app/Person;

    move-result-object v4

    :goto_3
    invoke-direct {v6, v7, v8, v9, v4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    goto :goto_5

    .line 6829
    :cond_7
    iget-object v4, v2, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    if-eqz v4, :cond_8

    .line 7829
    iget-object v4, v2, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    .line 8191
    iget-object v4, v4, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_8
    move-object v4, v5

    .line 2551
    :goto_4
    new-instance v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 8801
    iget-object v7, v2, Landroidx/core/app/g$h$a;->a:Ljava/lang/CharSequence;

    .line 8806
    iget-wide v8, v2, Landroidx/core/app/g$h$a;->b:J

    .line 2552
    invoke-direct {v6, v7, v8, v9, v4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 8835
    :goto_5
    iget-object v4, v2, Landroidx/core/app/g$h$a;->e:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 9835
    iget-object v4, v2, Landroidx/core/app/g$h$a;->e:Ljava/lang/String;

    .line 9844
    iget-object v2, v2, Landroidx/core/app/g$h$a;->f:Landroid/net/Uri;

    .line 2556
    invoke-virtual {v6, v4, v2}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 2559
    :cond_9
    invoke-virtual {v0, v6}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    goto :goto_2

    .line 2561
    :cond_a
    invoke-interface {p1}, Landroidx/core/app/f;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$MessagingStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    return-void

    .line 2563
    :cond_b
    invoke-direct {p0}, Landroidx/core/app/g$h;->a()Landroidx/core/app/g$h$a;

    move-result-object v0

    .line 2565
    iget-object v3, p0, Landroidx/core/app/g$h;->c:Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroidx/core/app/g$h;->h:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2566
    invoke-interface {p1}, Landroidx/core/app/f;->a()Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Landroidx/core/app/g$h;->c:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_6

    :cond_c
    if-eqz v0, :cond_d

    .line 2568
    invoke-interface {p1}, Landroidx/core/app/f;->a()Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 10829
    iget-object v3, v0, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    if-eqz v3, :cond_d

    .line 2570
    invoke-interface {p1}, Landroidx/core/app/f;->a()Landroid/app/Notification$Builder;

    move-result-object v3

    .line 11829
    iget-object v4, v0, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    .line 12191
    iget-object v4, v4, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    .line 2570
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_d
    :goto_6
    if-eqz v0, :cond_f

    .line 2576
    invoke-interface {p1}, Landroidx/core/app/f;->a()Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Landroidx/core/app/g$h;->c:Ljava/lang/CharSequence;

    if-eqz v4, :cond_e

    .line 2577
    invoke-direct {p0, v0}, Landroidx/core/app/g$h;->a(Landroidx/core/app/g$h$a;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_7

    .line 12801
    :cond_e
    iget-object v0, v0, Landroidx/core/app/g$h$a;->a:Ljava/lang/CharSequence;

    .line 2576
    :goto_7
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2581
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_15

    .line 2582
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2583
    iget-object v3, p0, Landroidx/core/app/g$h;->c:Ljava/lang/CharSequence;

    if-nez v3, :cond_11

    .line 2584
    invoke-direct {p0}, Landroidx/core/app/g$h;->b()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v3, 0x1

    .line 2585
    :goto_9
    iget-object v4, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_a
    if-ltz v4, :cond_14

    .line 2586
    iget-object v6, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/g$h$a;

    if-eqz v3, :cond_12

    .line 2588
    invoke-direct {p0, v6}, Landroidx/core/app/g$h;->a(Landroidx/core/app/g$h$a;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_b

    .line 13801
    :cond_12
    iget-object v6, v6, Landroidx/core/app/g$h$a;->a:Ljava/lang/CharSequence;

    .line 2589
    :goto_b
    iget-object v7, p0, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    if-eq v4, v7, :cond_13

    const-string v7, "\n"

    .line 2590
    invoke-virtual {v0, v2, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2592
    :cond_13
    invoke-virtual {v0, v2, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 2594
    :cond_14
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p1}, Landroidx/core/app/f;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 2595
    invoke-virtual {v1, v5}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 2596
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_15
    return-void
.end method
