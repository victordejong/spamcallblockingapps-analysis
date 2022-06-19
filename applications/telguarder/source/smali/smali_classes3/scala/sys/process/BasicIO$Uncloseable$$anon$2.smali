.class public final Lscala/sys/process/BasicIO$Uncloseable$$anon$2;
.super Ljava/io/FilterInputStream;
.source "BasicIO.scala"

# interfaces
.implements Lscala/sys/process/BasicIO$Uncloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/BasicIO$Uncloseable$;->apply(Ljava/io/InputStream;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Lscala/sys/process/BasicIO$Uncloseable$class;->$init$(Lscala/sys/process/BasicIO$Uncloseable;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 60
    invoke-static {p0}, Lscala/sys/process/BasicIO$Uncloseable$class;->close(Lscala/sys/process/BasicIO$Uncloseable;)V

    return-void
.end method
