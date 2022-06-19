.class public Lcom/klinker/android/send_message/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 16

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v2, ""

    const-string v3, ""

    const-string v4, "0"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/klinker/android/send_message/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZIZLjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZIZLjava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/klinker/android/send_message/f;->q:I

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/klinker/android/send_message/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/klinker/android/send_message/f;->c:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/klinker/android/send_message/f;->g:Z

    iput-boolean p5, p0, Lcom/klinker/android/send_message/f;->i:Z

    iput-boolean p6, p0, Lcom/klinker/android/send_message/f;->j:Z

    iput-boolean p7, p0, Lcom/klinker/android/send_message/f;->k:Z

    iput-boolean p8, p0, Lcom/klinker/android/send_message/f;->l:Z

    iput-object p9, p0, Lcom/klinker/android/send_message/f;->m:Ljava/lang/String;

    iput-object p10, p0, Lcom/klinker/android/send_message/f;->n:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/klinker/android/send_message/f;->o:Z

    iput p12, p0, Lcom/klinker/android/send_message/f;->p:I

    invoke-virtual {p0, p13}, Lcom/klinker/android/send_message/f;->E(Z)V

    if-eqz p14, :cond_0

    invoke-virtual {p14}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/klinker/android/send_message/f;->q:I

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/klinker/android/send_message/f;->j:Z

    return-void
.end method

.method public B(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/klinker/android/send_message/f;->k:Z

    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/klinker/android/send_message/f;->l:Z

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->f:Ljava/lang/String;

    return-void
.end method

.method public E(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iput-boolean p1, p0, Lcom/klinker/android/send_message/f;->h:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/klinker/android/send_message/f;->h:Z

    const-string p1, "Settings"

    const-string v0, "System sending only available on Lollipop+ devices"

    invoke-static {p1, v0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->e:Ljava/lang/String;

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/klinker/android/send_message/f;->i:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/klinker/android/send_message/f;->g:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/klinker/android/send_message/f;->o:Z

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/klinker/android/send_message/f;->p:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/klinker/android/send_message/f;->j:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/klinker/android/send_message/f;->k:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/klinker/android/send_message/f;->l:Z

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/klinker/android/send_message/f;->q:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/klinker/android/send_message/f;->h:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/klinker/android/send_message/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->d:Ljava/lang/String;

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/klinker/android/send_message/f;->i:Z

    return-void
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/klinker/android/send_message/f;->g:Z

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->a:Ljava/lang/String;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->c:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->b:Ljava/lang/String;

    return-void
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/klinker/android/send_message/f;->o:Z

    return-void
.end method

.method public y(I)V
    .locals 0

    iput p1, p0, Lcom/klinker/android/send_message/f;->p:I

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/f;->m:Ljava/lang/String;

    return-void
.end method
