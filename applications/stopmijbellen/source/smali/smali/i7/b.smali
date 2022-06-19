.class public abstract Li7/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/b$b;,
        Li7/b$a;
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
.field public a:Li7/b$a;

.field public final b:Li7/b$b;


# direct methods
.method public constructor <init>(Li7/b$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Li7/b;->b:Li7/b$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Li7/b;->a:Li7/b$a;

    if-eqz p1, :cond_0

    check-cast p1, Li7/c;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Li7/c;->c:Li7/b;

    invoke-virtual {p1}, Li7/c;->a()V

    :cond_0
    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Li7/b;->a(Ljava/lang/String;)V

    return-void
.end method
