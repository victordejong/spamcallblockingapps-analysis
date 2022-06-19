.class public abstract Landroidx/browser/customtabs/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/ComponentName;Landroidx/browser/customtabs/b;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Landroidx/browser/customtabs/d$a;

    invoke-static {p2}, Lc/b/a/b$a;->h0(Landroid/os/IBinder;)Lc/b/a/b;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Landroidx/browser/customtabs/d$a;-><init>(Landroidx/browser/customtabs/d;Lc/b/a/b;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p1, v0}, Landroidx/browser/customtabs/d;->a(Landroid/content/ComponentName;Landroidx/browser/customtabs/b;)V

    return-void
.end method
