.class public Lscala/io/Source$RelaxedPositioner$;
.super Lscala/io/Source$Positioner;
.source "Source.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/io/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RelaxedPositioner$"
.end annotation


# direct methods
.method public constructor <init>(Lscala/io/Source;)V
    .locals 1

    .line 280
    invoke-virtual {p1}, Lscala/io/Source;->RelaxedPosition()Lscala/io/Source$RelaxedPosition$;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lscala/io/Source$Positioner;-><init>(Lscala/io/Source;Lscala/io/Position;)V

    return-void
.end method
