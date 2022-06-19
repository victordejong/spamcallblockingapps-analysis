.class public Lwh$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lwh;


# direct methods
.method public constructor <init>(Lwh;)V
    .locals 0

    iput-object p1, p0, Lwh$b;->a:Lwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lwh;Lwh$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lwh$b;-><init>(Lwh;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6

    const/4 v0, -0x3

    const/16 v1, 0x26

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1, v5}, Lwh;->f(Lwh;I)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1, v4}, Lwh;->f(Lwh;I)I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1, v3}, Lwh;->f(Lwh;I)I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1}, Lwh;->g(Lwh;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1, v2}, Lwh;->f(Lwh;I)I

    :goto_1
    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1}, Lwh;->e(Lwh;)I

    move-result p1

    if-eq p1, v4, :cond_8

    if-eqz p1, :cond_9

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lwh$b;->a:Lwh;

    invoke-static {v0}, Lwh;->e(Lwh;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown audio focus state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1}, Lwh;->h(Lwh;)Lwh$c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lwh$c;->c(I)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1}, Lwh;->h(Lwh;)Lwh$c;

    move-result-object p1

    invoke-interface {p1, v5}, Lwh$c;->c(I)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1}, Lwh;->h(Lwh;)Lwh$c;

    move-result-object p1

    invoke-interface {p1, v4}, Lwh$c;->c(I)V

    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1, v5}, Lwh;->i(Lwh;Z)V

    :cond_9
    :goto_2
    iget-object p1, p0, Lwh$b;->a:Lwh;

    invoke-static {p1}, Lwh;->e(Lwh;)I

    move-result p1

    if-ne p1, v2, :cond_a

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_3

    :cond_a
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_3
    iget-object v0, p0, Lwh$b;->a:Lwh;

    invoke-static {v0}, Lwh;->j(Lwh;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lwh$b;->a:Lwh;

    invoke-static {v0, p1}, Lwh;->k(Lwh;F)F

    iget-object v0, p0, Lwh$b;->a:Lwh;

    invoke-static {v0}, Lwh;->h(Lwh;)Lwh$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lwh$c;->b(F)V

    :cond_b
    return-void
.end method
