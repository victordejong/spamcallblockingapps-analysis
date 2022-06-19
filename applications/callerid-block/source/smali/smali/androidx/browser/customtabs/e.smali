.class public final Landroidx/browser/customtabs/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lc/b/a/b;

.field private final b:Lc/b/a/a;

.field private final c:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lc/b/a/b;Lc/b/a/a;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/e;->a:Lc/b/a/b;

    iput-object p2, p0, Landroidx/browser/customtabs/e;->b:Lc/b/a/a;

    iput-object p3, p0, Landroidx/browser/customtabs/e;->c:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/e;->b:Lc/b/a/a;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/e;->c:Landroid/content/ComponentName;

    return-object v0
.end method
