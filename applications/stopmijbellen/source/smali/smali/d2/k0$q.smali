.class public Ld2/k0$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/k0;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/k0;


# direct methods
.method public constructor <init>(Ld2/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/k0$q;->a:Ld2/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/k0$q;->a:Ld2/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "status"

    .line 4
    invoke-static {v1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_3

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "id"

    .line 5
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/q;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v4, v3

    goto :goto_0

    .line 7
    :cond_1
    iget-object v4, v2, Ld2/q;->a:Landroid/support/v4/media/a;

    :goto_0
    if-nez v4, :cond_2

    .line 8
    iget-object p1, p1, Ld2/t0;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1, v1}, Ld2/k0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Ld2/r0;

    invoke-direct {p1, v0, v4, v2}, Ld2/r0;-><init>(Ld2/k0;Landroid/support/v4/media/a;Ld2/q;)V

    invoke-static {p1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    .line 11
    invoke-virtual {v2}, Ld2/q;->b()V

    .line 12
    iput-object v3, v2, Ld2/q;->c:Ld2/j0;

    :cond_3
    :goto_1
    return-void
.end method
