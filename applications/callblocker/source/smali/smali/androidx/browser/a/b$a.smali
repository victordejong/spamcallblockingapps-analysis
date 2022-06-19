.class public final Landroidx/browser/a/b$a;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:Landroidx/browser/a/a$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Bundle;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/a/b$a;->a:Landroid/content/Intent;

    .line 345
    new-instance v0, Landroidx/browser/a/a$a;

    invoke-direct {v0}, Landroidx/browser/a/a$a;-><init>()V

    iput-object v0, p0, Landroidx/browser/a/b$a;->b:Landroidx/browser/a/a$a;

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/browser/a/b$a;->f:Z

    .line 358
    return-void
.end method

.method private a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 403
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    const-string/jumbo v1, "android.support.customtabs.extra.SESSION"

    invoke-static {v0, v1, p1}, Landroidx/core/app/d;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 405
    if-eqz p2, :cond_0

    .line 406
    const-string/jumbo v1, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 409
    :cond_0
    iget-object v1, p0, Landroidx/browser/a/b$a;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 410
    return-void
.end method


# virtual methods
.method public a()Landroidx/browser/a/b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 732
    iget-object v0, p0, Landroidx/browser/a/b$a;->a:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    invoke-direct {p0, v2, v2}, Landroidx/browser/a/b$a;->a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 736
    :cond_0
    iget-object v0, p0, Landroidx/browser/a/b$a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Landroidx/browser/a/b$a;->a:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.MENU_ITEMS"

    iget-object v2, p0, Landroidx/browser/a/b$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 739
    :cond_1
    iget-object v0, p0, Landroidx/browser/a/b$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Landroidx/browser/a/b$a;->a:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    iget-object v2, p0, Landroidx/browser/a/b$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 742
    :cond_2
    iget-object v0, p0, Landroidx/browser/a/b$a;->a:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    iget-boolean v2, p0, Landroidx/browser/a/b$a;->f:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    iget-object v0, p0, Landroidx/browser/a/b$a;->a:Landroid/content/Intent;

    iget-object v1, p0, Landroidx/browser/a/b$a;->b:Landroidx/browser/a/a$a;

    invoke-virtual {v1}, Landroidx/browser/a/a$a;->a()Landroidx/browser/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/browser/a/a;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 745
    iget-object v0, p0, Landroidx/browser/a/b$a;->g:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 746
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 747
    const-string/jumbo v1, "androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS"

    iget-object v2, p0, Landroidx/browser/a/b$a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 749
    iget-object v1, p0, Landroidx/browser/a/b$a;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 752
    :cond_3
    new-instance v0, Landroidx/browser/a/b;

    iget-object v1, p0, Landroidx/browser/a/b$a;->a:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/browser/a/b$a;->d:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Landroidx/browser/a/b;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method
