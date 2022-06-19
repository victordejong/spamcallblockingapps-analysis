.class public Ld2/h3$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/h3$f;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/h3$f;


# direct methods
.method public constructor <init>(Ld2/h3$f;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/h3$f$a;->b:Ld2/h3$f;

    iput-object p2, p0, Ld2/h3$f$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/h3$f$a;->b:Ld2/h3$f;

    iget-object v0, v0, Ld2/h3$f;->a:Ld2/h3;

    iget-object v1, p0, Ld2/h3$f$a;->a:Ld2/t0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "success"

    const-string v2, "result"

    .line 3
    iget-object v3, v1, Ld2/t0;->b:Ld2/f4;

    const-string v4, "filepath"

    .line 4
    invoke-virtual {v3, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v4

    invoke-virtual {v4}, Ld2/f1;->b()Ld2/o2;

    move-result-object v4

    invoke-virtual {v4}, Ld2/o2;->d()Z

    .line 6
    new-instance v4, Ld2/f4;

    invoke-direct {v4}, Ld2/f4;-><init>()V

    .line 7
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    .line 9
    invoke-static {v4, v2, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    const/4 v3, 0x1

    .line 10
    invoke-static {v4, v0, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 11
    invoke-virtual {v1, v4}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v3

    invoke-virtual {v3}, Ld2/t0;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v5, 0x0

    .line 12
    invoke-static {v4, v2, v5}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 13
    invoke-static {v4, v0, v5}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 14
    invoke-virtual {v1, v4}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    .line 15
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_0
    iget-object v0, p0, Ld2/h3$f$a;->b:Ld2/h3$f;

    iget-object v0, v0, Ld2/h3$f;->a:Ld2/h3;

    invoke-static {v0}, Ld2/h3;->b(Ld2/h3;)V

    return-void
.end method
