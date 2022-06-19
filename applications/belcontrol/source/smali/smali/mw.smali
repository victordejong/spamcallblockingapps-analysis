.class public Lmw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmw$a;,
        Lmw$c;,
        Lmw$b;,
        Lmw$e;,
        Lmw$f;,
        Lmw$g;,
        Lmw$d;
    }
.end annotation


# static fields
.field public static final h:Z


# instance fields
.field public final a:Lmw$d;

.field public b:I

.field public c:I

.field public d:I

.field public e:Lmw$c;

.field public f:Lmw$c;

.field public g:Lmw$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Cea608CCParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lmw;->h:Z

    return-void
.end method

.method public constructor <init>(Lmw$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmw;->b:I

    const/4 v0, 0x4

    iput v0, p0, Lmw;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lmw;->d:I

    new-instance v0, Lmw$c;

    invoke-direct {v0}, Lmw$c;-><init>()V

    iput-object v0, p0, Lmw;->e:Lmw$c;

    new-instance v0, Lmw$c;

    invoke-direct {v0}, Lmw$c;-><init>()V

    iput-object v0, p0, Lmw;->f:Lmw$c;

    new-instance v0, Lmw$c;

    invoke-direct {v0}, Lmw$c;-><init>()V

    iput-object v0, p0, Lmw;->g:Lmw$c;

    iput-object p1, p0, Lmw;->a:Lmw$d;

    return-void
.end method


# virtual methods
.method public final a()Lmw$c;
    .locals 2

    iget v0, p0, Lmw;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unrecoginized mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmw;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea608CCParser"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmw;->e:Lmw$c;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmw;->g:Lmw$c;

    return-object v0

    :cond_1
    iget-object v0, p0, Lmw;->f:Lmw$c;

    return-object v0

    :cond_2
    iget-object v0, p0, Lmw;->e:Lmw$c;

    return-object v0
.end method

.method public final b(Lmw$a;)Z
    .locals 5

    invoke-virtual {p1}, Lmw$a;->e()I

    move-result p1

    iget v0, p0, Lmw;->d:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ne v0, p1, :cond_0

    iput v2, p0, Lmw;->d:I

    return v1

    :cond_0
    const/4 v0, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput v2, p0, Lmw;->d:I

    const/4 p1, 0x0

    return p1

    :pswitch_1
    invoke-virtual {p0}, Lmw;->h()V

    iput v3, p0, Lmw;->b:I

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lmw;->f:Lmw$c;

    goto :goto_2

    :pswitch_3
    iget v0, p0, Lmw;->b:I

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lmw;->a()Lmw$c;

    move-result-object v0

    iget v2, p0, Lmw;->c:I

    invoke-virtual {v0, v2}, Lmw$c;->k(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmw;->a()Lmw$c;

    move-result-object v0

    invoke-virtual {v0}, Lmw$c;->c()V

    :goto_0
    iget v0, p0, Lmw;->b:I

    if-ne v0, v4, :cond_3

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lmw;->e:Lmw$c;

    invoke-virtual {v0}, Lmw$c;->e()V

    :goto_1
    invoke-virtual {p0}, Lmw;->i()V

    goto :goto_3

    :pswitch_5
    iput v0, p0, Lmw;->b:I

    goto :goto_3

    :pswitch_6
    iput v0, p0, Lmw;->b:I

    iget-object v0, p0, Lmw;->g:Lmw$c;

    :goto_2
    invoke-virtual {v0}, Lmw$c;->e()V

    goto :goto_3

    :pswitch_7
    iput v1, p0, Lmw;->b:I

    goto :goto_3

    :pswitch_8
    const-string v0, "Cea608CCParser"

    const-string v2, "Flash On"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_9
    add-int/lit8 v0, p1, -0x23

    iput v0, p0, Lmw;->c:I

    iget v0, p0, Lmw;->b:I

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lmw;->e:Lmw$c;

    invoke-virtual {v0}, Lmw$c;->e()V

    iget-object v0, p0, Lmw;->f:Lmw$c;

    invoke-virtual {v0}, Lmw$c;->e()V

    :cond_2
    iput v4, p0, Lmw;->b:I

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0}, Lmw;->a()Lmw$c;

    move-result-object v0

    invoke-virtual {v0}, Lmw$c;->d()V

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0}, Lmw;->a()Lmw$c;

    move-result-object v0

    invoke-virtual {v0}, Lmw$c;->a()V

    goto :goto_3

    :pswitch_c
    iput v3, p0, Lmw;->b:I

    :cond_3
    :goto_3
    iput p1, p0, Lmw;->d:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Lmw$a;)Z
    .locals 2

    invoke-virtual {p1}, Lmw$a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lmw$a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmw;->a()Lmw$c;

    move-result-object v0

    invoke-virtual {v0}, Lmw$c;->a()V

    :cond_1
    invoke-virtual {p0}, Lmw;->a()Lmw$c;

    move-result-object v0

    invoke-virtual {p1}, Lmw$a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmw$c;->o(Ljava/lang/String;)V

    iget p1, p0, Lmw;->b:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lmw;->i()V

    :cond_3
    return v0
.end method

.method public final d(Lmw$a;)Z
    .locals 1

    invoke-virtual {p1}, Lmw$a;->h()Lmw$g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmw;->a()Lmw$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw$c;->m(Lmw$g;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lmw$a;)Z
    .locals 3

    invoke-virtual {p1}, Lmw$a;->i()Lmw$f;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p0, Lmw;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmw;->a()Lmw$c;

    move-result-object v0

    invoke-virtual {p1}, Lmw$f;->f()I

    move-result v1

    iget v2, p0, Lmw;->c:I

    invoke-virtual {v0, v1, v2}, Lmw$c;->h(II)V

    :cond_0
    invoke-virtual {p0}, Lmw;->a()Lmw$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw$c;->n(Lmw$f;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Lmw$a;)Z
    .locals 1

    invoke-virtual {p1}, Lmw$a;->k()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lmw;->a()Lmw$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw$c;->l(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g([B)V
    .locals 3

    invoke-static {p1}, Lmw$a;->b([B)[Lmw$a;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    sget-boolean v1, Lmw;->h:Z

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lmw$a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cea608CCParser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lmw;->b(Lmw$a;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lmw;->f(Lmw$a;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lmw;->e(Lmw$a;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lmw;->d(Lmw$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lmw;->c(Lmw$a;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lmw;->e:Lmw$c;

    iget-object v1, p0, Lmw;->f:Lmw$c;

    iput-object v1, p0, Lmw;->e:Lmw$c;

    iput-object v0, p0, Lmw;->f:Lmw$c;

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lmw;->a:Lmw$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmw$d;->d()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iget-object v1, p0, Lmw;->a:Lmw$d;

    iget-object v2, p0, Lmw;->e:Lmw$c;

    invoke-virtual {v2, v0}, Lmw$c;->g(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-interface {v1, v0}, Lmw$d;->e([Landroid/text/SpannableStringBuilder;)V

    :cond_0
    return-void
.end method
