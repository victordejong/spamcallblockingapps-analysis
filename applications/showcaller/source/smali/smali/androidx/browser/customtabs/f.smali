.class public Landroidx/browser/customtabs/f;
.super Ljava/lang/Object;
.source "CustomTabsSessionToken.java"


# instance fields
.field final a:La/a/a/a;

.field private final b:Landroidx/browser/customtabs/a;


# direct methods
.method constructor <init>(La/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/browser/customtabs/f;->a:La/a/a/a;

    .line 3
    new-instance p1, Landroidx/browser/customtabs/f$a;

    invoke-direct {p1, p0}, Landroidx/browser/customtabs/f$a;-><init>(Landroidx/browser/customtabs/f;)V

    iput-object p1, p0, Landroidx/browser/customtabs/f;->b:Landroidx/browser/customtabs/a;

    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/f;->a:La/a/a/a;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/browser/customtabs/f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Landroidx/browser/customtabs/f;

    .line 3
    invoke-virtual {p1}, Landroidx/browser/customtabs/f;->a()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Landroidx/browser/customtabs/f;->a:La/a/a/a;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/browser/customtabs/f;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
