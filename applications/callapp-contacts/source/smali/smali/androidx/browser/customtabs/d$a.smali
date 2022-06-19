.class public final Landroidx/browser/customtabs/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:Landroidx/browser/customtabs/a$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Bundle;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Bundle;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    .line 390
    new-instance v0, Landroidx/browser/customtabs/a$a;

    invoke-direct {v0}, Landroidx/browser/customtabs/a$a;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/d$a;->b:Landroidx/browser/customtabs/a$a;

    const/4 v0, 0x0

    .line 397
    iput v0, p0, Landroidx/browser/customtabs/d$a;->h:I

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Landroidx/browser/customtabs/d$a;->i:Z

    return-void
.end method

.method public constructor <init>(Landroidx/browser/customtabs/f;)V
    .locals 2

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    .line 390
    new-instance v1, Landroidx/browser/customtabs/a$a;

    invoke-direct {v1}, Landroidx/browser/customtabs/a$a;-><init>()V

    iput-object v1, p0, Landroidx/browser/customtabs/d$a;->b:Landroidx/browser/customtabs/a$a;

    const/4 v1, 0x0

    .line 397
    iput v1, p0, Landroidx/browser/customtabs/d$a;->h:I

    const/4 v1, 0x1

    .line 398
    iput-boolean v1, p0, Landroidx/browser/customtabs/d$a;->i:Z

    if-eqz p1, :cond_0

    .line 2315
    iget-object v1, p1, Landroidx/browser/customtabs/f;->b:Landroid/content/ComponentName;

    .line 1429
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3311
    iget-object v0, p1, Landroidx/browser/customtabs/f;->a:Landroid/support/a/a;

    invoke-interface {v0}, Landroid/support/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3320
    iget-object p1, p1, Landroidx/browser/customtabs/f;->c:Landroid/app/PendingIntent;

    .line 1430
    invoke-direct {p0, v0, p1}, Landroidx/browser/customtabs/d$a;->a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 2

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.customtabs.extra.SESSION"

    .line 450
    invoke-static {v0, v1, p1}, Landroidx/core/app/d;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    if-eqz p2, :cond_0

    const-string p1, "android.support.customtabs.extra.SESSION_ID"

    .line 452
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 455
    :cond_0
    iget-object p1, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/browser/customtabs/d;
    .locals 6

    .line 877
    iget-object v0, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 879
    invoke-direct {p0, v0, v0}, Landroidx/browser/customtabs/d$a;->a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 881
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/d$a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 882
    iget-object v1, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.MENU_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 884
    :cond_1
    iget-object v0, p0, Landroidx/browser/customtabs/d$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 885
    iget-object v1, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 887
    :cond_2
    iget-object v0, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    iget-boolean v1, p0, Landroidx/browser/customtabs/d$a;->i:Z

    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 889
    iget-object v0, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    iget-object v1, p0, Landroidx/browser/customtabs/d$a;->b:Landroidx/browser/customtabs/a$a;

    .line 4176
    new-instance v2, Landroidx/browser/customtabs/a;

    iget-object v3, v1, Landroidx/browser/customtabs/a$a;->a:Ljava/lang/Integer;

    iget-object v4, v1, Landroidx/browser/customtabs/a$a;->b:Ljava/lang/Integer;

    iget-object v5, v1, Landroidx/browser/customtabs/a$a;->c:Ljava/lang/Integer;

    iget-object v1, v1, Landroidx/browser/customtabs/a$a;->d:Ljava/lang/Integer;

    invoke-direct {v2, v3, v4, v5, v1}, Landroidx/browser/customtabs/a;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 5075
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5076
    iget-object v3, v2, Landroidx/browser/customtabs/a;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 5077
    iget-object v3, v2, Landroidx/browser/customtabs/a;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5079
    :cond_3
    iget-object v3, v2, Landroidx/browser/customtabs/a;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 5080
    iget-object v3, v2, Landroidx/browser/customtabs/a;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5082
    :cond_4
    iget-object v3, v2, Landroidx/browser/customtabs/a;->c:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 5083
    iget-object v3, v2, Landroidx/browser/customtabs/a;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5085
    :cond_5
    iget-object v3, v2, Landroidx/browser/customtabs/a;->d:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 5086
    iget-object v2, v2, Landroidx/browser/customtabs/a;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 889
    :cond_6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 890
    iget-object v0, p0, Landroidx/browser/customtabs/d$a;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    .line 891
    iget-object v1, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 894
    :cond_7
    iget-object v0, p0, Landroidx/browser/customtabs/d$a;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_8

    .line 895
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 896
    iget-object v1, p0, Landroidx/browser/customtabs/d$a;->f:Landroid/util/SparseArray;

    const-string v2, "androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 898
    iget-object v1, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 900
    :cond_8
    iget-object v0, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    iget v1, p0, Landroidx/browser/customtabs/d$a;->h:I

    const-string v2, "androidx.browser.customtabs.extra.SHARE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    new-instance v0, Landroidx/browser/customtabs/d;

    iget-object v1, p0, Landroidx/browser/customtabs/d$a;->a:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/browser/customtabs/d$a;->d:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Landroidx/browser/customtabs/d;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method
