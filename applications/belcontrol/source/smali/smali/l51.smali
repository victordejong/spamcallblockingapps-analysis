.class public abstract Ll51;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll51$b;,
        Ll51$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ll51$a;

.field public final b:Ll51$b;


# direct methods
.method public constructor <init>(Ll51$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Ll51;->b:Ll51$b;

    return-void
.end method


# virtual methods
.method public a(Ll51$a;)V
    .locals 0

    iput-object p1, p0, Ll51;->a:Ll51$a;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Ll51;->a:Ll51$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ll51$a;->a(Ll51;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ll51;->b(Ljava/lang/String;)V

    return-void
.end method
