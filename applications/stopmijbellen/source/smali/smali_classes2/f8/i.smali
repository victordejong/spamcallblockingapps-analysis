.class public final synthetic Lf8/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp4/a;


# instance fields
.field public final synthetic a:Lf8/j;


# direct methods
.method public synthetic constructor <init>(Lf8/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/i;->a:Lf8/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lf8/i;->a:Lf8/j;

    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->c()I

    move-result p1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lf8/j;->b()V

    .line 3
    iget-object p1, v0, Lf8/j;->a:Li4/b;

    invoke-interface {p1}, Li4/b;->c()Lr4/o;

    :cond_0
    return-void
.end method
