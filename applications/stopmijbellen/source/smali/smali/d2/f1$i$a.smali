.class public Ld2/f1$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1$i;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld2/a<",
        "Ld2/w1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;


# direct methods
.method public constructor <init>(Ld2/f1$i;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld2/f1$i$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ld2/w1;

    .line 2
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ld2/w1;->a()Ld2/f4;

    move-result-object p1

    const-string v1, "odt"

    invoke-static {v0, v1, p1}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Ld2/f1$i$a;->a:Ld2/t0;

    invoke-virtual {p1, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    return-void
.end method
