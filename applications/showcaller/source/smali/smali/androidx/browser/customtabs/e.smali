.class public final Landroidx/browser/customtabs/e;
.super Ljava/lang/Object;
.source "CustomTabsSession.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:La/a/a/b;

.field private final c:La/a/a/a;

.field private final d:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(La/a/a/b;La/a/a/a;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/e;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroidx/browser/customtabs/e;->b:La/a/a/b;

    .line 4
    iput-object p2, p0, Landroidx/browser/customtabs/e;->c:La/a/a/a;

    .line 5
    iput-object p3, p0, Landroidx/browser/customtabs/e;->d:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/e;->c:La/a/a/a;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/e;->d:Landroid/content/ComponentName;

    return-object v0
.end method
