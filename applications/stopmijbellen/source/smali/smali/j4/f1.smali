.class public final synthetic Lj4/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj4/h1;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lj4/h1;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/f1;->a:Lj4/h1;

    iput p2, p0, Lj4/f1;->b:I

    iput-object p3, p0, Lj4/f1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lj4/f1;->a:Lj4/h1;

    iget v1, p0, Lj4/f1;->b:I

    iget-object v2, p0, Lj4/f1;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    .line 1
    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Lj4/h1;->g(ILjava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/google/android/play/core/common/LocalTestingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lj4/h1;->g:Lp6/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "notifyModuleCompleted failed"

    .line 2
    invoke-virtual {v1, v0, v2}, Lp6/c;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
