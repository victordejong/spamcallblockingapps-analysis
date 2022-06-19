.class public Ld2/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CustomMessage.controller_send"

    .line 2
    invoke-static {v0, p0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v0, "type"

    .line 2
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    .line 3
    invoke-virtual {p1, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ld2/p1$a;

    invoke-direct {v1, p0, v0, p1}, Ld2/p1$a;-><init>(Ld2/p1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    return-void
.end method
