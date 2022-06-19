.class public Ld2/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:Ld2/t0;

.field public final synthetic d:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;Landroid/content/Context;ZLd2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/h1;->d:Ld2/f1;

    iput-object p2, p0, Ld2/h1;->a:Landroid/content/Context;

    iput-boolean p3, p0, Ld2/h1;->b:Z

    iput-object p4, p0, Ld2/h1;->c:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ld2/x3;

    iget-object v1, p0, Ld2/h1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ld2/h1;->d:Ld2/f1;

    .line 2
    iget-object v2, v2, Ld2/f1;->a:Ld2/u0;

    .line 3
    invoke-virtual {v2}, Ld2/u0;->g()I

    move-result v2

    iget-boolean v3, p0, Ld2/h1;->b:Z

    invoke-direct {v0, v1, v2, v3}, Ld2/x3;-><init>(Landroid/content/Context;IZ)V

    .line 4
    iget-object v1, p0, Ld2/h1;->c:Ld2/t0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ld2/x3;->m(ZLd2/t0;)V

    .line 5
    iget-object v1, p0, Ld2/h1;->d:Ld2/f1;

    .line 6
    iget-object v1, v1, Ld2/f1;->v:Ljava/util/HashMap;

    .line 7
    iget v2, v0, Ld2/x3;->u:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
