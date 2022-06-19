.class public Ln7/a$d;
.super Lm7/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public j:Lk7/j;

.field public k:Lm7/a;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ln7/a;Ln7/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm7/g;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lm7/g;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Ln7/a$d;->j:Lk7/j;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Ll7/c$a;

    invoke-direct {v1}, Ll7/c$a;-><init>()V

    invoke-interface {v0, v1}, Lk7/m;->b(Ll7/c;)V

    .line 4
    iget-object v0, p0, Ln7/a$d;->j:Lk7/j;

    invoke-interface {v0}, Lk7/m;->close()V

    .line 5
    :cond_1
    iget-object v0, p0, Ln7/a$d;->k:Lm7/a;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lm7/a;->cancel()Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
