.class public Ld2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld2/s;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Ld2/f1;->B:Z

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Ld2/f1;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ld2/s;->c()V

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Ld2/f1;->B:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Ld2/f1;->C:Z

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Ld2/s;->c()V

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public final c()V
    .locals 2

    const-string v0, "The AdColonyZone API is not available while AdColony is disabled."

    .line 1
    invoke-static {v0}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v1, v0, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return-void
.end method
