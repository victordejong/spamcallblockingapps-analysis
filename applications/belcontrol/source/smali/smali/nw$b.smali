.class public Lnw$b;
.super Lfx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final i:Lmw;

.field public final j:Lnw$a;


# direct methods
.method public constructor <init>(Lnw$a;Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0, p2}, Lfx;-><init>(Landroid/media/MediaFormat;)V

    iput-object p1, p0, Lnw$b;->j:Lnw$a;

    new-instance p2, Lmw;

    invoke-direct {p2, p1}, Lmw;-><init>(Lmw$d;)V

    iput-object p2, p0, Lnw$b;->i:Lmw;

    return-void
.end method


# virtual methods
.method public c()Lfx$c;
    .locals 1

    iget-object v0, p0, Lnw$b;->j:Lnw$a;

    return-object v0
.end method

.method public g([BZJ)V
    .locals 0

    iget-object p2, p0, Lnw$b;->i:Lmw;

    invoke-virtual {p2, p1}, Lmw;->g([B)V

    return-void
.end method
