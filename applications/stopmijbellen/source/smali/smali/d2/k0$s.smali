.class public Ld2/k0$s;
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
    iput-object p1, p0, Ld2/k0$s;->a:Ld2/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 7

    .line 1
    iget-object v1, p0, Ld2/k0$s;->a:Ld2/k0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "id"

    .line 3
    invoke-virtual {v0, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object v0, v1, Ld2/k0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ld2/k;

    if-nez v4, :cond_0

    .line 5
    iget-object p1, p1, Ld2/t0;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, p1, v5}, Ld2/k0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v1, Ld2/k0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, v1, Ld2/k0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Ld2/i3;->v(Ljava/lang/Runnable;)Z

    .line 9
    sget-object v2, Ld2/t;->a:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {v1, v4}, Ld2/k0;->b(Ld2/k;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance v6, Ld2/m0;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ld2/m0;-><init>(Ld2/k0;Landroid/content/Context;Ld2/t0;Ld2/k;Ljava/lang/String;)V

    invoke-static {v6}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
