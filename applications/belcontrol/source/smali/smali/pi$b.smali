.class public final Lpi$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgi$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lpi;


# direct methods
.method public constructor <init>(Lpi;)V
    .locals 0

    iput-object p1, p0, Lpi$b;->a:Lpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpi;Lpi$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lpi$b;-><init>(Lpi;)V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 1

    iget-object v0, p0, Lpi$b;->a:Lpi;

    invoke-static {v0}, Lpi;->C0(Lpi;)Lfi$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfi$a;->a(I)V

    iget-object v0, p0, Lpi$b;->a:Lpi;

    invoke-virtual {v0, p1}, Lpi;->M0(I)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 2

    iget-object v0, p0, Lpi$b;->a:Lpi;

    invoke-virtual {v0}, Lpi;->N0()V

    iget-object v0, p0, Lpi$b;->a:Lpi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lpi;->D0(Lpi;Z)Z

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 8

    iget-object v0, p0, Lpi$b;->a:Lpi;

    invoke-static {v0}, Lpi;->C0(Lpi;)Lfi$a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lfi$a;->b(IJJ)V

    iget-object v2, p0, Lpi$b;->a:Lpi;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lpi;->O0(IJJ)V

    return-void
.end method
