.class public Lvy$d;
.super Lzy$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lvy$c;


# direct methods
.method public constructor <init>(Lvy;Ljava/lang/String;Lvy$c;)V
    .locals 0

    invoke-direct {p0}, Lzy$e;-><init>()V

    iput-object p2, p0, Lvy$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lvy$d;->b:Lvy$c;

    return-void
.end method


# virtual methods
.method public g(I)V
    .locals 2

    iget-object v0, p0, Lvy$d;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lvy$d;->b:Lvy$c;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, p1}, Lvy$c;->s(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(I)V
    .locals 2

    iget-object v0, p0, Lvy$d;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lvy$d;->b:Lvy$c;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, p1}, Lvy$c;->t(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
