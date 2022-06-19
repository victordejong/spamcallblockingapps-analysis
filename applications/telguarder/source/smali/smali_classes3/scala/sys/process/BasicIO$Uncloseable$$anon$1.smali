.class public final Lscala/sys/process/BasicIO$Uncloseable$$anon$1;
.super Ljava/io/FilterOutputStream;
.source "BasicIO.scala"

# interfaces
.implements Lscala/sys/process/BasicIO$Uncloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/BasicIO$Uncloseable$;->apply(Ljava/io/OutputStream;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0}, Lscala/sys/process/BasicIO$Uncloseable$class;->$init$(Lscala/sys/process/BasicIO$Uncloseable;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 61
    invoke-static {p0}, Lscala/sys/process/BasicIO$Uncloseable$class;->close(Lscala/sys/process/BasicIO$Uncloseable;)V

    return-void
.end method
