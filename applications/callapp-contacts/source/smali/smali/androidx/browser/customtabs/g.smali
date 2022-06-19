.class public final Landroidx/browser/customtabs/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/a/a;

.field private final b:Landroid/app/PendingIntent;

.field private final c:Landroidx/browser/customtabs/b;


# direct methods
.method constructor <init>(Landroid/support/a/a;Landroid/app/PendingIntent;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CustomTabsSessionToken must have either a session id or a callback (or both)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/browser/customtabs/g;->a:Landroid/support/a/a;

    .line 120
    iput-object p2, p0, Landroidx/browser/customtabs/g;->b:Landroid/app/PendingIntent;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 122
    :cond_2
    new-instance p1, Landroidx/browser/customtabs/g$1;

    invoke-direct {p1, p0}, Landroidx/browser/customtabs/g$1;-><init>(Landroidx/browser/customtabs/g;)V

    :goto_1
    iput-object p1, p0, Landroidx/browser/customtabs/g;->c:Landroidx/browser/customtabs/b;

    return-void
.end method

.method private a()Landroid/os/IBinder;
    .locals 2

    .line 197
    iget-object v0, p0, Landroidx/browser/customtabs/g;->a:Landroid/support/a/a;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Landroid/support/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomTabSessionToken must have valid binder or pending session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 233
    instance-of v0, p1, Landroidx/browser/customtabs/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 234
    :cond_0
    check-cast p1, Landroidx/browser/customtabs/g;

    .line 1205
    iget-object v0, p1, Landroidx/browser/customtabs/g;->b:Landroid/app/PendingIntent;

    .line 238
    iget-object v2, p0, Landroidx/browser/customtabs/g;->b:Landroid/app/PendingIntent;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eq v4, v3, :cond_3

    return v1

    :cond_3
    if-eqz v2, :cond_4

    .line 241
    invoke-virtual {v2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 244
    :cond_4
    invoke-direct {p0}, Landroidx/browser/customtabs/g;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p1}, Landroidx/browser/customtabs/g;->a()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 226
    iget-object v0, p0, Landroidx/browser/customtabs/g;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    return v0

    .line 228
    :cond_0
    invoke-direct {p0}, Landroidx/browser/customtabs/g;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
