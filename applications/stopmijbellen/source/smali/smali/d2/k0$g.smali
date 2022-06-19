.class public Ld2/k0$g;
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
    iput-object p1, p0, Ld2/k0$g;->a:Ld2/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/k0$g;->a:Ld2/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "id"

    .line 4
    invoke-virtual {v0, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ld2/f4;

    invoke-direct {v2}, Ld2/f4;-><init>()V

    .line 6
    invoke-static {v2, v1, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    const-string v1, "has_audio"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-static {v2, v1, v0, p1, v2}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Ld2/i3;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v3}, Ld2/i3;->r(Landroid/media/AudioManager;)Z

    move-result v3

    .line 10
    invoke-static {v0}, Ld2/i3;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {v0}, Ld2/i3;->a(Landroid/media/AudioManager;)D

    move-result-wide v4

    .line 11
    invoke-static {v2, v1, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    const-string v0, "volume"

    .line 12
    invoke-static {v2, v0, v4, v5}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    .line 13
    invoke-virtual {p1, v2}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :goto_0
    return-void
.end method
