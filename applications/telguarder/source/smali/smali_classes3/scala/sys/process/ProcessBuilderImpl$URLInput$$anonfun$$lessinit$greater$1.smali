.class public final Lscala/sys/process/ProcessBuilderImpl$URLInput$$anonfun$$lessinit$greater$1;
.super Lscala/runtime/AbstractFunction0;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessBuilderImpl$URLInput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/net/URL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/io/InputStream;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final url$1:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Ljava/net/URL;)V
    .locals 0

    .line 31
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$URLInput$$anonfun$$lessinit$greater$1;->url$1:Ljava/net/URL;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/io/InputStream;
    .locals 1

    .line 31
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$URLInput$$anonfun$$lessinit$greater$1;->url$1:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$URLInput$$anonfun$$lessinit$greater$1;->apply()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
