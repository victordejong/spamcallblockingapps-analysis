.class public Lscala/io/Source$NoPositioner$;
.super Lscala/io/Source$Positioner;
.source "Source.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/io/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoPositioner$"
.end annotation


# direct methods
.method public constructor <init>(Lscala/io/Source;)V
    .locals 1

    .line 281
    sget-object v0, Lscala/io/Position$;->MODULE$:Lscala/io/Position$;

    invoke-direct {p0, p1, v0}, Lscala/io/Source$Positioner;-><init>(Lscala/io/Source;Lscala/io/Position;)V

    return-void
.end method


# virtual methods
.method public next()C
    .locals 1

    .line 282
    invoke-virtual {p0}, Lscala/io/Source$NoPositioner$;->scala$io$Source$NoPositioner$$$outer()Lscala/io/Source;

    move-result-object v0

    invoke-virtual {v0}, Lscala/io/Source;->iter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    return v0
.end method

.method public synthetic scala$io$Source$NoPositioner$$$outer()Lscala/io/Source;
    .locals 1

    .line 281
    iget-object v0, p0, Lscala/io/Source$NoPositioner$;->$outer:Lscala/io/Source;

    return-object v0
.end method
