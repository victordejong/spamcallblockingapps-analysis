.class public Lb9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb9/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb9/a$a;
    }
.end annotation


# instance fields
.field public transient a:Lb9/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb9/a;->b()Lb9/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb9/d;->r(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Lb9/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lb9/a;->a:Lb9/d;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->g(Ljava/lang/Class;)Lb9/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iput-object v1, p0, Lb9/a;->a:Lb9/d;

    goto :goto_0

    :cond_0
    const-string v1, "ModelAdapter"

    .line 5
    invoke-static {v1, v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->l(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x0

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lb9/a;->a:Lb9/d;

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb9/a;->b()Lb9/d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lb9/d;->e:La9/b;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lb9/d;->i()La9/b;

    move-result-object v1

    iput-object v1, v0, Lb9/d;->e:La9/b;

    .line 4
    iput-object v0, v1, La9/b;->a:Lb9/d;

    .line 5
    :cond_0
    iget-object v0, v0, Lb9/d;->e:La9/b;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, v0, La9/b;->a:Lb9/d;

    invoke-virtual {v1}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->e(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/c;->j()Lc9/f;

    move-result-object v1

    .line 8
    iget-object v2, v0, La9/b;->a:Lb9/d;

    invoke-virtual {v2}, Lb9/d;->o()Landroid/support/v4/media/a;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, La9/b;->c(Ljava/lang/Object;Lc9/f;Landroid/support/v4/media/a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
