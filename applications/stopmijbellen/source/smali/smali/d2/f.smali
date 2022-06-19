.class public Ld2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/l;


# direct methods
.method public constructor <init>(Ld2/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f;->a:Ld2/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ld2/b;->h()Z

    .line 2
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 3
    iget-object v1, p0, Ld2/f;->a:Ld2/l;

    .line 4
    iget-object v1, v1, Ld2/l;->d:Ld2/f4;

    const-string v2, "options"

    .line 5
    invoke-static {v0, v2, v1}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    .line 6
    new-instance v1, Ld2/t0;

    const/4 v2, 0x1

    const-string v3, "Options.set_options"

    invoke-direct {v1, v3, v2, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    return-void
.end method
