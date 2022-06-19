.class public final Lscala/io/Source$$anonfun$2;
.super Lscala/runtime/AbstractFunction0;
.source "Source.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/io/Source$;->createBufferedSource(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)Lscala/io/BufferedSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/io/BufferedSource;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final bufferSize$2:I

.field private final close$1:Lscala/Function0;

.field private final codec$3:Lscala/io/Codec;

.field private final inputStream$2:Ljava/io/InputStream;

.field private final reset$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lscala/io/Source$$anonfun$2;->inputStream$2:Ljava/io/InputStream;

    iput p2, p0, Lscala/io/Source$$anonfun$2;->bufferSize$2:I

    iput-object p3, p0, Lscala/io/Source$$anonfun$2;->reset$1:Lscala/Function0;

    iput-object p4, p0, Lscala/io/Source$$anonfun$2;->close$1:Lscala/Function0;

    iput-object p5, p0, Lscala/io/Source$$anonfun$2;->codec$3:Lscala/io/Codec;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lscala/io/Source$$anonfun$2;->apply()Lscala/io/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/io/BufferedSource;
    .locals 6

    .line 160
    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    iget-object v1, p0, Lscala/io/Source$$anonfun$2;->inputStream$2:Ljava/io/InputStream;

    iget v2, p0, Lscala/io/Source$$anonfun$2;->bufferSize$2:I

    iget-object v3, p0, Lscala/io/Source$$anonfun$2;->reset$1:Lscala/Function0;

    iget-object v4, p0, Lscala/io/Source$$anonfun$2;->close$1:Lscala/Function0;

    iget-object v5, p0, Lscala/io/Source$$anonfun$2;->codec$3:Lscala/io/Codec;

    invoke-virtual/range {v0 .. v5}, Lscala/io/Source$;->createBufferedSource(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object v0

    return-object v0
.end method
