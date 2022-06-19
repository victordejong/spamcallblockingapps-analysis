.class public final Landroidx/browser/customtabs/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/a/a;

.field final b:Landroid/content/ComponentName;

.field final c:Landroid/app/PendingIntent;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/support/a/b;


# direct methods
.method constructor <init>(Landroid/support/a/b;Landroid/support/a/a;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/f;->d:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Landroidx/browser/customtabs/f;->e:Landroid/support/a/b;

    .line 80
    iput-object p2, p0, Landroidx/browser/customtabs/f;->a:Landroid/support/a/a;

    .line 81
    iput-object p3, p0, Landroidx/browser/customtabs/f;->b:Landroid/content/ComponentName;

    .line 82
    iput-object p4, p0, Landroidx/browser/customtabs/f;->c:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .line 1300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1307
    iget-object v1, p0, Landroidx/browser/customtabs/f;->c:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    const-string v2, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/f;->e:Landroid/support/a/b;

    iget-object v2, p0, Landroidx/browser/customtabs/f;->a:Landroid/support/a/a;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v0, v3}, Landroid/support/a/b;->a(Landroid/support/a/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
