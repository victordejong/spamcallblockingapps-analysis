.class public Lpw$b;
.super Lfx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final i:Low;

.field public final j:Lpw$a;


# direct methods
.method public constructor <init>(Lpw$a;Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0, p2}, Lfx;-><init>(Landroid/media/MediaFormat;)V

    iput-object p1, p0, Lpw$b;->j:Lpw$a;

    new-instance p2, Low;

    invoke-direct {p2, p1}, Low;-><init>(Low$i;)V

    iput-object p2, p0, Lpw$b;->i:Low;

    return-void
.end method


# virtual methods
.method public c()Lfx$c;
    .locals 1

    iget-object v0, p0, Lpw$b;->j:Lpw$a;

    return-object v0
.end method

.method public g([BZJ)V
    .locals 0

    iget-object p2, p0, Lpw$b;->i:Low;

    invoke-virtual {p2, p1}, Low;->c([B)V

    return-void
.end method
