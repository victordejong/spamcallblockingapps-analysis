.class public Ld2/t1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/t1;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld2/t1;


# direct methods
.method public constructor <init>(Ld2/t1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/t1$a;->b:Ld2/t1;

    iput-object p2, p0, Ld2/t1$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 2
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 3
    iget-object v2, p0, Ld2/t1$a;->b:Ld2/t1;

    .line 4
    iget v2, v2, Ld2/t1;->e:I

    const-string v3, "session_type"

    .line 5
    invoke-static {v1, v3, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 6
    iget-object v2, p0, Ld2/t1$a;->b:Ld2/t1;

    .line 7
    iget-object v2, v2, Ld2/t1;->f:Ljava/lang/String;

    const-string v3, "session_id"

    .line 8
    invoke-static {v1, v3, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    iget-object v2, p0, Ld2/t1$a;->a:Ljava/lang/String;

    const-string v3, "event"

    invoke-static {v1, v3, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "type"

    const-string v3, "iab_hook"

    .line 10
    invoke-static {v0, v2, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    invoke-virtual {v1}, Ld2/f4;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    new-instance v1, Ld2/t0;

    const/4 v2, 0x0

    const-string v3, "CustomMessage.controller_send"

    invoke-direct {v1, v3, v2, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    return-void
.end method
