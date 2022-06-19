.class public final Lh3;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/support/customtabs/ICustomTabsService;

.field public final b:Landroid/support/customtabs/ICustomTabsCallback;

.field public final c:Landroid/content/ComponentName;

.field public final d:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3;->a:Landroid/support/customtabs/ICustomTabsService;

    iput-object p2, p0, Lh3;->b:Landroid/support/customtabs/ICustomTabsCallback;

    iput-object p3, p0, Lh3;->c:Landroid/content/ComponentName;

    iput-object p4, p0, Lh3;->d:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lh3;->b:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lh3;->c:Landroid/content/ComponentName;

    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lh3;->d:Landroid/app/PendingIntent;

    return-object v0
.end method
