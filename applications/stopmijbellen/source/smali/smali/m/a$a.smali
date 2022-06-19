.class public final Lm/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lm/a;->M()Lm/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lm/a;->a:Landroid/support/v4/media/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/a;->o(Ljava/lang/Runnable;)V

    return-void
.end method
