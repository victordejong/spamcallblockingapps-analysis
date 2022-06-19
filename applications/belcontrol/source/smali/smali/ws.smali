.class public final Lws;
.super Lbt$a;
.source ""


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lht;

.field public final d:I

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lht;)V
    .locals 6

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lws;-><init>(Ljava/lang/String;Lht;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lht;IIZ)V
    .locals 0

    invoke-direct {p0}, Lbt$a;-><init>()V

    invoke-static {p1}, Lit;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lws;->b:Ljava/lang/String;

    iput-object p2, p0, Lws;->c:Lht;

    iput p3, p0, Lws;->d:I

    iput p4, p0, Lws;->e:I

    iput-boolean p5, p0, Lws;->f:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lbt$e;)Lbt;
    .locals 0

    invoke-virtual {p0, p1}, Lws;->c(Lbt$e;)Lvs;

    move-result-object p1

    return-object p1
.end method

.method public c(Lbt$e;)Lvs;
    .locals 7

    new-instance v6, Lvs;

    iget-object v1, p0, Lws;->b:Ljava/lang/String;

    iget v2, p0, Lws;->d:I

    iget v3, p0, Lws;->e:I

    iget-boolean v4, p0, Lws;->f:Z

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lvs;-><init>(Ljava/lang/String;IIZLbt$e;)V

    iget-object p1, p0, Lws;->c:Lht;

    if-eqz p1, :cond_0

    invoke-virtual {v6, p1}, Lhs;->b(Lht;)V

    :cond_0
    return-object v6
.end method
