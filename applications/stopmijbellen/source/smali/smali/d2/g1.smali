.class public Ld2/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/g1;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 2
    sget-object v1, Ld2/f1;->X:Ljava/lang/String;

    const-string v2, "url"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "content_type"

    const-string v2, "application/json"

    .line 3
    invoke-static {v0, v1, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    iget-object v1, p0, Ld2/g1;->a:Ld2/f1;

    invoke-virtual {v1}, Ld2/f1;->m()Ld2/b2;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ld2/b2;->b(J)Ld2/f4;

    move-result-object v1

    const-string v2, "launch_metadata"

    .line 5
    invoke-virtual {v1, v2}, Ld2/f4;->p(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ld2/f4;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    iget-object v1, p0, Ld2/g1;->a:Ld2/f1;

    .line 8
    iget-object v1, v1, Ld2/f1;->b:Ld2/p2;

    .line 9
    new-instance v2, Ld2/h2;

    new-instance v3, Ld2/t0;

    const/4 v4, 0x0

    const-string v5, "WebServices.post"

    invoke-direct {v3, v5, v4, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    new-instance v0, Ld2/g1$a;

    invoke-direct {v0, p0}, Ld2/g1$a;-><init>(Ld2/g1;)V

    invoke-direct {v2, v3, v0}, Ld2/h2;-><init>(Ld2/t0;Ld2/h2$a;)V

    invoke-virtual {v1, v2}, Ld2/p2;->b(Ld2/h2;)V

    return-void
.end method
