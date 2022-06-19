.class public Ld2/b2$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ld2/f4;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ld2/t0;

.field public b:Z


# direct methods
.method public constructor <init>(Ld2/t0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Ld2/b2$b;->a:Ld2/t0;

    .line 3
    iput-boolean p2, p0, Ld2/b2$b;->b:Z

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->m()Ld2/b2;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Ld2/b2;->b(J)Ld2/f4;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ld2/f4;

    .line 2
    iget-boolean v0, p0, Ld2/b2$b;->b:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ld2/t0;

    const/4 v1, 0x1

    const-string v2, "Device.update_info"

    invoke-direct {v0, v2, v1, p1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ld2/b2$b;->a:Ld2/t0;

    invoke-virtual {v0, p1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :goto_0
    return-void
.end method
