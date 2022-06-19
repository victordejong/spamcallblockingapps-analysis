.class public Ld2/h3$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/h3$b;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/h3$b;


# direct methods
.method public constructor <init>(Ld2/h3$b;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/h3$b$a;->b:Ld2/h3$b;

    iput-object p2, p0, Ld2/h3$b$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ld2/h3$b$a;->a:Ld2/t0;

    .line 2
    iget-object v1, v1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "filepath"

    .line 3
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Ld2/h3$b$a;->b:Ld2/h3$b;

    iget-object v1, v1, Ld2/h3$b;->a:Ld2/h3;

    iget-object v2, p0, Ld2/h3$b$a;->a:Ld2/t0;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->b()Ld2/o2;

    move-result-object v3

    invoke-virtual {v3}, Ld2/o2;->d()Z

    .line 8
    new-instance v3, Ld2/f4;

    invoke-direct {v3}, Ld2/f4;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Ld2/h3;->e(Ljava/io/File;)Z

    move-result v0

    const-string v1, "success"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 10
    invoke-static {v3, v1, v0, v2, v3}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-static {v3, v1, v0, v2, v3}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    .line 12
    :goto_0
    iget-object v0, p0, Ld2/h3$b$a;->b:Ld2/h3$b;

    iget-object v0, v0, Ld2/h3$b;->a:Ld2/h3;

    invoke-static {v0}, Ld2/h3;->b(Ld2/h3;)V

    return-void
.end method
