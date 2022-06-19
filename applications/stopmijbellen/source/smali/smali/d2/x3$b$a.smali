.class public Ld2/x3$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/x3$b;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/x3$b;


# direct methods
.method public constructor <init>(Ld2/x3$b;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/x3$b$a;->b:Ld2/x3$b;

    iput-object p2, p0, Ld2/x3$b$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/x3$b$a;->b:Ld2/x3$b;

    iget-object v0, v0, Ld2/x3$b;->a:Ld2/x3;

    iget-object v1, p0, Ld2/x3$b$a;->a:Ld2/t0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Ld2/t0;->b:Ld2/f4;

    const-string v3, "visible"

    .line 3
    invoke-static {v2, v3}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 5
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 6
    :goto_0
    iget-boolean v2, v0, Ld2/x3;->z:Z

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Ld2/f4;

    invoke-direct {v2}, Ld2/f4;-><init>()V

    const/4 v3, 0x1

    const-string v4, "success"

    .line 8
    invoke-static {v2, v4, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 9
    iget v0, v0, Ld2/x3;->u:I

    const-string v3, "id"

    invoke-static {v2, v3, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 10
    invoke-virtual {v1, v2}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    :cond_1
    return-void
.end method
