.class public Ln3;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/support/customtabs/trusted/ITrustedWebActivityCallback;


# direct methods
.method public constructor <init>(Landroid/support/customtabs/trusted/ITrustedWebActivityCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3;->a:Landroid/support/customtabs/trusted/ITrustedWebActivityCallback;

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Ln3;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/support/customtabs/trusted/ITrustedWebActivityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/trusted/ITrustedWebActivityCallback;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ln3;

    invoke-direct {v0, p0}, Ln3;-><init>(Landroid/support/customtabs/trusted/ITrustedWebActivityCallback;)V

    return-object v0
.end method
